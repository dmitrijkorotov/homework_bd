INSERT INTO musician (name)
VALUES ('Kraken'),
       ('Ivan Petrov'),
       ('Fedor Ivanoiv'),
       ('Kukuruznik60'),
       ('Machine');

INSERT INTO genre (name)
VALUES ('Rock'),
       ('Rap'),
       ('Pop'),
       ('Folk');
      
INSERT INTO albums (name, release_date)
VALUES ('My life', '2018-02-02'),
       ('My car', '2019-03-05'),
       ('Cat', '2020-05-05'),
       ('Dog', '2018-06-08'),
       ('Green', '2017-06-08');
      
INSERT INTO music_tracks (albums_id, name, duration)
VALUES (3, 'Cat and your friend', '3 minutes 10 seconds'),
       (1, 'BlaBla', '2 minutes 5 seconds'),
       (4, 'GavGav', '1 minutes 50 seconds'),
       (2, 'BIBIKA', '5 minutes 41 seconds'),
       (2, 'Pink Car', '2 minutes 15 seconds'),
       (5, 'VI', '4 minutes 4 seconds'),
       (5, 'Robot', '3 minutes 5 seconds');
      
INSERT INTO music_tracks (albums_id, name, duration)
VALUES (2, 'Дом мой дом', '4 minutes 23 seconds'),
       (5, 'Dog my friend', '3 minutes 45 seconds');
      
INSERT INTO collection (name, release_date)
VALUES ('Animals', '2020-09-09'),
       ('Machines', '2019-05-09'),
       ('Kukaracha', '2018-06-08'),
       ('Sun', '2019-05-06');
      
INSERT INTO musiciangenre (musician_id, genre_id)
VALUES (1, 1),
       (2, 4),
       (3, 4),
       (4, 2),
       (5, 3);
      
INSERT INTO musiciangenre (musician_id, genre_id)
VALUES (1, 2),
       (2, 3),
       (5, 2);
      
INSERT INTO albumsmusician (albums_id, musician_id)
VALUES (1, 2),
       (1, 4),
       (2, 3),
       (3, 5),
       (4, 3),
       (5, 1),
       (3, 1);

INSERT INTO collectiontracks (collection_id, track_id)
VALUES (1, 1),
       (1, 3),
       (2, 5),
       (2, 6),
       (2, 7),
       (3, 2),
       (3, 4),
       (4, 4),
       (4, 1),
       (4, 2),
       (4, 3);



      

       