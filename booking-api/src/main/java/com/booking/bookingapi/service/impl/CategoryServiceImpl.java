package com.booking.bookingapi.service.impl;

import com.booking.bookingapi.service.CategoryService;
import com.booking.dto.CategoryDTO;
import com.booking.entity.Category;
import com.booking.repository.CategoryRepository;
import jakarta.persistence.EntityNotFoundException;
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

        if (categories.isEmpty())
            throw new EntityNotFoundException("No categories found");

        return categories.stream().map(c -> CategoryDTO.builder()
                .id(c.getId())
                .name(c.getCategoryName())
                .build()).toList();
    }
}
