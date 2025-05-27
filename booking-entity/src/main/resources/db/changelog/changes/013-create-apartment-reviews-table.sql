create table apartment_reviews(
    id bigint primary key default nextval('review_id_seq'),
    review_text varchar(1000) ,
    rating decimal(3,1) not null ,
    review_date date ,
    checked boolean default false,
    user_id bigint,
    apartment_id bigint ,
    constraint fk_user_apr foreign key (user_id) references users (id) ,
    constraint fk_fk_apartment_apr foreign key (apartment_id) references apartments (id)
);

alter table apartment_reviews owner to root;
