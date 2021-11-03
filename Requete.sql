-- 1ère requête
SELECT Date FROM Session
WHERE FilmId = 1

-- 2ème requete
SELECT FilmTitle FROM Film
INNER JOIN Rate ON Film.FilmId = Rate.SpotCategoryId
INNER JOIN Session ON Session.SessionId = Film.FilmId
WHERE Price < 10 AND Hour > '18h00' 
Incomplete !!!!

-- 3ème requete 
SELECT Name FROM Role
WHERE ActorId = 4
ORDER BY ActorId ASC

-- 4ème requete 
SELECT Date, Hour FROM Session
Where FilmId = 7 
ORDER BY DATE DESC, Hour ASC

-- 5ème requete 
SELECT COUNT(ActorId) FROM Actor

-- 6ème requete 
SELECT FilmTitle FROM Film
INNER JOIN Session ON Film.FilmId = Session.FilmId
WHERE Session.Date = '18/04/2021'

-- 7ème requete 
SELECT FirstName, LastName FROM Producer
INNER JOIN Actor ON Producer.ProducerId = Actor.ActorId
WHERE ActorId = 1

-- 8ème requete 
SELECT ActorId, COUNT(ActorId) AS NumberOfRole FROM Role
GROUP BY ActorId
ORDER BY COUNT(ActorId) DESC 

-- 9ème requete 
En cours

-- 10ème requete 
En cours