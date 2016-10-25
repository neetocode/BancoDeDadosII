/*
2. Encontrar todos os jogadores com menos de 36 anos. O resultado deve conter o nome do jogador e a data
   de nascimento, ordenados decrescentemente por data de nascimento. Para jogadores nascidos na mesma
   data, deve ser seguida a ordem alfabética de nomes.
*/

SELECT 
	nom_jog as Nome,
	FORMAT(dat_nasc,'dd/MM/yyyy') as 'Data de nascimento'
 FROM
	jogadores
	where 
		(SELECT Floor(DATEDIFF(DAY,dat_nasc,GETDATE())/365.25)) >= 36
		order by dat_nasc desc,nome
		
	