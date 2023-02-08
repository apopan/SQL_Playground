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
