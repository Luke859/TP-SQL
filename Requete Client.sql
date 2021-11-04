-- 1ère requête
SELECT Date FROM Session
INNER JOIN Film ON Session.FilmId = Film.FilmId
INNER JOIN Role ON Film.FilmId = Role.FilmId
INNER JOIN Actor ON Role.ActorId = Actor.ActorId
WHERE Actor.ActorId = 1
;

-- 2ème requete
SELECT FilmTitle FROM Film
INNER JOIN Rate ON Film.FilmId = Rate.SpotCategoryId
INNER JOIN Session ON Session.SessionId = Film.FilmId
WHERE Price < 10 AND Hour > '18h00' 
Incomplete !!!!
;

-- 3ème requete 
SELECT RoleName FROM Role
WHERE ActorId = 4
ORDER BY ActorId ASC
;

-- 4ème requete 
SELECT Date, Hour FROM Session
Where FilmId = 7 
ORDER BY DATE DESC, Hour ASC
;

-- 5ème requete 
SELECT COUNT(ActorId) AS NumberOfActors FROM Actor
;

-- 6ème requete 
SELECT FilmTitle FROM Film
INNER JOIN Session ON Film.FilmId = Session.FilmId
WHERE Session.Date = '18/04/2021'
;

-- 7ème requete 
SELECT FirstName, LastName FROM Producer
INNER JOIN Film ON Producer.ProducerId = Film.ProducerId
INNER JOIN Role ON Film.FilmId = Role.FilmId
INNER JOIN Actor ON Role.ActorId = Actor.ActorId
WHERE Actor.ActorId = 2
GROUP BY Producer.ProducerId
;

-- 8ème requete 
SELECT ActorId, COUNT(ActorId) AS NumberOfRole FROM Role
GROUP BY ActorId
ORDER BY COUNT(ActorId) DESC 
;

-- 9ème requete 
CREATE VIEW ActorView AS
SELECT Actor.ActorId, Actor.ActorFirstName ||' '|| Actor.ActorLastName AS Actors ,COUNT(SessionId) AS NumberOfSessions FROM Session
INNER JOIN Film ON Session.FilmId = Film.FilmId
INNER JOIN Role ON Film.FilmId = Role.FilmId
INNER JOIN Actor ON Role.ActorId = Actor.ActorId
GROUP BY Actor.ActorId
;

SELECT * FROM ActorView
;
-- 10ème requete 
CREATE TRIGGER reserve INSERT ON SpotCategory
FOR EACH ROW 
WHEN (new.SpotId = 1)
BEGIN 
	UPDATE SpotCategory
	SET SpotType = "special"
	WHERE SpotCategoryId = 1;
END;

SELECT Spot.SpotId, SpotType FROM SpotCategory
INNER JOIN Spot ON SpotCategory.SpotCategoryId = Spot.SpotCategoryId
INNER JOIN Reservation ON Spot.SpotId = Reservation.SpotId
WHERE Spot.SpotId = 1