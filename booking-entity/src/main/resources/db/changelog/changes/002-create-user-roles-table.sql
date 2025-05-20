create sequence ur_id_seq;
alter sequence ur_id_seq owner to root;

create table user_roles(
    id bigint primary key default nextval('ur_id_seq'),
    role_name varchar(255) not null
);
alter table user_roles owner to root;
