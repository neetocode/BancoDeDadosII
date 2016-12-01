select * from times
select * from jogadores


select
jog.cod_jog,
tim.nom_time,
jog.nom_jog,
jog.salario
from jogadores jog
join times tim on tim.cod_time = jog.cod_time
where /*cod_jog = (select cod_jog from jogadores where*/ salario = (select max(salario) from jogadores where cod_time = tim.cod_time)/*)*/
order by tim.nom_time, jog.nom_jog