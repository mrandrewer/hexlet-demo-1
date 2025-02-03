drop table if exists material_types;
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