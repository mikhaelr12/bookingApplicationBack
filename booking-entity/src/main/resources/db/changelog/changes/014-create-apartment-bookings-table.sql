create table apartment_bookings(
    id bigint primary key default nextval('booking_id_seq'),
    check_in date not null ,
    check_out date not null ,
    no_guests int not null ,
    apartment_id bigint ,
    user_id bigint ,
    constraint fk_apartment_apb foreign key (apartment_id) references apartments (id) ,
    constraint fk_user_apb foreign key (user_id) references users (id)
);

alter table apartment_bookings owner to root;
