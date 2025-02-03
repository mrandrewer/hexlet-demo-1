insert into material_types (material_type_name, failure_rate) values
('Тип материала 1', 0.10),
('Тип материала 2', 0.95),
('Тип материала 3', 0.28),
('Тип материала 4', 0.55),
('Тип материала 5', 0.34);

insert into product_types (id, product_type_name, product_type_coef) values
(1, 'Ламинат', 2.35),
(2, 'Массивная доска', 5.15),
(3, 'Паркетная доска', 4.34),
(4, 'Пробковое покрытие', 1.5);

select setval('product_types_id_seq', (select max(id) from product_types));