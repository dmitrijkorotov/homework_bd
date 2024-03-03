CREATE TABLE Musician (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL
);

CREATE TABLE Genre (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) UNIQUE NOT NULL
);

CREATE TABLE MusicianGenre (
	musician_id INTEGER NOT NULL REFERENCES Musician(id),
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	CONSTRAINT mg PRIMARY KEY (musician_id, genre_id)
);

CREATE TABLE Albums (
	id SERIAL PRIMARY KEY,
	name VARCHAR(50) NOT NULL,
	release_date DATE CHECK (release_date > '1960-01-01') NOT NULL
);

CREATE TABLE AlbumsMusician (
	albums_id INTEGER NOT NULL REFERENCES Albums(id),
	musician_id INTEGER NOT NULL REFERENCES Musician(id),
	CONSTRAINT am PRIMARY KEY (albums_id, musician_id)
);

CREATE TABLE Music_tracks (
	id SERIAL PRIMARY KEY,
	albums_id INTEGER NOT NULL REFERENCES Albums(id),
	name VARCHAR(60) NOT NULL,
	duration INTERVAL MINUTE TO SECOND CHECK (duration < '59 minutes 59 seconds') NOT NULL
);

CREATE TABLE Collection (
	id SERIAL PRIMARY KEY,
	name VARCHAR(40) NOT NULL,
	release_date DATE NOT NULL
);

CREATE TABLE CollectionTracks (
	collection_id INTEGER NOT NULL REFERENCES Collection(id),
	track_id INTEGER NOT NULL REFERENCES Music_tracks(id),
	CONSTRAINT ct PRIMARY KEY (collection_id, track_id)
);