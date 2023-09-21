-- desafio 1 - Buscar o nome e ano dos filmes
SELECT Nome, Ano 
FROM Filmes

-- 2 desafio - Buscar o nome e ano dos filmes, ordenados por ordem crescente pelo ano
SELECT Nome, Ano, Duracao 
FROM Filmes 
ORDER BY Ano

-- 3 desafio - Buscar pelo filme de volta para o futuro, trazendo o nome, ano e a duração
SELECT Nome, Ano, Duracao 
FROM Filmes 
WHERE Nome = 'De Volta para o Futuro'

-- 4 desafio - Buscar os filmes lançados em 1997
SELECT * 
FROM Filmes 
WHERE Ano = 1997

-- 5 desafio - Buscar os filmes lançados APÓS o ano 2000
SELECT * 
FROM Filmes 
WHERE Ano > 2000

-- 6 desafio - Buscar os filmes com a duracao maior que 100 e menor que 150, ordenando pela duracao em ordem crescente
SELECT * 
FROM Filmes 
WHERE Duracao > 100 AND Duracao < 150 
ORDER BY Duracao

-- desafio 7 - Buscar a quantidade de filmes lançadas no ano, agrupando por ano, ordenando pela duracao em ordem decrescente
SELECT Ano, COUNT(*) Quantidade 
FROM Filmes 
GROUP BY Ano 
ORDER BY Quantidade DESC

-- desafio 8 - Buscar os Atores do gênero masculino, retornando o PrimeiroNome, UltimoNome
SELECT PrimeiroNome, UltimoNome, Genero 
FROM Atores
WHERE Genero = 'M'

-- desafio 9 - Buscar os Atores do gênero feminino, retornando o PrimeiroNome, UltimoNome, e ordenando pelo PrimeiroNome
SELECT PrimeiroNome, UltimoNome, Genero
FROM  Atores
WHERE Genero = 'F'
ORDER BY PrimeiroNome

-- desafio 10 - Buscar o nome do filme e o gênero
SELECT Nome, Genero 
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero

-- desafio 11 - Buscar o nome do filme e o gênero do tipo "Mistério"
SELECT Nome, Genero 
FROM FilmesGenero
INNER JOIN Filmes ON Filmes.Id = FilmesGenero.IdFilme
INNER JOIN Generos ON Generos.Id = FilmesGenero.IdGenero
WHERE Genero = 'Mistério'

-- desafio 12 - Buscar o nome do filme e os atores, trazendo o PrimeiroNome, UltimoNome e seu Papel
SELECT Nome, PrimeiroNome, UltimoNome, Papel
FROM ElencoFilme
INNER JOIN Atores ON Atores.Id = ElencoFilme.IdAtor
INNER JOIN Filmes ON Filmes.Id = ElencoFilme.IdFilme