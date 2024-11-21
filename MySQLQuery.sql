-- 1
SELECT Filmes.Nome, Filmes.Ano FROM Filmes

-- 2
SELECT 
	Filmes.Nome, 
	Filmes.Ano,
	Filmes.Duracao
FROM 
	Filmes
ORDER BY
	Ano

-- 3
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM
	Filmes F
WHERE 
	Nome = 'De Volta Para o Futuro'


	-- 4
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM
	Filmes F
WHERE
	Ano = 1997


	-- 5
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM
	Filmes F
WHERE
	Ano >= 2000



	-- 6
SELECT
	F.Nome,
	F.Ano,
	F.Duracao
FROM
	Filmes F
WHERE
	Duracao > 100 AND
	Duracao < 150
ORDER BY
	Duracao 


 --7
SELECT
	Filmes.Ano,
	COUNT(*) Quantidade
FROM 
	Filmes
GROUP BY
	Ano
ORDER BY
	Quantidade DESC



 --8
SELECT
 Atores.PrimeiroNome,
 Atores.UltimoNome,
 Atores.Genero
FROM
	Atores
WHERE
 Genero = 'M'



  --9
SELECT
 Atores.PrimeiroNome,
 Atores.UltimoNome,
 Atores.Genero
FROM
	Atores
WHERE
 Genero = 'F'
ORDER BY
	PrimeiroNome


 --10
SELECT
    F.Nome,
    G.Genero
FROM
    Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id;



 --11

SELECT
    F.Nome,
    G.Genero
FROM
    Filmes F
INNER JOIN FilmesGenero FG ON F.Id = FG.IdFilme
INNER JOIN Generos G ON FG.IdGenero = G.Id
WHERE
	Genero = 'Mistério'



 --12
SELECT
    F.Nome,
	A.PrimeiroNome,
	A.UltimoNome,
	E.Papel
FROM
    Filmes F
INNER JOIN Atores A ON F.Id = A.Id
INNER JOIN ElencoFilme E ON A.Id = E.Id