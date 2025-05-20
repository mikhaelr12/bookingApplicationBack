create table attraction_reviews(
    id bigint primary key DEFAULT nextval('review_id_seq'),
    text varchar(1000) ,
    rating decimal(3,1) not null ,
    review_date date ,
    user_id bigint ,
    attraction_id bigint ,
    constraint fk_user_br foreign key (user_id) references users (id) ,
    constraint fk_attraction_ar foreign key (attraction_id) references attractions (id)
);

alter table attraction_reviews owner to root;
