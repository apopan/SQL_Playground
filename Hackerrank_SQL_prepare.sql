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
