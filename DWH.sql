-- LinkedIn_Jobs Split

CREATE TABLE Jobs_Master AS
SELECT DISTINCT
    job_link,
    job_title,
    company
FROM LinkedIn_Jobs;

CREATE TABLE Job_Location AS
SELECT DISTINCT
    job_link,
    job_location
FROM LinkedIn_Jobs;

CREATE TABLE Job_Type_Level AS
SELECT DISTINCT
    job_link,
    job_level,
    job_type
FROM LinkedIn_Jobs;

CREATE TABLE Job_Tracking AS
SELECT DISTINCT
    job_link,
    last_processed_time,
    got_summary,
    got_ner,
    is_being_worked
FROM LinkedIn_Jobs;

CREATE TABLE Job_Search_Info AS
SELECT DISTINCT
    job_link,
    search_city,
    search_country,
    search_position,
    first_seen
FROM LinkedIn_Jobs;


-- DataJobs Split

CREATE TABLE Job_Posts_Basic AS
SELECT DISTINCT
    JobPost,
    Title,
    Company,
    Location
FROM DataJobs;

CREATE TABLE Job_Post_Dates AS
SELECT DISTINCT
    JobPost,
    Date,
    OpeningDate,
    Deadline
FROM DataJobs;

CREATE TABLE Job_Post_Requirements AS
SELECT DISTINCT
    JobPost,
    RequiredQual,
    ApplicationP,
    IT,
    Year,
    Month
FROM DataJobs;


-- Job_Descriptions Split

CREATE TABLE Job_Info AS
SELECT DISTINCT
    "Job Id",
    Experience,
    Qualifications,
    "Salary Range",
    "Work Type"
FROM Job_Descriptions;

CREATE TABLE Company_Info AS
SELECT DISTINCT
    "Job Id",
    Company,
    "Company Size",
    "Job Portal"
FROM Job_Descriptions;

CREATE TABLE Company_Details AS
SELECT DISTINCT
    Company,
    Sector,
    Industry,
    Website,
    Ticker,
    Ceo
FROM Job_Descriptions;

CREATE TABLE Job_Desc_Location AS
SELECT DISTINCT
    "Job Id",
    Location,
    Country,
    Latitude,
    Longitude,
    City,
    State,
    Zip
FROM Job_Descriptions;

CREATE TABLE Job_Content AS
SELECT DISTINCT
    "Job Id",
    Responsibilities,
    Benefits,
    skills
FROM Job_Descriptions;

-- Drop Old Tables

DROP TABLE LinkedIn_Jobs;
DROP TABLE DataJobs;
DROP TABLE job_descriptions;
