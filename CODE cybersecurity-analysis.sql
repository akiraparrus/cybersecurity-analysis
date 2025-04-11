select * from global_cybersecurity_threats gct;

/* Missing Data*/
SELECT
    COUNT(*) AS "total_rows",
    COUNT(CASE WHEN "Country" IS NULL THEN 1 END) AS "missing_country",
    COUNT(CASE WHEN "Year" IS NULL THEN 1 END) AS "missing_year",
    COUNT(CASE WHEN "Attack_Type" IS NULL THEN 1 END) AS "missing_attack_type",
    COUNT(CASE WHEN "Target_Industry" IS NULL THEN 1 END) AS "missing_target_industry",
    COUNT(CASE WHEN "Financial_Loss(in Million $)" IS NULL THEN 1 END) AS "missing_financial_loss",
    COUNT(CASE WHEN "Number_of_Affected_Users" IS NULL THEN 1 END) AS "missing_affected_users",
    COUNT(CASE WHEN "Attack_Source" IS NULL THEN 1 END) AS "missing_attack_source",
    COUNT(CASE WHEN "Security_Vulnerability_Type" IS NULL THEN 1 END) AS "missing_vulnerability",
    COUNT(CASE WHEN "Defense_Mechanism_Used" IS NULL THEN 1 END) AS "missing_defense_mechanism",
    COUNT(CASE WHEN "Incident_Resolution_Time(in Hours)" IS NULL THEN 1 END) AS "missing_resolution_time"
FROM global_cybersecurity_threats gct ;

/*remove outliers* always use " "*/
SELECT 
    MIN("Financial_Loss(in Million $)") AS "min_loss", 
    MAX("Financial_Loss(in Million $)") AS "max_loss", 
    AVG("Financial_Loss(in Million $)") AS "avg_loss" 
FROM "global_cybersecurity_threats" gct;

/*Summary Statistics*/
SELECT
    COUNT(*) AS "total_incidents",
    AVG("Financial_Loss(in Million $)") AS "avg_loss",
    MAX("Financial_Loss(in Million $)") AS "max_loss",
    MIN("Financial_Loss(in Million $)") AS "min_loss",
    AVG("Incident_Resolution_Time(in Hours)") AS "avg_resolution_time"
from global_cybersecurity_threats gct ;

/*Count of Attacks by Type*/
SELECT "Attack_Type", COUNT(*) AS "attack_count"
FROM global_cybersecurity_threats gct 
GROUP BY "Attack_Type"
ORDER BY "attack_count" DESC;

/*Financial Loss by Country*/
SELECT "Country", SUM("Financial_Loss(in Million $)") AS "total_loss"
FROM global_cybersecurity_threats gct 
GROUP BY "Country"
ORDER BY "total_loss" DESC;

/*Number of Affected Users by Industry*/
SELECT "Target_Industry", SUM("Number_of_Affected_Users") AS "total_affected_users"
FROM global_cybersecurity_threats gct 
GROUP BY "Target_Industry"
ORDER BY "total_affected_users" DESC;

/*Average Incident Resolution Time by Attack Source*/
SELECT "Attack_Source", AVG("Incident_Resolution_Time(in Hours)") AS "avg_resolution_time"
FROM  global_cybersecurity_threats gct 
GROUP BY "Attack_Source"
ORDER BY "avg_resolution_time" DESC;

/*Trends Over Time (Yearly Analysis)*/
SELECT "Year", COUNT(*) AS "incidents_per_year"
FROM global_cybersecurity_threats gct 
GROUP BY "Year"
ORDER BY "Year";

/*Industry Analysis by Attack Type*/
SELECT "Target_Industry", "Attack_Type", COUNT(*) AS "attack_count"
FROM global_cybersecurity_threats gct 
GROUP BY "Target_Industry", "Attack_Type"
ORDER BY "Target_Industry", "Attack_Type";



