/*
4. Listar todos os patrocinadores do Flamengo do Rio de Janeiro no ano de 2002. No resultado deve estar
presente o nome do patrocinador, seu país de origem, o valor do patrocínio no ano e uma projeção do
valor do patrocínio acrescido de 20%. Esta última coluna deve ser chamada de "Projeção Futura".
*/

select
patrocinadores.nom_pat as Patrocinador,
patrocinadores.pais as Pais,
patrocinios.valor as Valor,
((patrocinios.valor)+patrocinios.valor*0.2) as 'Projeção Futura'
from patrocinios
join patrocinadores on patrocinadores.cod_pat = patrocinios.cod_pat
where cod_time = 1