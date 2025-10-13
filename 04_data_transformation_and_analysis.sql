select * from energy_consumption

select income_level,count(*) from energy_consumption group by income_level;

//increase consumption by percentage
//low 10%
//medium 20%
//high 30%

//update 1
update energy_consumption
set monthly_usage_kwh = monthly_usage_kwh * 1.1
where income_level = 'Low'

//update 2
update energy_consumption
set monthly_usage_kwh = monthly_usage_kwh * 1.2
where income_level = 'Middle'

//update 3
update energy_consumption
set monthly_usage_kwh = monthly_usage_kwh * 1.3
where income_level = 'High'

select * from energy_consumption


//reduce cost_saving_usd by percentage
//low 10%
//medium 20%
//high 30%


//update 1
update energy_consumption
set cost_savings_usd = cost_savings_usd * 0.9
where income_level = 'Low'

//update 2
update energy_consumption
set cost_savings_usd = cost_savings_usd * 0.8
where income_level = 'Middle'

//update 3
update energy_consumption
set cost_savings_usd = cost_savings_usd * 0.7
where income_level = 'High'
