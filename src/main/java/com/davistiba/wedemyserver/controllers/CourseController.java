package com.davistiba.wedemyserver.controllers;

import com.davistiba.wedemyserver.models.Course;
import com.davistiba.wedemyserver.repository.CourseRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.server.ResponseStatusException;

import javax.validation.constraints.NotBlank;
import java.util.List;

@RestController
@RequestMapping(path = "/courses")
public class CourseController {

    @Autowired
    CourseRepository courseRepository;

    @GetMapping(path = "category/{category}")
    @ResponseStatus(value = HttpStatus.OK)
    public List<Course> getCoursesByCategory(@PathVariable(value = "category")
                                             @NotBlank String category) {
        return courseRepository.getCoursesByCategoryEquals(category);
    }

    @GetMapping(path = "/top")
    @ResponseStatus(value = HttpStatus.OK)
    public List<Course> getTopCourses() {
        return courseRepository.getTopByRatingGreaterThanEqual(4.5);
    }

    @GetMapping(path = "/search")
    public List<Course> searchForCourse(@RequestParam(value = "title", defaultValue = "")
                                        @NotBlank String title) {
        try {
            var searchResults = courseRepository.getCoursesByTitleIsLike(title);
            if (searchResults.isEmpty()) throw new Exception("No results for " + title);
            return searchResults;
        } catch (Exception e) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, e.getMessage());
        }
    }

}