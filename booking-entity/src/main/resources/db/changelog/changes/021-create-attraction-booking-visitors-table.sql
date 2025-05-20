create sequence abv_id_seq;
alter sequence abv_id_seq owner to root;

create table attraction_booking_visitors(
    id bigint primary key default nextval('abv_id_seq'),
    quantity int not null ,
    unit_price decimal(10,2) not null ,
    booking_id bigint ,
    category_id bigint ,
    constraint fk_booking_abv foreign key (booking_id) references attraction_bookings (id) ,
    constraint fk_vc_abv foreign key (category_id) references visitor_categories (id)
);
alter table attraction_booking_visitors owner to root;
