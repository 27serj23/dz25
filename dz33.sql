

--Создайте таблицу ФИЛЬМЫ
--АТРИБУТЫ :
--id - первичный ключ, автоматически увеличиваемый.
--title - обязательное поле для заполнения.
--release_date - дата выхода фильма.
--genre - жанр фильма.
--duration - длительность фильма в минутах.
--ЗАДАНИЕ:
--Получить список всех фильмов вместе с их названиями, датами выхода и жанрами.
--Найти фильмы, вышедшие после 2010 года.
--Получить список фильмов жанра "Фантастика".
--Найти фильмы с длительностью более 150 минут.
--Получить список фильмов, названия которых начинаются на букву "В".
--Найти фильмы жанра "Боевик", вышедшие до 2005 года.
--Найти фильмы с длительностью менее 120 минут.
-- Создание таблицы "ФИЛЬМЫ"
CREATE TABLE IF NOT EXISTS ФИЛЬМЫ (
    Id INTEGER PRIMARY KEY AUTOINCREMENT,
    Title TEXT NOT NULL,
    Release_date DATE,
    Genre TEXT,
    Duration INTEGER
);

-- Вставка примеров данных
INSERT INTO ФИЛЬМЫ (Title, Release_date, Genre, Duration) VALUES ('Название1', '2022-01-01', 'Жанр1', 120);
INSERT INTO ФИЛЬМЫ (Title, Release_date, Genre, Duration) VALUES ('Название2', '2015-05-05', 'Фантастика', 160);
INSERT INTO ФИЛЬМЫ (Title, Release_date, Genre, Duration) VALUES ('Вторжение', '2010-07-10', 'Фантастика', 140);
INSERT INTO ФИЛЬМЫ (Title, Release_date, Genre, Duration) VALUES ('Бойцовский клуб', '1999-11-11', 'Боевик', 155);

-- Запросы
-- Получить список всех фильмов вместе с их названиями, датами выхода и жанрами
SELECT Title, Release_date, Genre FROM ФИЛЬМЫ;

-- Найти фильмы, вышедшие после 2010 года
SELECT * FROM ФИЛЬМЫ WHERE Release_date > '2010-12-31';

-- Получить список фильмов жанра «Фантастика»
SELECT * FROM ФИЛЬМЫ WHERE Genre = 'Фантастика';

-- Найти фильмы с длительностью более 150 минут
SELECT * FROM ФИЛЬМЫ WHERE Duration > 150;

-- Получить список фильмов, названия которых начинаются на букву «В»
SELECT * FROM ФИЛЬМЫ WHERE Title LIKE 'В%';

-- Найти фильмы жанра «Боевик», вышедшие до 2005 года
SELECT * FROM ФИЛЬМЫ WHERE Genre = 'Боевик' AND Release_date < '2005-01-01';

-- Найти фильмы с длительностью менее 120 минут
SELECT * FROM ФИЛЬМЫ WHERE Duration < 120;




--Создайте таблицу "Альбомы" со следующими атрибутами:
--id - первичный ключ, автоматически увеличиваемый.
--title - обязательное поле для заполнения, название альбома.
--artist - обязательное поле для заполнения, исполнитель альбома.
--release_date - дата выпуска альбома.
--genre - жанр музыки в альбоме.
--Задача:
--Получить список всех альбомов вместе с их названиями, исполнителями, датами выпуска и жанрами.
--Найти альбомы, выпущенные после 2015 года.
--Получить список альбомов жанра "Рок".
--Найти альбомы с названием, начинающимся на букву "S".
--Получить список альбомов, исполнителями которых являются "The Beatles".
--Найти альбомы жанра "Хип-хоп", выпущенные до 2010 года.
--Найти альбомы с датой выпуска после 2000 года и жанром "Поп".*/

--1. Создание таблицы "Альбомы":

CREATE TABLE Albums (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT NOT NULL,
artist TEXT NOT NULL,
release_date DATE,
genre TEXT
);

INSERT INTO Albums (Title, Artist, Release_date, Genre) VALUES ('Album1', 'Artist1', '2016-03-12', 'Pop');
INSERT INTO Albums (Title, Artist, Release_date, Genre) VALUES ('Album2', 'Artist2', '2019-07-25', 'Rock');
INSERT INTO Albums (Title, Artist, Release_date, Genre) VALUES ('Album3', 'Artist3', '2010-11-30', 'Hip-Hop');
INSERT INTO Albums (Title, Artist, Release_date, Genre) VALUES ('Album4', 'The Beatles', '2005-04-18', 'Rock');
INSERT INTO Albums (Title, Artist, Release_date, Genre) VALUES ('Special Album', 'The Beatles', '2020-09-05', 'Pop');


--2. Получить список всех альбомов вместе с их названиями, исполнителями, датами выпуска и жанрами:

SELECT title, artist, release_date, genre
FROM Albums;


--3. Найти альбомы, выпущенные после 2015 года:

SELECT title, artist, release_date, genre
FROM Albums
WHERE release_date > '2015-12-31';


--4. Получить список альбомов жанра "Рок":

SELECT title, artist, release_date, genre
FROM Albums
WHERE genre = 'Рок';


--5. Найти альбомы с названием, начинающимся на букву "S":

SELECT title, artist, release_date, genre
FROM Albums
WHERE title LIKE 'S%';


--6. Получить список альбомов, исполнителями которых являются "The Beatles":

SELECT title, artist, release_date, genre
FROM Albums
WHERE artist = 'The Beatles';


--7. Найти альбомы жанра "Хип-хоп", выпущенные до 2010 года:

SELECT title, artist, release_date, genre
FROM Albums
WHERE genre = 'Хип-хоп' AND release_date < '2010-01-01';


--8. Найти альбомы с датой выпуска после 2000 года и жанром "Поп":

SELECT title, artist, release_date, genre
FROM Albums
WHERE release_date > '2000-12-31' AND genre = 'Поп';


--Создайте таблицу "Рецепты" со следующими атрибутами:
-- id - первичный ключ, автоматически увеличиваемый.
-- title - обязательное поле для заполнения, название рецепта.
-- author - обязательное поле для заполнения, автор рецепта.
-- cuisine - тип кухни, к которой относится рецепт (например, итальянская, японская, мексиканская и т. д.).
--ingredients - обязательное поле для заполнения, список ингредиентов для приготовления.
-- instructions - обязательное поле для заполнения, пошаговые инструкции приготовления.
-- difficulty - уровень сложности приготовления рецепта (легкий, средний, сложный).

--Задача:
--1. Получить список всех рецептов вместе с их названиями, авторами и типами кухни.
--2. Найти рецепты, добавленные после 2015 года.
--3. Получить список рецептов итальянской кухни.
--4. Найти рецепты с уровнем сложности "сложный".
--5. Получить список рецептов, названия которых начинаются на букву "П".
--6. Найти рецепты автора с именем "Анна".
--7. Найти рецепты, использующие помидоры в качестве ингредиента.*/

--Запрос на создание таблицы "Рецепты":

CREATE TABLE Recipes (
id INTEGER PRIMARY KEY AUTOINCREMENT,
title TEXT NOT NULL,
author TEXT NOT NULL,
cuisine TEXT,
ingredients TEXT NOT NULL,
instructions TEXT NOT NULL,
difficulty TEXT
);

--Запрос на вставку данных:

INSERT INTO Recipes (title, author, cuisine, ingredients, instructions, difficulty)
VALUES ('Паста карбонара', 'Мария', 'Итальянская', 'Спагетти, яйца, гуанчиале, пармезан, соль, перец', '1. Сварить спагетти. 2. Обжарить гуанчиале. 3. Смешать яйца, пармезан и перец. 4. Смешать все ингредиенты и подавать.', 'Средний');

--Запросы на выборку данных:

--1. Получить список всех рецептов вместе с их названиями, авторами и типами кухни:

SELECT title, author, cuisine FROM Recipes;

--2. Найти рецепты, добавленные после 2015 года:

SELECT * FROM Recipes WHERE id > 2015;

--3. Получить список рецептов итальянской кухни:

SELECT * FROM Recipes WHERE cuisine = 'Итальянская';

--4. Найти рецепты с уровнем сложности "сложный":

SELECT * FROM Recipes WHERE difficulty = 'Сложный';

--5. Получить список рецептов, названия которых начинаются на букву "П":

SELECT * FROM Recipes WHERE title LIKE 'П%';

--6. Найти рецепты автора с именем "Анна":

SELECT * FROM Recipes WHERE author = 'Анна';

--7. Найти рецепты, использующие помидоры в качестве ингредиента:

SELECT * FROM Recipes WHERE ingredients LIKE '%помидор%';





