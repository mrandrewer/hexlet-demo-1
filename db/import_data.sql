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

insert into products (id, product_type, product_name, article, min_price) values
(1,3,'Паркетная доска Ясень темный однополосная 14 мм','8758385',4456.90),
(2,3,'Инженерная доска Дуб Французская елка однополосная 12 мм','8858958',7330.99),
(3,1,'Ламинат Дуб дымчато-белый 33 класс 12 мм','7750282',1799.33),
(4,1,'Ламинат Дуб серый 32 класс 8 мм с фаской','7028748',3890.41),
(5,4,'Пробковое напольное клеевое покрытие 32 класс 4 мм','5012543',5450.59);

select setval('products_id_seq', (select max(id) from product_types));
