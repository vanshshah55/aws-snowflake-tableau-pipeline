select * from tableau_dataset;

select region,count(*) from tableau_dataset group by region;

create table energy_consumption as
select * from tableau_dataset;

select * from energy_consumption