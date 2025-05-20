package com.booking.entity.attraction;

import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "visitor_categories")
@Data
public class VisitorCategory {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "vc_id_seq")
    @SequenceGenerator(name = "vc_id_seq", allocationSize = 1, sequenceName = "vc_id_seq")
    private Long id;

    @Column(name = "name", nullable = false)
    private String name;
}
