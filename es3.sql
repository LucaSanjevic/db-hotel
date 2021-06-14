SELECT `ospiti`.`name`,
        `ospiti`.`lastname`,
        COUNT(`prenotazioni_has_ospiti`.`prenotazione_id`) AS `n_prenotazioni`
FROM `prenotazioni_has_ospiti`
LEFT JOIN `ospiti` 
ON `prenotazioni_has_ospiti`.`ospite_id` = `ospiti`.`id`
GROUP BY `ospiti`.`id`
HAVING `num_reserv_done` > 2;

SELECT `ospiti`.`name`,
	`ospiti`.`lastname`,
'prenotazioni'.''
FROM 'prenotazioni_has_ospiti'
LEFT JOIN `ospiti`
ON `prenotazioni_has_ospiti`.`ospite_id` = `ospiti`.`id`
LEFT JOIN `prenotazioni`
ON `prenotazioni_has_ospiti`.`prenotazione_id` = `prenotazioni`.`id`;

SELECT `paganti`.`name` AS 'Nome Pagante',
	`paganti`.`lastname` AS 'Cognome Pagante',
        YEAR(`prenotazioni`.`created_at`),
        MONTH(`prenotazioni`.`created_at`)
FROM `prenotazioni`
LEFT JOIN `prenotazioni_has_ospiti`
ON `prenotazioni_has_ospiti`.`prenotazione_id` = `prenotazioni`.`id`
LEFT JOIN `ospiti`
ON `prenotazioni_has_ospiti`.`ospite_id` = `ospiti`.`id`
LEFT JOIN `pagamenti`
ON `prenotazioni`.`id` = `pagamenti`.`prenotazione_id`
LEFT JOIN `paganti`
ON `paganti`.`id` = `pagamenti`.`pagante_id`
WHERE 'prenotazioni'.'created_at' BETWEEN "2018-05-01" AND "2018-05-31";


SELECT SUM(`pagamenti`.`price`) AS "total_price"
FROM `pagamenti`
LEFT JOIN `prenotazioni`
ON `pagamenti`.`prenotazione_id` = `prenotazioni`.`id`
LEFT JOIN `stanze`
ON `prenotazioni`.`stanza_id` = `stanze`.`id`
WHERE 'stanze'.`floor` = 1;

SELECT *
FROM `pagamenti`
LEFT JOIN `paganti`
ON `pagamenti`.`pagante_id` = `paganti`.`id`
WHERE `pagamenti`.`prenotazione_id` = 7;


SELECT *
FROM `stanze`
LEFT JOIN `prenotazioni`
ON `prenotazioni`.`stanza_id` = `stanze`.`id`
WHERE `prenotazioni`.`id` IS NULL;
