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

select setval('products_id_seq', (select max(id) from products));

insert into partner_types (id, partner_type_name) values
(1, 'ЗАО'),
(2, 'ООО'),
(3, 'ПАО'),
(4, 'ОАО');

select setval('partner_types_id_seq', (select max(id) from partner_types));

insert into partners (
    id,
    partner_type,
    partner_name,
    director_last_name,
    director_first_name,
    director_middle_name,
    email,
    phone,
    adress_index,
    adress_region,
    adress_city,
    adress_street,
    adress_building,
    inn,
    rating
) values
(1, 1, 'База Строитель', 'Иванова', 'Александра', 'Ивановна', 'aleksandraivanova@ml.ru', '493 123 45 67', '652050', 'Кемеровская область', 'город Юрга', 'ул. Лесная', '15', '2222455179', 7),
(2, 2, 'Паркет 29', 'Петров', 'Василий', 'Петрович', 'vppetrov@vl.ru', '987 123 56 78', '164500', 'Архангельская область', 'город Северодвинск', 'ул. Строителей', '18', '3333888520', 7),
(3, 3, 'Стройсервис', 'Соловьев', 'Андрей', 'Николаевич', 'ansolovev@st.ru', '812 223 32 00', '188910', 'Ленинградская область', 'город Приморск', 'ул. Парковая', '21', '4440391035', 7),
(4, 4, 'Ремонт и отделка', 'Воробьева', 'Екатерина', 'Валерьевна', 'ekaterina.vorobeva@ml.ru', '444 222 33 11', '143960', 'Московская область', 'город Реутов', 'ул. Свободы', '51', '1111520857', 5),
(5, 1, 'МонтажПро', 'Степанов', 'Степан', 'Сергеевич', 'stepanov@stepan.ru', '912 888 33 33', '309500', 'Белгородская область', 'город Старый Оскол', 'ул. Рабочая', '122', '5552431140', 0);

select setval('partners_id_seq', (select max(id) from partners));
