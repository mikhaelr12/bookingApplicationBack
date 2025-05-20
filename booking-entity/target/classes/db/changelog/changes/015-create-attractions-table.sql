create sequence attraction_id_seq;
alter sequence attraction_id_seq owner to root;

create table attractions(
    id bigint primary key default nextval('attraction_id_seq'),
    attraction_name varchar(255) not null ,
    description text ,
    duration int not null ,
    image_url varchar(255) ,
    additional_info text ,
    city_id bigint,
    constraint fk_city_attraction foreign key (city_id) references cities (id)
);
alter table attractions owner to root;
