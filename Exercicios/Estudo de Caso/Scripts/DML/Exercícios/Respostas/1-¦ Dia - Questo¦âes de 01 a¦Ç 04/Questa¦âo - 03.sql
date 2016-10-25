/*
3. Selecionar todos os campeonatos que estavam em andamento em fevereiro de 2002. O resultado deve
conter a descrição do campeonato e a descrição do seu tipo, ou seja, as palavras: Estadual, Regional ou
Nacional. Os nomes das colunas devem ser: "Campeonato" e "Tipo". O resultado deve estar em ordem
crescente de campeonatos.
*/

/*--------------------------------------- Com uso de UNION --------------------------------------*/
/*-----------------------------------------------------------------------------------------------*/

select 
dsc_camp as Campeonato,
(
	(select 'Nacional' where tipo = 'N')
	union
	(select 'Regional' where tipo = 'R')
	union
	(select 'Estadual' where tipo = 'E')
) as Tipo

from campeonatos
where 
dat_ini > '2002-02-01' or
dat_fim < '2002-02-28'

/*--------------------------------------- Com uso de CASE ---------------------------------------*/
/*-----------------------------------------------------------------------------------------------*/

select 
dsc_camp as Campeonato,

	case
	when tipo = 'N' then 'Nacional'
	when tipo = 'R' then 'Regional'
	when tipo = 'E' then 'Estadual'
	end
 as Tipo
from campeonatos
where 
dat_ini > '2002-02-01' or
dat_fim < '2002-02-28'