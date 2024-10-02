-- 1
SELECT Nome, Ano FROM Filmes

-- 2
SELECT * FROM Filmes ORDER BY Ano

-- 3
SELECT * FROM Filmes WHERE Id = 28

-- 4
SELECT * FROM Filmes WHERE Ano = 1997

-- 5
SELECT * FROM Filmes WHERE Ano > 2000

-- 6
SELECT * FROM Filmes WHERE Duracao > 100 AND Duracao < 150 ORDER BY Duracao

-- 7
SELECT Ano, COUNT(Ano) Quatidade, SUM(Duracao) AS TotalDuracao FROM Filmes GROUP BY Ano ORDER BY TotalDuracao DESC

-- 8
SELECT * FROM Atores WHERE Genero = 'M'

-- 9
SELECT * FROM Atores WHERE Genero = 'F' ORDER BY PrimeiroNome

-- 10
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero FC
INNER JOIN Generos ON FC.IdGenero = Generos.Id
INNER JOIN Filmes ON FC.IdFilme = Filmes.id

-- 11
SELECT Filmes.Nome, Generos.Genero FROM FilmesGenero FC
INNER JOIN Generos ON FC.IdGenero = Generos.Id
INNER JOIN Filmes ON FC.IdFilme = Filmes.id
WHERE Genero = 'Mistério'

-- 12
SELECT Filmes.Nome, Atores.PrimeiroNome, Atores.UltimoNome, Papel FROM ElencoFilme EF
INNER JOIN Atores ON EF.IdAtor = Atores.Id
INNER JOIN Filmes ON EF.IdFilme = Filmes.id


