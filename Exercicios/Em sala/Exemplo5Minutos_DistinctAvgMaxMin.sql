select 
(select count(cod_jog) from jogadores) as 'Total de linhas',
(select count(distinct cod_time) from jogadores) as 'Total de times diferentes',
(select max(distinct salario) from jogadores) as 'Maior salário'