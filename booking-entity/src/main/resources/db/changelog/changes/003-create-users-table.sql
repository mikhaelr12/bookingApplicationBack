create sequence user_id_seq;
alter sequence user_id_seq owner to root;

create table users(

    id bigint primary key default nextval('user_id_seq'),
    username varchar(25) unique not null ,
    password varchar(255) not null ,
    email varchar(255) unique not null ,
    phone_number varchar(255) unique not null ,
    role_id bigint,
    constraint fk_ur_user foreign key (role_id) references user_roles (id)
);
alter table users owner to root;
