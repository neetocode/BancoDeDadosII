/*
Selecionar o c�digo, o total de atletas, o maior sal�rio e a m�dia salarial
daqueles times que possuam sal�rios maiores do que R$ 30.000
*/

SELECT
jogadores.cod_time as 'C�digo do time',
(select clube.nom_time from times clube where clube.cod_time = jogadores.cod_time) as 'Nome do time',
count(*) as 'Quantidade de jogadores',
max(jogadores.salario) as 'Maior sal�rio',
avg(jogadores.salario) as 'M�dia salarial'
from
jogadores
group by jogadores.cod_time
having sum(jogadores.salario) > 30000

