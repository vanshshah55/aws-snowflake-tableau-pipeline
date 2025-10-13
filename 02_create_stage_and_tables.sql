CREATE database tableau;

create schema tableau_Data;

create table tableau_dataset (
Household_ID	string,Region	string,Country	string,Energy_Source	string,
Monthly_Usage_kWh	float,Year	int,Household_Size	int,Income_Level	string,
Urban_Rural	string,Adoption_Year	int,Subsidy_Received	string,Cost_Savings_USD float




);


select * from tableau_dataset;

//drop database tableau;

create stage tableau.tableau_Data.tableau_stage
url = '' // your s3 file location
storage_integration = Tableau_Integration_project

//desc stage s1

//drop stage s1;


copy into tableau_dataset 
from @tableau_stage
file_format = (type=csv field_delimiter=',' skip_header=1 )
on_error = 'continue'

list @s1