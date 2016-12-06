go
select
p.cod_pat,
a.nom_pat,
p.ano,
avg(p.valor) [media de patrocinios]
from
patrocinios p
join patrocinadores a on a.cod_pat = p.cod_pat
group by p.ano, p.cod_pat,a.nom_pat
having avg(p.valor) > (select avg(valor) from patrocinios where ano = p.ano)
order by p.ano

go


(select ano,avg(valor) from patrocinios group by patrocinios.ano)

select * from patrocinios
select * from patrocinadores
