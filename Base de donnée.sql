CREATE TABLE Producer
	(
	ProducerId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	FirstName VARCHAR(80) NOT NULL,
	LastName VARCHAR(80) NOT NULL,
	Country VARCHAR(80) NOT NULL

	)
	
CREATE TABLE Film
(
	FilmId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	ProducerId INTEGER NOT NULL,
	FilmTitle VARCHAR(80) NOT NULL,
	ReleaseDate DATE NOT NULL,
	FilmTime DATE NOT NULL,
	GENRE VARCHAR(80) NOT NULL,
	CONSTRAINT fk_Producer_ProducerId FOREIGN KEY (ProducerId) REFERENCES Producer(ProducerId)
)

CREATE TABLE Actor 
(
	ActorId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	FirstName VARCHAR(80) NOT NULL,
	LastName VARCHAR(80) NOT NULL,
	Country VARCHAR(80) NOT NULL,
	BirthDay DATE NOT NULL

)

CREATE TABLE Role
(
	ActorId INTEGER NOT NULL,
	FilmId INTEGER NOT NULL,
	Name VARCHAR(80)  NOT NULL,
	CONSTRAINT fk_Film_FilmId FOREIGN KEY (FilmId) REFERENCES Film(FilmId),
	CONSTRAINT fk_Actor_ActorId FOREIGN KEY (ActorId) REFERENCES Actor(ActorId)
);
 
CREATE TABLE Session
(
	SessionId INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL,
	FilmId INTEGER NOT NULL,
	Date DATE NOT NULL,
	Hour DATE NOT NULL,
	CONSTRAINT fk_Film_FilmId FOREIGN KEY (FilmId) REFERENCES Film(FilmId)

);

CREATE TABLE Reservation
(
	SpotId INTEGER NOT NULL,
	SessionId INTEGER NOT NULL,
	SpectatorName DATE NOT NULL,
	CONSTRAINT fk_Session_SessionId FOREIGN KEY (SessionId) REFERENCES Session(SessionId),
	CONSTRAINT fk_Spot_SpotId FOREIGN KEY (SpotId) REFERENCES Spot(SpotId)

);

CREATE TABLE SessionCategory
(
	SessionCategoryId INTEGER PRIMARY KEY NOT NULL,
	SessionId INTEGER NOT NULL,
	SessionType VARCHAR(80) NOT NULL,
	CONSTRAINT fk_Session_SessionId FOREIGN KEY (SessionId) REFERENCES Session(SessionId)

);

CREATE TABLE Rate
(
	SpotCategoryId INTEGER NOT NULL,
	SessionCategoryId INTEGER NOT NULL,
	Price FLOAT NOT NULL,
	CONSTRAINT fk_SessionCategory_SessionCategoryId FOREIGN KEY (SessionCategoryId) REFERENCES Session(SessionCategoryId),
	CONSTRAINT fk_SpotCategory_SpotCategoryId FOREIGN KEY (SpotCategoryId) REFERENCES Session(SpotCategoryId)

);

CREATE TABLE SpotCategory
(
	SpotCategoryId INTEGER NOT NULL,
	SpotType VARCHAR(80) NOT NULL
);

CREATE TABLE Spot
(
	SpotId INTEGER PRIMARY KEY NOT NULL,
	SpotCategoryId INTEGER NOT NULL,
	CONSTRAINT fk_SpotCategory_SpotCategoryId FOREIGN KEY (SpotCategoryId) REFERENCES SpotCategory(SpotCategoryId)

);

INSERT INTO Producer(FirstName, LastName, Country)
VALUES ('Steven', 'Spielberg', 'USA'),
('Quentin', 'Tarantino', 'USA'),
('Frank', 'Marshall', 'USA'),
('Clint', 'Eastwood', 'USA'),
('Kevin', 'Feige', 'USA')

INSERT INTO Film(ProducerId, FilmTitle, ReleaseDate, FilmTime, Genre)
VALUES ('1','The Goonies','1985','1h54','Enfant/Aventure'),
('1','Jurassic Park','1993','2h08','Aventure/SF'),
('2','Pulp Fiction','1994','2h34','Crime/Drame'),
('2','Django Unchained','2012','2h45','Western/Western spaghetti'),
('3','War Horse','2011','2h26','Guerre/Drame'),
('3','Congo','1995','1h49','Aventure/Action'),
('4','American Sniper','2014','2h12','Guerre/Drame'),
('4','Gran Torino','2008','1h56','Drame/Thriller'),
('5','Iron Man','2008','2h06','Action/Aventure'),
('5','Captain America: First Avenger','2011','2h04','Action/Aventure')

INSERT INTO Actor(FirstName, LastName, Birthday, Country)
VALUES ('Sean','Astin','25/02/1971','USA'),
('Sam','Neill','14/09/1947','UK'),
('John','Travolta','18/02/1954','USA'),
('Jamie','Fox','13/12/1967','USA'),
('Tom','Hiddleston','09/02/1981','UK'),
('Dylan','Walsh','17/11/1963','USA'),
('Bradley','Cooper','05/01/1975','USA'),
('Clint','Eastwood','31/05/1930','USA'),
('Robert','Downey Jr.','04/04/1965','USA'),
('Chris','Evans','13/06/1981','USA')

INSERT INTO Role(ActorId, FilmId, Name)
VALUES ('1', '1', 'Mikey'),
('2', '2', 'Alan Grant'),
('3', '3', 'Vincent Vega'),
('4', '4', 'Django'),
('5', '5', 'Captain James Nicholls'),
('6', '6', 'Dr.Peter Elliot'),
('7', '7', 'Chris Kyle'),
('8', '8', 'Walt Kowalski'),
('9', '9', 'Tony Stark'),
('10', '10', 'Steve Rogers')

INSERT INTO Session(FilmId, Date, Hour)
VALUES ('1','17/04/2021','17h45'),
('1','18/04/2021','21h15'),
('2','18/04/2021','17h45'),
('2','19/04/2021','21h15'),
('3','19/04/2021','17h45'),
('3','20/04/2021','21h15'),
('4','20/04/2021','17h45'),
('4','21/04/2021','21h15'),
('5','21/04/2021','17h45'),
('5','22/04/2021','21h15'),
('6','22/04/2021','17h45'),
('6','23/04/2021','21h15'),
('7','23/04/2021','17h45'),
('7','24/04/2021','21h15'),
('8','24/04/2021','17h45'),
('8','25/04/2021','21h15'),
('9','25/04/2021','17h45'),
('9','26/04/2021','21h15'),
('10','26/04/2021','17h45'),
('10','27/04/2021','21h15')


INSERT INTO SessionCategory(SessionId, SessionType)
VALUES ('1', '3D'),
('2','VO'),
('3','3D'),
('4','VOST'),
('5', 'VO'),
('6','VOST'),
('7','VF'),
('8', '3D'),
('9', 'VO'),
('10','VF'),
('11', '3D'),
('12','VO'),
('13','3D'),
('14','VOST'),
('15', 'VO'),
('16','VOST'),
('17','VF'),
('18', '3D'),
('19', 'VO'),
('20','VF')

INSERT INTO Reservation(SpotId, SessionId, SpectatorName)
VALUES ('1', '1','Lucie Chen'),
('1','1','Arnold Bricard'),
('2','2','Didier Pascal'),
('2','2','René Jaune'),
('3','3','Rogé Dubrac'),
('3','3','Brian John'),
('4','4','Jean Lasalle'),
('4','4','Florian Power'),
('5','5','Gabriel Ciaramella'),
('5','5','Gary Duvernay'),
('6','6','Pauline Loirat'),
('6','6','Alyssa Potet'),
('7','7','Yanis Rayolles'),
('7','7','Ibrahima Sissako'),
('8','8','Alexandre Bertaud'),
('8','8','Nathan Pintaud'),
('9','9','Roberto Garcia'),
('9','9','Pablo Escobar'),
('10','10','Steve Connor'),
('10','10','Olivier Djebari'),
('11','11','Illian Holland'),
('11','11','Rose Sanchez'),
('12','12','Marie Amieux'),
('12','12','Jade Leroux'),
('13','13','Leonie Herpe'),
('13','13','Christine Trevillard'),
('14','14','John Lerat'),
('14','14','Nina Logodin'),
('15','15','Sarah Bertaud'),
('15','15','Camille Lelouche'),
('16','16','Louna Kerherve'),
('16','16','Emma Landreau'),
('17','17','Lucas Guillemot'),
('17','17','Anne Dupuis'),
('18','18','Lea Legeay'),
('18','18','Thomas Montaig'),
('19','19','Maelann Vallé'),
('19','19','Nathan Robin'),
('20','20','Pierric Pinault'),
('20','20','Sylvain Duriff')

INSERT INTO Rate(SpotCategoryId, SessionCategoryId, Price)
VALUES ('1','1', '10.50'),
('2','2','8.90'),
('3','3','10.50'),
('4','4','8.90'),
('5','5', '8.90'),
('6','6','8.90'),
('7','7','8.90'),
('8','8', '10.50'),
('9','9', '8.90'),
('10','10','8.90'),
('11','11', '10.50'),
('12','12','8.90'),
('13','13','10.50'),
('14','14','8.90'),
('15','15', '8.90'),
('16','16','8.90'),
('17','17','8.90'),
('18','18', '10.50'),
('19','19', '8.90'),
('20','20','8.90')

INSERT INTO Spot(SpotId, SpotCategoryId)
VALUES ('1', '1'),
('2', '2'),
('3', '3'),
('4','4'),
('5','5'),
('6','6'),
('7', '7'),
('8', '8'),
('9', '9'),
('10', '10'),
('11', '11'),
('12', '12'),
('13', '13'),
('14', '14'),
('15', '15'),
('16', '16'),
('17', '17'),
('18', '18'),
('19', '19'),
('20', '20'),
('21', '21'),
('22', '22'),
('23', '23'),
('24', '24'),
('25', '25'),
('26', '26'),
('27', '27'),
('28', '28'),
('29', '29'),
('30', '30'),
('31', '31'),
('32', '32'),
('33', '33'),
('34', '34'),
('35', '35'),
('36', '36'),
('37', '37'),
('38', '38'),
('39', '39'),
('40', '40'),
('41', '41'),
('42', '42'),
('43', '43'),
('44', '44'),
('45', '45'),
('46', '46'),
('47', '47'),
('48', '48'),
('49', '49'),
('50', '50')

INSERT INTO SpotCategory(SpotCategoryId, SpotType)
VALUES ('1', 'Available'),
('2', 'Unavailable'),
('3', 'Unavailable'),
('4', 'Unavailable'),
('5', 'Available'),
('6', 'Unavailable'),
('7', 'Unavailable'),
('8', 'Unavailable'),
('9', 'Unavailable'),
('10', 'Unavailable'),
('11', 'Unavailable'),
('12', 'Unavailable'),
('13', 'Unavailable'),
('14', 'Available'),
('15', 'Unavailable'),
('16', 'Unavailable'),
('17', 'Unavailable'),
('18', 'Unavailable'),
('19', 'Unavailable'),
('20', 'Unavailable'),
('21', 'Unavailable'),
('22', 'Available'),
('23', 'Unavailable'),
('24', 'Unavailable'),
('25', 'Unavailable'),
('26', 'Unavailable'),
('27', 'Unavailable'),
('28', 'Unavailable'),
('29', 'Available'),
('30', 'Unavailable'),
('31', 'Unavailable'),
('32', 'Unavailable'),
('33', 'Available'),
('34', 'Unavailable'),
('35', 'Unavailable'),
('36', 'Unavailable'),
('37', 'Unavailable'),
('38', 'Unavailable'),
('39', 'Unavailable'),
('40', 'Unavailable'),
('41', 'Unavailable'),
('42', 'Unavailable'),
('43', 'Unavailable'),
('44', 'Unavailable'),
('45', 'Unavailable'),
('46', 'Available'),
('47', 'Available'),
('48', 'Available'),
('49', 'Available'),
('50', 'Unavailable')
