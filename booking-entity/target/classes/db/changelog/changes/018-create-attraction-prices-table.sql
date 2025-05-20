create sequence ap_id_seq;
alter sequence ap_id_seq owner to root;

create table attraction_prices(
    id bigint primary key default nextval('ap_id_seq'),
    attraction_price decimal(10,2) not null ,
    category_id bigint ,
    attraction_id bigint ,
    constraint fk_vc_ap foreign key (category_id) references visitor_categories (id) ,
    constraint fk_attraction_ap foreign key (attraction_id) references attractions (id)
);
alter table attraction_prices owner to root;
