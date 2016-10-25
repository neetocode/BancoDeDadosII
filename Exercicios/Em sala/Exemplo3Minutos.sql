select 
jogadores.cod_jog as codigo,
jogadores.nom_jog as nome,
jogadores.salario as salario
 from jogadores
join times on times.cod_time = jogadores.cod_time
where times.cod_time = 1
and salario > 30000