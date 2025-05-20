create sequence category_id_seq;
alter sequence category_id_seq owner to root;

create table categories(
    id bigint primary key default nextval('category_id_seq'),
    category_name varchar(100) not null
);
alter table categories owner to root;
