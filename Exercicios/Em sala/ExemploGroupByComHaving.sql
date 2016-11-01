/*
Selecionar o código, o total de atletas, o maior salário e a média salarial
daqueles times que possuam salários maiores do que R$ 30.000
*/

SELECT
jogadores.cod_time as 'Código do time',
(select clube.nom_time from times clube where clube.cod_time = jogadores.cod_time) as 'Nome do time',
count(*) as 'Quantidade de jogadores',
max(jogadores.salario) as 'Maior salário',
avg(jogadores.salario) as 'Média salarial'
from
jogadores
group by jogadores.cod_time
having sum(jogadores.salario) > 30000

