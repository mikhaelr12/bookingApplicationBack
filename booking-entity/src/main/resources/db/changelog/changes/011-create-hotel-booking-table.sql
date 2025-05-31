create sequence booking_id_seq;
alter sequence booking_id_seq owner to root;

create table hotel_bookings(
    id bigint primary key default nextval('booking_id_seq'),
    check_in date not null ,
    check_out date not null ,
    no_guests int not null ,
    final_price decimal(10,2) not null ,
    status varchar(20) not null ,
    created_at timestamp default current_timestamp ,
    room_id bigint ,
    user_id bigint ,
    hotel_id bigint,
    constraint fk_room_hb foreign key (room_id) references hotel_rooms (id) ,
    constraint fk_user_hb foreign key (user_id) references users (id) ,
    constraint fk_hotel_hb foreign key (hotel_id) references hotels (id)
);
alter table hotel_bookings owner to root;
