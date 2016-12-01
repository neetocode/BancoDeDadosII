select * from times
select * from jogadores
select * from historicos

select 
cod_time,
nom_time
from 
times where cod_time in (select cod_time from historicos where cod_jog = 2)

select 
cod_time,
nom_time
from
times t where exists (select cod_time from historicos where cod_jog = 2 and cod_time = t.cod_time)