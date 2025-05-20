create sequence vc_id_seq;
alter sequence vc_id_seq owner to root;

create table visitor_categories(
    id bigint primary key default nextval('vc_id_seq'),
    name varchar(50) not null
);
alter table visitor_categories owner to root;
