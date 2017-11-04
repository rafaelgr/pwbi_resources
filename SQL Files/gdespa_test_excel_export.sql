# Export short pw
SELECT
pwId, `name` AS  pwName, CONCAT('SGT#', reference) AS reference, DATE_FORMAT(initDate,'%Y-%m-%d') AS pwDate,
statusId, initInCharge AS workerId, zoneId
FROM pw;

# Export staus
SELECT 
statusId, `name` AS statusName
FROM STATUS;

# Workers only persons
SELECT
workerId, COALESCE(`code`, 0) AS workerCode, `name` AS workerName
FROM worker WHERE resTypeId = 0;

#Zones
SELECT
zoneId, `name` AS zoneName
FROM zone;