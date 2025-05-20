create sequence hotel_id_seq;
alter sequence hotel_id_seq owner to root;

create table hotels(

    id bigint primary key default nextval('hotel_id_seq'),
    hotel_name varchar(255) not null ,
    address varchar(255) not null ,
    rating decimal(3,1) ,
    image_url varchar(255) ,
    city_id bigint ,
    category_id bigint ,
    constraint fk_city_hotel foreign key (city_id) references cities (id) ,
    constraint fk_category_hotel foreign key (category_id) references categories (id)
);
alter table hotels owner to root;
