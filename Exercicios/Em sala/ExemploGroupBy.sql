select
(select nom_time from times as clube where clube.cod_time = times.cod_time) as 'Nome time',
count(*) as 'Quantidade de jogadores',
min(salario) as 'Menor salário',
max(salario) as 'Maior salário',
avg(salario) as 'Media salarial'
from jogadores
join times on times.cod_time = jogadores.cod_time
group by times.cod_time