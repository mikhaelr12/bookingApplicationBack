package com.booking.entity;


import jakarta.persistence.*;
import lombok.Data;

@Entity
@Table(name = "user_roles")
@Data
public class UserRole {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "ur_id_seq")
    @SequenceGenerator(name = "ur_id_seq", allocationSize = 1, sequenceName = "ur_id_seq")
    private Long id;

    @Column(name = "role_name", nullable = false)
    private String roleName;

}
