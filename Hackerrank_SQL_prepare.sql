## Revising select query 1 

SELECT *
FROM CITY
WHERE POPULATION > 100000 AND COUNTRYCODE = "USA";


## Revising select query 2

SELECT NAME
FROM CITY
WHERE COUNTRYCODE = "USA" AND POPULATION > 120000;


## Select all

SELECT * FROM City;

## Select by ID

SELECT * FROM City WHERE ID=1661;


## Japanese Cities' Attributes

SELECT * FROM City WHERE CountryCode="JPN";


## Japanese Cities' Names

SELECT Name
FROM City
WHERE CountryCode = "JPN";


## Weather Observation Station 1 

SELECT CITY, STATE
FROM STATION
ORDER BY CITY, STATE;


## Weather Observation Station 3

SELECT DISTINCT CITY
FROM STATION
WHERE (ID % 2) = 0
ORDER BY CITY;


## Weather Observation Station 4

select (count(CITY) -  count(distinct CITY)) from STATION;


## Weather Observation Station 5

select CITY, length(CITY) from STATION where length(CITY) in ( select max(length(CITY)) from STATION union select min(length(CITY))from STATION) order by
   length(CITY) desc,
   CITY asc limit 2;


## Weather Observation Station 6

select distinct CITY from STATION where lower(substr(CITY,1,1)) IN ('a','e','i','o','u'); 


## Weather Observation Station 7

select distinct CITY from station where lower(right(CITY,1)) IN ('a','e','i','o','u')


## Weather Observatioin Station 8

SELECT DISTINCT city
FROM   station
WHERE  city RLIKE '^[aeiouAEIOU].*[aeiouAEIOU]$'


## Weather Observation Station 9

select distinct CITY from Station where lower(left(CITY,1)) not in ('a','e','i','o','u');


## Weather Observation Station 10

select distinct CITY from Station where lower(right(CITY,1)) not in ('a','e','i','o','u');


## Weather Observation Station 11

SELECT DISTINCT city
FROM   station
WHERE  city NOT REGEXP '^[aeiouAEIOU].*[aeiouAEIOU]$' 


## Weather Observation Station 12

select distinct city
from station 
where not (city like 'A%' or city like 'E%' or city like 'I%' or city like 'O%' or  city like 'U%') and not (city like '%a' or city like '%e' or city like '%i' or city like '%o' or  city like '%u');


## Higher than 75 marks

select NAME from STUDENTS where MARKS > 75 order by RIGHT(NAME,3) asc,ID asc;


## Employee names

select name from Employee order by name asc;


## Employee salaries

select name from Employee where salary > 2000 and months < 10 order by employee_id asc;

## Types of Triangles

SELECT CASE
WHEN A + B <= C OR A + C <= B OR B + C <= A THEN 'Not A Triangle'
WHEN A = B AND B = C THEN 'Equilateral'
WHEN A = B OR B = C OR A = C THEN 'Isosceles'
ELSE 'Scalene'
END
FROM TRIANGLES;
