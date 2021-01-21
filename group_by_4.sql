set @time := -1;
select (@time := @time +1)as 'hour', 
		(select count(*) from animal_outs where hour(datetime)=@time)as 'count'
from animal_outs
where @time<23
