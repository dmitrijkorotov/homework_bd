SELECT name, duration
FROM music_tracks
WHERE duration = (SELECT MAX(duration) FROM music_tracks);

SELECT name
FROM music_tracks
WHERE duration > '3 minutes 30 seconds';

SELECT name
FROM collection
WHERE release_date BETWEEN '2018-01-01' AND '2020-12-31';

SELECT name
FROM musician
WHERE POSITION (' ' IN name) = 0;

SELECT name
FROM music_tracks
WHERE name LIKE '%my%' OR name LIKE '%мой%';

SELECT genre_id, COUNT(musician_id)
FROM musiciangenre
GROUP BY genre_id;

SELECT COUNT(mt.name)
FROM music_tracks mt
JOIN albums a ON mt.albums_id = a.id
WHERE a.release_date BETWEEN '2019-01-01' AND '2020-12-31';

SELECT a.name, AVG(mt.duration)
FROM albums a
JOIN music_tracks mt ON a.id = mt.albums_id
GROUP BY a.name;

SELECT m.name
FROM musician m
WHERE NOT EXISTS (
    SELECT 1
    FROM albumsmusician a
    JOIN albums alb ON a.albums_id = alb.id
    WHERE a.musician_id = m.id
    AND EXTRACT(YEAR FROM alb.release_date) = 2020);
   
SELECT DISTINCT c.name
FROM collection c
JOIN collectiontracks c2 ON c2.collection_id = c.id
JOIN music_tracks mt  ON c2.track_id = mt.id
JOIN albums a ON mt.albums_id = a.id
JOIN albumsmusician a2 ON a.id = a2.albums_id
JOIN musician m ON a2.musician_id = m.id
WHERE m.name = 'Kraken'

SELECT a.name
FROM albums a
JOIN albumsmusician a2 ON a2.albums_id = a.id
JOIN musician m ON a2.musician_id = m.id
JOIN musiciangenre m2 ON m.id = m2.musician_id
GROUP BY a.name
HAVING COUNT(DISTINCT m2.genre_id) > 1;

SELECT mt.name
FROM music_tracks mt
LEFT JOIN collectiontracks c ON mt.id = c.track_id
WHERE c.track_id IS NULL;

SELECT m.name
FROM musician m
JOIN albumsmusician a ON m.id = a.musician_id
JOIN albums a2 ON a.albums_id = a2.id
JOIN music_tracks mt ON a2.id = mt.albums_id
WHERE mt.duration = (
	SELECT MIN(duration) FROM music_tracks)
GROUP BY m.name;