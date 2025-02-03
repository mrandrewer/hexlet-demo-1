drop table material_types;

create table material_types (
    id serial primary key,
    material_type_name varchar(50),
    failure_rate numeric(5, 2)
);
