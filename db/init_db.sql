drop table if exists material_types;
drop table if exists partner_products cascade;
drop table if exists partners cascade;
drop table if exists partner_types cascade;
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

create table partner_types (
    id serial primary key,
    partner_type_name varchar(3)
);

create table partners (
    id serial primary key,
    partner_type int not null references partner_types(id),
    partner_name varchar(250),
    director_last_name varchar(50),
    director_first_name varchar(50),
    director_middle_name varchar(50),
    email varchar(150),
    phone varchar(20),
    adress_index varchar(20),
    adress_region varchar(50),
    adress_city varchar(50),
    adress_street varchar(50),
    adress_building varchar(10),
    inn varchar(12),
    rating int
);

create table partner_products (
    id serial primary key,
    products_id int references products(id),
    partner_id int references partners(id),
    amount int,
    sale_date timestamp
);