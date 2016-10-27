/*
4. Listar todos os patrocinadores do Flamengo do Rio de Janeiro no ano de 2002. No resultado deve estar
presente o nome do patrocinador, seu pa�s de origem, o valor do patroc�nio no ano e uma proje��o do
valor do patroc�nio acrescido de 20%. Esta �ltima coluna deve ser chamada de "Proje��o Futura".
*/

select
patrocinadores.nom_pat as Patrocinador,
patrocinadores.pais as Pais,
patrocinios.valor as Valor,
((patrocinios.valor)+patrocinios.valor*0.2) as 'Proje��o Futura'
from patrocinios
join patrocinadores on patrocinadores.cod_pat = patrocinios.cod_pat
where cod_time = 1