select
sum(patrocinios.valor) as 'Valor',
patrocinios.ano as 'Ano do investimento'
from
patrocinios
join patrocinadores on patrocinadores.cod_pat = patrocinadores.cod_pat
where patrocinios.ano >= 2000
group by patrocinios.ano


select * from patrocinios