/*
Listar o código, o ano do patrocínio e o total investido daqueles patrocinadores
que investiram mais de que R$ 6.000.000,00 em um mesmo ano a partir de 2001
*/

SELECT
patrocinios.cod_pat as 'Código do patrocinador',
sum(patrocinios.valor) as 'Total investido',
patrocinios.ano as 'Ano'
from
patrocinios
group by patrocinios.cod_pat,patrocinios.ano
having (max(patrocinios.valor) > 6000000 and (patrocinios.ano >= 2001))