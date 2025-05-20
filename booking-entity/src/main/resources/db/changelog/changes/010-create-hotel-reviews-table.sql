create sequence review_id_seq;
alter sequence review_id_seq owner to root;

create table hotel_reviews(
    id bigint primary key default nextval('review_id_seq'),
    review_text varchar(1000) ,
    rating decimal(3,1) not null ,
    review_date date not null ,
    user_id bigint ,
    hotel_id bigint ,
    constraint fk_user_hr foreign key (user_id) references users (id) ,
    constraint fk_hotel_hr foreign key (hotel_id) references hotels (id)
);
alter table hotel_reviews owner to root;
