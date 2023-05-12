package com.davistiba.wedemyserver.service;

import com.davistiba.wedemyserver.dto.CheckoutRequest;
import com.davistiba.wedemyserver.models.*;
import com.davistiba.wedemyserver.repository.*;
import org.jetbrains.annotations.NotNull;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.ArrayList;
import java.util.List;

@Service
public class CheckoutService {

    @Autowired
    private OrderItemRepository orderItemRepository;

    @Autowired
    private CartRepository cartRepository;

    @Autowired
    private CourseRepository courseRepository;

    @Autowired
    private EnrollmentRepository enrollmentRepository;

    @Autowired
    private SalesRepository salesRepository;

    /**
     * Process all courses in Cart.
     * Save batch as single Sale.
     * Insert each item to OrderItems.
     * Then insert each distinct item to Enrollment table.
     * Finally, clear Cart of current user.
     */
    @Transactional
    public MyCustomResponse processCheckoutDatabase(String transactionId,
                                                    @NotNull CheckoutRequest request,
                                                    User user) {

        List<OrderItem> orderItemList = new ArrayList<>();
        List<Course> courseList = courseRepository.findCoursesByIdIn(request.getCourses());
        List<Enrollment> enrollments = new ArrayList<>();

        //===== begin DB OPERATIONS ========
        Sales savedSale = salesRepository.save(
                new Sales(transactionId, user, request.getTotalAmount(), request.getPaymentMethod()));

        for (Course course : courseList) {
            OrderItem o = new OrderItem(savedSale, course);
            orderItemList.add(o);

            Enrollment e = new Enrollment(user, course);
            enrollments.add(e);
        }

        orderItemRepository.saveAll(orderItemList);
        enrollmentRepository.saveAll(enrollments);
        cartRepository.deleteByUserIdAndCoursesIn(user.getId(), request.getCourses());
        //-----------------------------------------------
        return new MyCustomResponse("Successfully paid USD " + request.getTotalAmount());

    }
}
