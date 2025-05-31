create sequence atb_id_seq;
alter sequence atb_id_seq owner to root;

create table attraction_bookings(
    id bigint primary key default nextval('atb_id_seq'),
    final_price decimal(10,2) not null ,
    status varchar(20) not null ,
    attraction_id bigint ,
    created_at timestamp default current_timestamp ,
    user_id bigint ,
    time_id bigint ,
    constraint fk_attraction_ab foreign key (attraction_id) references attractions (id) ,
    constraint fk_user_ab foreign key (user_id) references users (id) ,
    constraint fk_at_ab foreign key (time_id) references attraction_times (id)
);
alter table attraction_bookings owner to root;
