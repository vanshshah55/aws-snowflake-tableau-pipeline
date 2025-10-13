CREATE OR REPLACE STORAGE INTEGRATION Tableau_Integration_project
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = 'S3'
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = 'arn:aws:iam::319174273732:role/tableau-snowflake-project-role'
STORAGE_ALLOWED_LOCATIONS = ('s3://vansh-tableau-snowflake-project/')
COMMENT = 'Optional Comment'


desc integration Tableau_Integration_project; //to update the trust policy