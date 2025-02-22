--1
SELECT Nome, Ano FROM Filmes

--2 
SELECT Nome, Ano FROM Filmes ORDER BY Ano

--3
SELECT Nome, Ano, Duracao FROM Filmes WHERE Nome = 'De Volta para o Futuro'

--4
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano = 1997

--5
SELECT Nome, Ano, Duracao FROM Filmes WHERE Ano>2000

--6
SELECT Nome, Ano, Duracao FROM Filmes WHERE Duracao>100 AND Duracao<150 ORDER BY Duracao

--7
SELECT Ano, COUNT(*) AS Quantidade
FROM Filmes
GROUP BY Ano
ORDER BY Quantidade DESC;

--8
SELECT Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero FROM Atores WHERE Atores.Genero = 'M'

--9
SELECT Atores.Id, Atores.PrimeiroNome, Atores.UltimoNome, Atores.Genero FROM Atores WHERE Atores.Genero = 'F' ORDER BY Atores.PrimeiroNome

--10
SELECT Filmes.Nome, Generos.Genero
FROM Filmes
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id;

--11
SELECT Filmes.Nome, Generos.Genero
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
WHERE Generos.Genero = 'Mistério';

--12
SELECT Filmes.Nome, Generos.Genero, Atores.PrimeiroNome, Atores.UltimoNome, ElencoFilme.Papel
FROM Filmes 
INNER JOIN FilmesGenero ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON FilmesGenero.IdGenero = Generos.Id
INNER JOIN ElencoFilme ON Filmes.Id = ElencoFilme.IdFilme
INNER JOIN Atores ON ElencoFilme.IdAtor = Atores.Id

