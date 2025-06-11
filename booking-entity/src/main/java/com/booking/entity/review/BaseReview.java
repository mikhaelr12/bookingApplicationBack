package com.booking.entity.review;

import com.booking.entity.User;
import jakarta.persistence.*;
import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;
import lombok.experimental.SuperBuilder;

import java.time.LocalDate;

@MappedSuperclass
@Data
@SuperBuilder
@NoArgsConstructor
@AllArgsConstructor
public abstract class BaseReview {

    @Id
    @GeneratedValue(strategy = GenerationType.SEQUENCE, generator = "review_id_seq")
    @SequenceGenerator(name = "review_id_seq", allocationSize = 1, sequenceName = "review_id_seq")
    private Long id;

    @Column(name = "review_text", length = 1000)
    private String text;

    @Column(name = "rating", nullable = false)
    private Double rating;

    @Column(name = "review_date", nullable = false)
    private LocalDate reviewDate;

    @Column(name = "checked")
    private Boolean checked = false;

    @ManyToOne
    @JoinColumn(name = "user_id", foreignKey = @ForeignKey(name = "fk_user_br"))
    private User user;
}
