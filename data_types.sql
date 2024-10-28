/*
MySQL ir 3 dažādi galvenie datu tipi: 'string', 'numeric' un 'date and time'
Konkrēti datu tipi:
a)
'CHAR' - fiksēta garuma datiem, kur veiktspēja ir izšķiroša un garums ir paredzams;
'VARCHAR' - mainīga garuma datiem, kur uzglabāšanas efektivitāte un elastība ir svarīgāka;
'TEXT' - kad ir jāsaglabā lieli un mainīga garuma teksta dati, kas labi neiederas fiksēta 
vai mainīga garuma virkņu tipos (CHAR vai VARCHAR)'

b)
'TINYINT' - mazu veselu skaitļu vērtībām un gadījumos, kad telpas efektivitāte ir ļoti svarīga
'INT' - lielākām veselu skaitļu vērtībām un vispārējas nozīmes lietojumiem, 
kur nepieciešama plašāka diapazona

c) 
'DECIMAL' - precīzām skaitliskām vērtībām, piem., salary DECIMAL(10, 2) — kopā līdz 10 cipariem, 2 aiz komata

d) 
'BOOLEAN' - patiesām/nepatiesām vai binārām vērtībām

e) 
'DATE' - datumiem bez laika
'TIME' - laika vērtībām bez datumiem
'DATETIME' - gan datumam, gan laikam kopā

f) 
'BLOB' - binārajiem datiem(attēli, faili)

g) 
'JSON' - elastīgai, strukturētai datu glabāšanai. Noderīga lietojumprogrammām, 
kurām nepieciešamas dinamiskas un sarežģītas datu struktūras

*/

create database test_db;
use test_db;

create table example_data (
    id INT AUTO_INCREMENT PRIMARY KEY,
    first_name VARCHAR(100),
    age TINYINT,
    salary DECIMAL(10, 2),
    is_active BOOLEAN,
    birth_date DATE,
    hire_time TIME,
    created_at DATETIME,
    profile BLOB,
    settings JSON
);


insert into example_data (first_name, age, salary, is_active, birth_date, hire_time, created_at, profile, settings) VALUES
('Alice', 30, 60000.00, TRUE, '1993-05-15', '09:00:00', NOW(), NULL, '{"theme": "dark", "notifications": true}'),
('Bob', 25, 50000.50, FALSE, '1998-07-22', '10:30:00', NOW(), NULL, '{"theme": "light", "notifications": false}'),
('Charlie', 35, 70000.75, TRUE, '1988-12-05', '08:15:00', NOW(), NULL, '{"theme": "dark", "notifications": true}');

-- apskatīt visus datus
select * from example_data;

-- apskatīt katru datu tipu atsevišķi
select id, first_name from example_data; -- VARCHAR
select id, age from example_data; -- TINYINT
select id, salary from example_data; -- DECIMAL
select id, is_active from example_data; -- BOOLEAN
select id, birth_date from example_data; -- DATE
select id, hire_time from example_data; -- TIME
select id, created_at from example_data; -- DATETIME
select id, profile from example_data; -- BLOB 
-- (šajā gadījumā NULL, jo netiek pievienoti binārie dati kā attēls vai fails), lai dabūtu kaut ko, kas nav NULL
-- vajag pievienot attēlu vai failu, piem., šādi - LOAD_FILE('/path/to/image.jpg')
select id, settings from example_data; -- JSON
select id from example_data; -- INT tiek izmantots kā unikāls identifikators






