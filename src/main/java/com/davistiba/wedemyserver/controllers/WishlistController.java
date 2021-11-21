package com.davistiba.wedemyserver.controllers;

import com.davistiba.wedemyserver.models.MyCustomResponse;
import com.davistiba.wedemyserver.models.Wishlist;
import com.davistiba.wedemyserver.repository.WishlistRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.security.access.annotation.Secured;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.servlet.http.HttpSession;
import javax.validation.constraints.NotNull;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@Secured("ROLE_USER")
@RequestMapping(path = "/wishlist")
public class WishlistController {

    @Autowired
    private WishlistRepository wishlistRepository;


    @PostMapping(path = "/course/{courseId}")
    @ResponseStatus(HttpStatus.CREATED)
    public MyCustomResponse addNewWishlist(@PathVariable(value = "courseId") Integer courseId,
                                           HttpSession session) {

        Integer userId = (Integer) session.getAttribute(AuthController.USERID);
        int ok = wishlistRepository.saveByCourseIdAndUserId(courseId, userId);
        if (ok != 1) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Could not add wishlist");
        }
        return new MyCustomResponse("Added to Wishlist: courseId " + courseId);

    }

    @GetMapping(path = "/mine/{courseId}")
    @ResponseStatus(HttpStatus.OK)
    public Map<String, Boolean> checkUserLikedCourse(@PathVariable(value = "courseId") @NotNull Integer courseId,
                                                     HttpSession session) {

        Map<String, Boolean> response = new HashMap<>();
        Integer userId = (Integer) session.getAttribute(AuthController.USERID);
        boolean isExist = wishlistRepository.checkIfWishlistExists(courseId, userId) == 1;
        response.put("isWishlist", isExist);
        return response;

    }


    @GetMapping(path = "/mine")
    @ResponseStatus(HttpStatus.OK)
    public List<Wishlist> getAllMyWishlistCourses(HttpSession session) {

        Integer userId = (Integer) session.getAttribute(AuthController.USERID);
        var wishlistItems = wishlistRepository.getWishlistsByUserId(userId);
        if (wishlistItems.isEmpty()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Your wishlist is empty");
        }
        return wishlistItems;
    }

    @DeleteMapping(path = "/course/{courseId}")
    @ResponseStatus(HttpStatus.OK)
    public MyCustomResponse removeWishlist(@PathVariable(value = "courseId") Integer courseId,
                                           HttpSession session) {


        Integer userId = (Integer) session.getAttribute(AuthController.USERID);
        int ok = wishlistRepository.deleteByCourseIdAndUserId(courseId, userId);
        if (ok != 1) {
            throw new ResponseStatusException(HttpStatus.BAD_REQUEST, "Could not remove wishlist");
        }
        return new MyCustomResponse("Removed from Wishlist, courseId " + courseId);
    }
}