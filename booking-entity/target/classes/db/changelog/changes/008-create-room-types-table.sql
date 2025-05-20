create sequence rt_id_seq;
alter sequence rt_id_seq owner to root;

create table room_types(
    id bigint primary key default nextval('rt_id_seq'),
    room_type varchar(50) not null
);
alter table room_types owner to root;
