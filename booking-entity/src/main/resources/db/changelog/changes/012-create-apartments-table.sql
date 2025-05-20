create sequence apartment_id_seq;
alter sequence apartment_id_seq owner to root;

create table apartments(
    id bigint primary key default nextval('apartment_id_seq'),
    apartment_name varchar(255) not null ,
    address varchar(100) not null ,
    rating decimal(3,1) ,
    price decimal(10,2) not null ,
    no_bedrooms int not null ,
    no_guests int not null ,
    image varchar(255) not null ,
    city_id bigint ,
    category_id bigint,
    constraint fk_city_apartment foreign key (city_id) references cities (id) ,
    constraint fk_category_apartment foreign key (category_id) references categories (id)
);
alter table apartments owner to root;
