select * from car_ dekho;
show databases;
use b_projects;
show tables;

alter table `car_ dekho` 
rename car_dekho;

select * from car_dekho;
---created procedure
Delimiter $$
create procedure car()
begin
select * from car_dekho;
end$$
delimiter $$
call car();

----- "READ DATA"---
select * from car_dekho;

--- "Total cars: To get a count of total records"----
select count(*)
from car_dekho;

--- "The manager inquired with the employee about the number of cars that will be available in 2023."--

select count(*)
from car_dekho 
where year =  2023;

--- The manager asked  the employee how many cars are available in the year 2020,2021,2022.. 
select count(*)
from car_dekho 
where year in ( 2020,2021,2022) 
group by year; 

---print the total of all cars by year.....
select year, count(*)
from car_dekho
group by year;

---how many diesel cars will be there in year by 2023?
select count(*)
from car_dekho
where year = 2023 and fuel = 'Diesel';


-----The manager told the employee to give a print all the fuel cars(petrol, diesel and CNG) come by all year---

SELECT year,fuel
from car_dekho
group by year;

select year, count(*) as Diesel_cars from car_dekho where fuel = 'Diesel' group by year;
select year, count(*) as Petrol_cars from car_dekho where fuel = 'Petrol' group by year;
select year, count(*) as CNG_cars from car_dekho where fuel = 'CNG' group by year;

SELECT
    year,
    COUNT(CASE WHEN fuel = 'Diesel' THEN 1 ELSE NULL END) AS Diesel_cars,
    COUNT(CASE WHEN fuel = 'Petrol' THEN 1 ELSE NULL END) AS Petrol_cars,
    COUNT(CASE WHEN fuel = 'CNG' THEN 1 ELSE NULL END) AS CNG_cars
FROM
    car_dekho
GROUP BY
    year;


---Manager said there were more than 100 cars in a given year , which year had more than 100 cars?

call car();

select  year, count(*) from car_dekho 
group by year 
having count(*) >100;
 
 
  ----The manager said to the  Employee All cars count details between 2015 and 2023;
  
  select count(*)
  from car_dekho
  where year between 2015 and 2023;
  
  --- The manager said to the Employee All cars details between 2015 to 2023 we need a complete list..
  
  select *
  from car_dekho
  where year between 2015 and 2023;











