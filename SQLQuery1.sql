select *
from CarPrice

select cylindernumber
,case when cylindernumber='one' then '1'
when cylindernumber='two' then '2'
when cylindernumber='three' then '3'
when cylindernumber='four' then '4'
when cylindernumber='five' then '5'
when cylindernumber='six' then '6'
when cylindernumber='seven' then '7'
when cylindernumber='eight' then '8'
when cylindernumber='nine' then '9'
when cylindernumber='twelve' then '12'
else cylindernumber
end
from CarPrice

update CarPrice
set cylindernumber=case when cylindernumber='one' then '1'
when cylindernumber='two' then '2'
when cylindernumber='three' then '3'
when cylindernumber='four' then '4'
when cylindernumber='five' then '5'
when cylindernumber='six' then '6'
when cylindernumber='seven' then '7'
when cylindernumber='eight' then '8'
when cylindernumber='nine' then '9'
when cylindernumber='twelve' then '12'
else cylindernumber
end
from CarPrice 

select doornumber
,case when doornumber='one' then '1'
when doornumber='two' then '2'
when doornumber='three' then '3'
when doornumber='four' then '4'
when doornumber='five' then '5'
when doornumber='six' then '6'
when doornumber='seven' then '7'
when doornumber='eight' then '8'
when doornumber='nine' then '9'
else doornumber
end
from CarPrice

update CarPrice
set doornumber=case when doornumber='one' then '1'
when doornumber='two' then '2'
when doornumber='three' then '3'
when doornumber='four' then '4'
when doornumber='five' then '5'
when doornumber='six' then '6'
when doornumber='seven' then '7'
when doornumber='eight' then '8'
when doornumber='nine' then '9'
else doornumber
end
from CarPrice

alter table CarPrice
alter column doornumber int;

alter table CarPrice
alter column cylindernumber int;

alter table CarPrice
drop column car_ID


select CarName, COUNT(CarName) as cnt
from CarPrice
group by CarName

select ','+ ''''+CarName+''''
from CarPrice
for xml path ('')