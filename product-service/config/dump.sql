create table products (
	id uuid primary key default uuid_generate_v4(),
	title text not null,
	description text,
	price integer,
	logo text
);

--drop table products;


create table stocks (
	product_id uuid,
	count integer,
	foreign key ("product_id") references "products" ("id")
);

--drop table stocks;


insert into products ( id, title, description, price, logo ) values
	( '8fcd8e02-c428-4b3f-bd16-810928e19b3b', 'Рефакторинг от М.Фаулера', 'Улучшение проекта существующего кода» пролили свет на процесс рефакторинга, описав принципы и лучшие приёмы его осуществления.', 24, 'https://r5.readrate.com/img/pictures/basic/792/792600/7926007/w800h317-76be96b9.jpg' ),
	( 'da9739f4-7eeb-41bc-b4c3-cabbadbf0bba', 'Программист-прагматик. Путь от подмастерья к мастеру. Эндрю Хант, Дэвид Томас', '«Программист-прагматик. Путь от подмастерья к мастеру» расскажет всё, что нужно знать человеку, начинающему свой путь в сфере IT-проектов. Почти культовая книга. Вы узнаете, как бороться с недостатками ПО, как создать диамичную, эффективую и адаптируемую программу, как сформировать успешную команду программистов.', 10, 'https://r2.readrate.com/img/pictures/basic/792/792600/7926008/w800h317-89405d1d.jpg' ),
	( '4d3d469b-82d7-478d-baf0-afc43ff6c560', 'Совершенный код. Мастер-класс. Стив Макконнелл', '«Совершенный код. Мастер-класс» – обновлённое издание проверенного временем бестселлера. Книга, которая заставляет размышлять и помогает создать идеальный код. Причём неважно, новичок вы или профи, в этом издании точно найдёте информацию для роста и работы над своим проектом. ', 23, 'https://r5.readrate.com/img/pictures/basic/792/792600/7926009/w800h317-da60182f.jpg' ),
	( '8d6ed29e-4118-43af-9e01-d636e28e0269', 'На пике. Как поддерживать максимальную эффективность без выгорания. Брэд Сталберг, Стив Магнесс', 'Книга «На пике. Как поддерживать максимальную эффективность без выгорания» особенно необходима программистам, которые привыкли с головой погружаться в работу, не следя за временем и растратой таких ресурсов, как силы и здоровье. ', 15, 'https://r2.readrate.com/img/pictures/basic/792/792601/7926010/w800h317-04d81319.jpg' ),
	( '350ffcfd-91f8-4dff-8fcd-aad41f964ba5', 'Программирование без дураков. Катрин Пассиг, Йоханнес Яндер', 'Эту книгу интересно читать и начинающему, и бывалому программисту. Авторы понятно и с юмором рассказывают о том, что программирование – это во многом коммуникация. Стиль программирования, именование, комментирование, работа с чужим кодом – зачастую соглашения складываются именно там, где строгая регламентация на уровне языка программи. ', 23, 'https://r2.readrate.com/img/pictures/basic/792/792601/7926014/w800h317-a1bf3137.jpg' ),
	( 'c7675b28-b668-44c4-ba69-a9f9273ad396', 'Head First. Паттерны проектирования. Эрик Фримен, Элизабет Фримен', 'Обновлённое юбилейное издание легендарной книги «Паттерны проектирования». Многие проблемы программирования имеют свойство повторяться и дублировать друг друга. Разработчики всего мира решают совершенно идентичные задачи и находят похожие решения. Если вы не хотите изобретать велосипед, используйте готовые шаблоны (паттерны) проектирования, работе с которыми посвящена эта книга.', 15, 'https://r5.readrate.com/img/pictures/basic/792/792601/7926015/w800h317-8f4d4f25.jpg' ),
	( 'c59e6618-ddb1-4d72-a1c7-063ef80ab197', 'Эффективная работа с унаследованным кодом. Майкл К. Физерс', 'Можете ли вы без особого труда изменить код и тут же получить ответную реакцию на внесённые изменения? Насколько понятен этот код? Если вы сталкиваетесь с унаследованным кодом, вам пригодится книга Майкла К. Физерса, посвящённая работе с ним. В книге «Эффективная работа с унаследованным кодом» вы найдёте информацию о механизмах внесения изменений в программное обеспечение, переносе унаследованного кода в средства тестирования, о написании тестов, препятствующих внесению новых ошибок в код, о применении методов, подходящих для любого языка или платформы, с примерами кода на Java, C++, C и C#. Кроме того, вы узнаете, как точно выявить в коде места, где требуется внести изменения, и как работать с унаследованным кодом, который не является объектно-ориентированным, и многое другое.', 23, 'https://r2.readrate.com/img/pictures/basic/792/792600/7926006/w800h317-535b11eb.jpg' ),
	( '36681ddf-f001-4d85-911b-96c80d430b2c', 'Программист-фанатик. Чед Фаулер', 'Это издание – сборник полезных советов, многие из которых на собственном опыте можно сформулировать только после долгих лет работы в отрасли. Тут нет описания конкретных технологий, алгоритмов и языков программирования – ценность «Программиста-фанатика» не в этом. Книга расскажет, как победить отсутствие мотивации, выбрать правильные приоритеты, понять психологию программирования, наладить отношения с руководством и коллегами и т. д.', 15, 'https://r5.readrate.com/img/pictures/basic/792/792601/7926011/w800h317-16272c40.jpg' );

insert into stocks ( product_id , count) values
	( '8fcd8e02-c428-4b3f-bd16-810928e19b3b', 4),
	( 'da9739f4-7eeb-41bc-b4c3-cabbadbf0bba', 6),
	( '4d3d469b-82d7-478d-baf0-afc43ff6c560', 7),
	( '8d6ed29e-4118-43af-9e01-d636e28e0269', 12),
	( '350ffcfd-91f8-4dff-8fcd-aad41f964ba5', 7),
	( 'c7675b28-b668-44c4-ba69-a9f9273ad396', 8),
	( 'c59e6618-ddb1-4d72-a1c7-063ef80ab197', 2),
	( '36681ddf-f001-4d85-911b-96c80d430b2c', 3);
	
--create extension if not exists "uuid-ossp";