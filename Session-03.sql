create database song;
use song;
create table playlist(
Id INT primary key ,
Song_name VARCHAR(50),
Artist VARCHAR(50),
Duration INT
);
Insert into playlist values(101,"Tum mile", "pritam",234 );
INSERT INTO  playlist (Id, Song_name, Artist, Duration)
values
(102,"perfect", "ed sheeran", 265),
(103,"shape of you", "ed sheeran", 300),
(104,"nahi milta", "bayaan", 190);

update playlist
set Artist="Arijit singh"
where id= 103;

select*from playlist;

delete from playlist
where Duration <200;

select* from playlist;

-- if durationcis  more then 250 
Update playlist 
set Artist= "AP Dhillon"
where Duration>250;
select* from playlist;

