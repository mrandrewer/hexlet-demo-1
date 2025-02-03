drop table if exists material_types;
drop table if exists products cascade;
drop table if exists product_types cascade;

create table material_types (
    id serial primary key,
    material_type_name varchar(50),
    failure_rate numeric(5, 2)
);

create table product_types(
    id serial primary key,
    product_type_name varchar(50),
    product_type_coef numeric(5, 2)
);

create table products(
    id serial primary key,
    product_type int not null references product_types(id),
    product_name varchar(100),
    article varchar(50),
    min_price numeric (12, 2)
);