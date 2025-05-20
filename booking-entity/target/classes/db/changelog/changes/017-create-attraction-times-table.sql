create sequence at_id_seq;
alter sequence at_id_seq owner to root;

create table attraction_times(
    id bigint primary key default nextval('at_id_seq'),
    attraction_date date not null ,
    attraction_time time not null ,
    max_people int ,
    attraction_id bigint,
    constraint fk_attraction_at foreign key (attraction_id) references attractions (id)
);
alter table attraction_times owner to root;
