select
(select nom_time from times as clube where clube.cod_time = times.cod_time) as 'Nome time',
count(*) as 'Quantidade de jogadores',
min(salario) as 'Menor sal�rio',
max(salario) as 'Maior sal�rio',
avg(salario) as 'Media salarial'
from jogadores
join times on times.cod_time = jogadores.cod_time
group by times.cod_time