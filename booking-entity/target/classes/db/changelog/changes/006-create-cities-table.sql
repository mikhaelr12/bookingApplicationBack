create sequence city_id_seq;
alter sequence city_id_seq owner to root;

create table cities(
    id bigint primary key default nextval('city_id_seq'),
    city_name varchar(255) not null ,
    image_path varchar(255) ,
    country_id bigint ,
    constraint fk_country_city foreign key (country_id) references countries (id)
);
alter table cities owner to root;
