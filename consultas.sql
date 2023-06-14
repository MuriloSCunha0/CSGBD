
--CONSULTA 1 - Consulta com a junção da tabela orgao_partidario com a tabela delegado_partidario, juntando pela sigla do partido
--a tabela delegado_partidario esta no schema delegados e a orgao_partidario no schema orgaos
--A consulta retorna o nome do partido, o nome do delegado e o nome do orgao partidario
--A consulta possui um filtro de match exato, que é o nome do partido
--A consulta possui um agrupamento, que é o nome do partido
--A consulta possui uma função de agregação, que é o count
--A consulta possui uma ordenação, que é o nome do partido

SELECT o.NM_PARTIDO, d.NM_DELEGADO
FROM orgaos.orgao_partidario_pt o
INNER JOIN delegados.delegado_partidario_pt d
ON o.SG_PARTIDO = d.SG_PARTIDO
WHERE o.NM_PARTIDO = 'PARTIDO DOS TRABALHADORES'
GROUP BY o.NM_PARTIDO,d.NM_DELEGADO 
ORDER BY o.NM_PARTIDO;

--CONSULTA 2 - Consulta com a junção da tabela orgao_partidario com a tabela delegado_partidario, juntando pela sigla do partido
--a tabela delegado_partidario esta no schema delegados e a orgao_partidario no schema orgaos
--A consulta retorna o nome do partido, o nome do delegado e o nome do orgao partidario
--A consulta possui um filtro de match exato, que é o nome do partido
--A consulta possui um agrupamento, que é o nome do partido
--A consulta possui uma função de agregação, que é o count
--A consulta possui uma ordenação, que é o nome do partido

SELECT o.NM_PARTIDO, d.NM_DELEGADO
FROM orgaos.orgao_partidario_pt o
INNER JOIN delegados.delegado_partidario_pt d
ON o.SG_PARTIDO = d.SG_PARTIDO
WHERE o.NM_PARTIDO = 'UNIDADE POPULAR'
GROUP BY o.NM_PARTIDO,d.NM_DELEGADO
ORDER BY o.NM_PARTIDO;

--CONSULTA 3 - Consulta com a junção da tabela orgao_partidario com a tabela delegado_partidario, juntando pela sigla do partido exibindo a dt_inicio_vigencia e dt_fim_vigencia
--a tabela delegado_partidario esta no schema delegados e a orgao_partidario no schema orgaos
--A consulta retorna o nome do partido, o nome do delegado e o nome do orgao partidario
--A consulta possui um filtro de match exato, que é o nome do partido
--A consulta possui um agrupamento, que é o nome do partido
--A consulta possui uma função de agregação, que é o count
--A consulta possui uma ordenação, que é o nome do partido

SELECT o.NM_PARTIDO, d.NM_DELEGADO, o.DT_INICIO_VIGENCIA, o.DT_FIM_VIGENCIA
FROM orgaos.orgao_partidario_pt o
INNER JOIN delegados.delegado_partidario_pt d
ON o.SG_PARTIDO = d.SG_PARTIDO
WHERE o.SG_PARTIDO = 'PT'
GROUP BY o.NM_PARTIDO,d.NM_DELEGADO, o.DT_INICIO_VIGENCIA, o.DT_FIM_VIGENCIA
ORDER BY o.NM_PARTIDO;

--CONSULTA 4 - Consulta com a junção da tabela orgao_partidario com a tabela delegado_partidario, juntando pela sigla do partido exibindo o nome do delegado e o nome do membro
--a tabela delegado_partidario esta no schema delegados e a orgao_partidario no schema orgaos
--A consulta retorna o nome do partido, o nome do delegado e o nome do orgao partidario
--A consulta possui um filtro de match exato, que é o nome do partido
--A consulta possui um agrupamento, que é o nome do partido
--A consulta possui uma função de agregação, que é o count
--A consulta possui uma ordenação, que é o nome do partido

SELECT o.NM_PARTIDO, d.NM_DELEGADO, o.NM_MEMBRO
FROM orgaos.orgao_partidario_pt o
INNER JOIN delegados.delegado_partidario_pt d
ON o.SG_PARTIDO = d.SG_PARTIDO
WHERE o.SG_PARTIDO = 'PT'
GROUP BY o.NM_PARTIDO,d.NM_DELEGADO, o.NM_MEMBRO
ORDER BY o.NM_PARTIDO;

--CONSULTA 5 - Consulta com a junção da tabela orgao_partidario com a tabela delegado_partidario, juntando pela sigla do partido exibindo o nome do delegado e o municipio
--a tabela delegado_partidario esta no schema delegados e a orgao_partidario no schema orgaos
--A consulta retorna o nome do partido, o nome do delegado e o nome do orgao partidario
--A consulta possui um filtro de match exato, que é o nome do partido
--A consulta possui um agrupamento, que é o nome do partido
--A consulta possui uma função de agregação, que é o count
--A consulta possui uma ordenação, que é o nome do partido
--fazer o join da tabela orgao_partidario com a delegado_partidario no campo sg_partido

SELECT o.NM_PARTIDO, d.NM_DELEGADO, o.NM_MUNICIPIO
FROM orgaos.orgao_partidario_pt o
INNER JOIN delegados.delegado_partidario_pt d
ON o.SG_PARTIDO = d.SG_PARTIDO
WHERE o.SG_PARTIDO = 'PT'
GROUP BY o.NM_PARTIDO,d.NM_DELEGADO, o.NM_MUNICIPIO
ORDER BY o.NM_PARTIDO;

--CONSULTA 6 - Consulta com a junção da tabela delegado_partidario com a tabela perfil_filiado, juntando pela sigla do partido e exibindo a quantidade de filiados por partido
--a tabela delegado_partidario esta no schema delegados e a perfil_filiado no schema perfil
--A consulta retorna o nome do partido, o nome do delegado e o nome do orgao partidario
--A consulta possui um filtro de match exato, que é o nome do partido
--A consulta possui um agrupamento, que é o nome do partido
--A consulta possui uma função de agregação, que é o count
--A consulta possui uma ordenação, que é o nome do partido

--qtde de filiados por partido é uma coluna da tabela perfil_filiado (qt_filiados)

SELECT d.SG_PARTIDO, d.NM_DELEGADO, p.qt_filiados
FROM delegados.delegado_partidario_pt d
INNER JOIN perfil.perfil_filiado p
ON d.SG_PARTIDO = p.SG_PARTIDO
WHERE d.SG_PARTIDO = 'PT'
GROUP BY d.SG_PARTIDO, d.NM_DELEGADO, p.qt_filiados
ORDER BY d.SG_PARTIDO;

--CONSULTA 7 - Consulta com a junção da tabela delegado_partidario com a tabela perfil_filiado, juntando pela sigla do partido e exibindo municipio do filiado

SELECT d.SG_PARTIDO, d.NM_DELEGADO, p.NM_MUNICIPIO
FROM delegados.delegado_partidario_pt d
INNER JOIN perfil.perfil_filiado p
ON d.SG_PARTIDO = p.SG_PARTIDO
WHERE d.SG_PARTIDO = 'PT'
GROUP BY d.SG_PARTIDO, d.NM_DELEGADO, p.NM_MUNICIP
ORDER BY d.SG_PARTIDO;

--CONSULTA 8 - Consulta com a junção da tabela delegado_partidario com a tabela perfil_filiado, juntando pela sigla do partido e exibindo a ocupacao(cd_ocupacao) do filiado

SELECT d.SG_PARTIDO, d.NM_DELEGADO, p.CD_OCUPACAO
FROM delegados.delegado_partidario_pt d
INNER JOIN perfil.perfil_filiado p
ON d.SG_PARTIDO = p.SG_PARTIDO
WHERE d.SG_PARTIDO = 'PT'
GROUP BY d.SG_PARTIDO, d.NM_DELEGADO, p.CD_OCUPACAO
ORDER BY d.SG_PARTIDO;

--CONSULTA 9 - Consulta com a junção da tabela delegado_partidario com a tabela perfil_filiado, juntando pela sigla do partido e exibindo o cd_estado_civil do filiado

SELECT d.SG_PARTIDO, d.NM_DELEGADO, p.CD_ESTADO_CIVIL
FROM delegados.delegado_partidario_pt d
INNER JOIN perfil.perfil_filiado p
ON d.SG_PARTIDO = p.SG_PARTIDO
WHERE d.SG_PARTIDO = 'PT'
GROUP BY d.SG_PARTIDO, d.NM_DELEGADO, p.CD_ESTADO_CIVIL
ORDER BY d.SG_PARTIDO;

--CONSULTA 10 - Consulta com a junção da tabela delegado_partidario com a tabela perfil_filiado, juntando pela sigla do partido e exibindo o cd_genero do filiado

SELECT d.SG_PARTIDO, d.NM_DELEGADO, p.CD_GENERO
FROM delegados.delegado_partidario_pt d
INNER JOIN perfil.perfil_filiado p
ON d.SG_PARTIDO = p.SG_PARTIDO
WHERE d.SG_PARTIDO = 'PT'
GROUP BY d.SG_PARTIDO, d.NM_DELEGADO, p.CD_GENERO
ORDER BY d.SG_PARTIDO;

--Agora vamos criar índices que ajudarão a melhorar o desempenho das consultas

--Criação de índice na tabela orgao_partidario_pt no campo sg_partido

CREATE INDEX idx_sg_partido ON orgaos.orgao_partidario_pt (sg_partido);

--Criação de índice na tabela delegado_partidario_pt no campo sg_partido

CREATE INDEX idx_sg_partido ON delegados.delegado_partidario_pt (sg_partido);

--Criação de índice na tabela perfil_filiado no campo sg_partido

CREATE INDEX idx_sg_partido ON perfil.perfil_filiado (sg_partido);

--Criação de índice na tabela delegado_partidario_pt no campo nm_partido

CREATE INDEX idx_nm_partido ON delegados.delegado_partidario_pt (nm_partido);

