
	
--HW_60

--Get model names of the car owners, age of which greater than average age of all owners more
--than on 10%

select distinct model_name 
from 
cars 
where 
(select date_part('year', age(birth_date))from car_owners where id = owner_id) > 
(select avg(date_part('year', age(birth_date))) * 1.1 from car_owners);


--Get person names of cars with maximal engine capacity

select name
from car_owners where id in (select owner_id 
from cars
where 
model_name = (select name from models order by engine_capacity desc limit 1));


--Get model names,cars of which have at least 
--two different colors (consider using construction
--‘exists’)

 
select model_name
from cars
group by model_name
having count (color) >= 2;


select distinct model_name 
from 
cars 
where 
(select date_part('year', age(birth_date))from car_owners where id = owner_id ) > 
(select avg(date_part('year', age(birth_date))) * 1.1 from car_owners);




