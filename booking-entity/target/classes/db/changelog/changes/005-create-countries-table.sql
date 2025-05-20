create sequence country_id_seq;
alter sequence country_id_seq owner to root;

create table countries(

    id bigint primary key default nextval('country_id_seq'),
    country_name varchar(255) not null ,
    continent_id bigint,
    constraint fk_continent_country foreign key (continent_id) references continents (id)
);
alter table countries owner to root;
