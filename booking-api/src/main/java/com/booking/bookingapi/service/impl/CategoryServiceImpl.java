package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.CategoryService;
import com.booking.dto.CategoryDTO;
import com.booking.entity.Category;
import com.booking.repository.CategoryRepository;
import lombok.AllArgsConstructor;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
@AllArgsConstructor
public class CategoryServiceImpl implements CategoryService {

    private final CategoryRepository categoryRepository;

    @Override
    public List<CategoryDTO> getAllCategories() {
        List<Category> categories = categoryRepository.findAll();
        return categories.stream().map(c -> CategoryDTO.builder()
                .id(c.getId())
                .name(c.getCategoryName())
                .build()).toList();
    }
}
