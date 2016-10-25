/*
1. Obter o nome dos times do estado do Rio de Janeiro ordenados por nome do time.
*/

SELECT * FROM
	TIMES 
	WHERE
		uf_time = 'RJ'
		order by
			nom_time

	