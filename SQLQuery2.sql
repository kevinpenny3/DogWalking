--CREATE TABLE Neighborhood (
--	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--	[Name] VARCHAR(55) NOT NULL,
--);

--CREATE TABLE [Owner] (
--	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--	[Name] VARCHAR(55) NOT NULL,
--	[Address] VARCHAR(255) NOT NULL,
--	NeighborhoodId INTEGER NOT NULL,
--	Phone VARCHAR(255) NOT NULL,
--	CONSTRAINT FK_Owner_Neighborhood FOREIGN KEY(NeighborhoodId) REFERENCES Neighborhood(Id),
--);

--CREATE TABLE Walker (
--	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--	[Name] VARCHAR(55) NOT NULL,
--	NeighborhoodId INTEGER NOT NULL,
--	CONSTRAINT FK_Walker_Neighborhood FOREIGN KEY(NeighborhoodId) REFERENCES Neighborhood(Id),
--);

--CREATE TABLE Dog (
--	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--	[Name] VARCHAR(55) NOT NULL,
--	OwnerId INTEGER NOT NULL,
--	Breed VARCHAR(55) NOT NULL,
--	Notes VARCHAR(255) NOT NULL,
--	CONSTRAINT FK_Dog_Owner FOREIGN KEY(OwnerId) REFERENCES [Owner](Id),
--);

--CREATE TABLE Walks (
--	Id INTEGER NOT NULL PRIMARY KEY IDENTITY,
--	[Date] DATETIME NOT NULL,
--	Duration INTEGER NOT NULL,
--	WalkerId INTEGER NOT NULL,
--	DogId INTEGER NOT NULL,
--	CONSTRAINT FK_Dog_Id FOREIGN KEY(DogId) REFERENCES Dog(Id),
--	CONSTRAINT FK_Walker_Id FOREIGN KEY(WalkerId) REFERENCES Walker(Id),
--);

INSERT INTO Neighborhood ([Name]) VALUES ('Nashville');
INSERT INTO Neighborhood ([Name]) VALUES ('Franklin');
INSERT INTO Neighborhood ([Name]) VALUES ('Brentwood');

INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Kevin', 1);
INSERT INTO Walker([Name], NeighborhoodId) VALUES ('Jansen', 2);

INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Adam', '456 First Ave, Nashville', 1,'281-330-8004');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Mo', '076 Lane, Brentwood', 2,'281-330-8004');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Steve', '123 Street, Nashville', 3,'281-330-8004');
INSERT INTO [Owner] ([Name], [Address], NeighborhoodId, Phone) VALUES ('Garrett', '456 Ave, Franklin', 3,'281-330-8004');

INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Buddy', 1, 'Husky','Very Happy Lazy Dog');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Luna', 2, 'Husky','Very Happy Hyper Dog');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Apollo', 2, 'Labradoodle','IDK never met him');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Hazel', 3, 'American BullDog','Very Happy Lazy Dog');
INSERT INTO Dog ([Name], OwnerId, Breed, Notes) VALUES ('Lucy', 4, 'Boston Terrier','Very Happy Lazy Dog');

INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('01/01/2020', 30, 1,1);
INSERT INTO Walks ([Date], Duration, WalkerId, DogId) VALUES ('01/02/2020', 40, 1,1);

