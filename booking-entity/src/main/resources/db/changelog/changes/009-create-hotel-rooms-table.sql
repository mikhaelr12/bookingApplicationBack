create sequence room_id_seq;
alter sequence room_id_seq owner to root;

create table hotel_rooms(
    id bigint primary key default nextval('room_id_seq'),
    room_number int not null ,
    description varchar(500) not null ,
    price decimal(10,2) not null ,
    max_guests int,
    image_url varchar(255),
    rt_id bigint,
    hotel_id bigint,
    constraint fk_rt_room foreign key (rt_id) references room_types (id) ,
    constraint fk_hotel_room foreign key (hotel_id) references hotels (id)
);
alter table hotel_rooms owner to root;
