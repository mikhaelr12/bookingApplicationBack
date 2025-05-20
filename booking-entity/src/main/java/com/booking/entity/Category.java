package com.booking.entity;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "categories")
@Data
public class Category {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "category_id_seq")
    @SequenceGenerator(name = "category_id_seq", allocationSize = 1, sequenceName = "category_id_seq")
    private Long id;

    @Column(name = "category_name", nullable = false)
    private String categoryName;
}
