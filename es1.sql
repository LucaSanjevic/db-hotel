SELECT *
FROM `ospiti`
WHERE `document_type` = "CI";

SELECT `name`, `lastname`, `date_of_birth`
FROM `ospiti` 
WHERE YEAR(`date_of_birth`) >= 1988;
SELECT COUNT(`date_of_birth`)
FROM `ospiti`
WHERE YEAR(`date_of_birth`) >= 1988;

SELECT `name`, `date_of_birth`
FROM `ospiti`
WHERE YEAR(`date_of_birth`) <= (YEAR(CURRENT_DATE()) - 20);

SELECT `name`, `lastname`
FROM `ospiti`
WHERE `name` LIKE "D%";

SELECT SUM(`price`) AS "total_earnings",
FROM `pagamenti`
WHERE `status` = "accepted";

SELECT MAX(`price`)
FROM `pagamenti`;

SELECT *
FROM `ospiti`
WHERE `document_type` LIKE "Driver%"
AND YEAR(`date_of_birth`) = "1975";

SELECT *
FROM `paganti`
WHERE `ospite_id` > 0;

SELECT SUM(`beds`) 
FROM `stanze`;