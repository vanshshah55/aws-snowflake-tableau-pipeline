CREATE OR REPLACE STORAGE INTEGRATION Tableau_Integration_project
TYPE = EXTERNAL_STAGE
STORAGE_PROVIDER = 'S3'
ENABLED = TRUE
STORAGE_AWS_ROLE_ARN = '' //your ARN 
STORAGE_ALLOWED_LOCATIONS = ('') //your s3 file location
COMMENT = 'Optional Comment'


desc integration Tableau_Integration_project; //to update the trust policy