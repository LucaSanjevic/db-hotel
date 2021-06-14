SELECT COUNT(`id`) AS "ospiti_totali", YEAR(`date_of_birth`)  AS 'year'
FROM `ospiti`
GROUP BY 'year';

SELECT `status`, SUM(`price`)
FROM `pagamenti`
GROUP BY `status`;

SELECT `stanza_id`, COUNT(`id`) as 'pren_totali'
FROM `prenotazioni`
GROUP BY `stanza_id`
ORDER BY 'pren_totali' DESC;

SELECT `created_at`, HOUR(`created_at`) as 'ora', 
COUNT(`id`) as "num_reservations_per_hour"
FROM `prenotazioni`
GROUP BY 'ora'
ORDER BY 'prenotazioni' DESC;

SELECT `ospite_id`, COUNT(*) as 'prenotazioni'
FROM `prenotazioni_has_ospiti`
GROUP BY `ospite_id`
ORDER BY 'prenotazioni' DESC;