create sequence booking_id_seq;
alter sequence booking_id_seq owner to root;

create table hotel_bookings(
    id bigint primary key default nextval('booking_id_seq'),
    check_in date not null ,
    check_out date not null ,
    no_guests int not null ,
    room_id bigint ,
    user_id bigint ,
    constraint fk_room_hb foreign key (room_id) references hotel_rooms (id) ,
    constraint fk_user_hb foreign key (user_id) references users (id)
);
alter table hotel_bookings owner to root;
