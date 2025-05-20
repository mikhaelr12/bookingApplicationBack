create sequence continent_id_seq;
alter sequence continent_id_seq owner to root;

create table continents(

    id bigint primary key default nextval('continent_id_seq'),
    continent_name varchar(255) not null
);
alter table continents owner to root;
