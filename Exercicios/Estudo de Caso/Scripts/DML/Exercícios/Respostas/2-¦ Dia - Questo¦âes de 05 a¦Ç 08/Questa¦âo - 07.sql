/*
7. Listar o nome e o ano do campeonato, o nome do time e a classifica��o
   dos tr�s primeiros colocados de campeonatos regionais j� finalizados.
   Para isso, considere que os campeonatos est�o finalizados quando a
   data de t�rmino � menor que a data atual e todos os jogos j� possuem
   resultados. O resultado deve ser ordenado por nome do campeonato 
   e classifica��o.
*/
  
select
campeonato.dsc_camp as Nome,
campeonato.ano as Ano
from campeonatos as campeonato
where campeonato.tipo = 'R' and datediff(day,campeonato.dat_fim,getdate()) >= 0


select * from jogos
select * from campeonatos
select * from participacoes