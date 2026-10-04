-- PHASE 12: PERSONALISATION

-- 12.1 New genre + 5 new movies
insert into genres (name) values ('Horror');

insert into movies (title, release_year, language, duration_min, description, poster_url, genre_id) values
  ('Bramayugam', 2024, 'Malayalam', 140,
   'A folk singer takes shelter in a decaying mansion in the Malabar of the 17th century and finds its master sinister.',
   'https://placehold.co/300x450/18181b/ffffff?text=Bramayugam',
   (select id from genres where name = 'Horror')),
  ('Tumbbad', 2018, 'Hindi', 104,
   'A man''s greed for the hidden treasure of a forgotten god pulls his family into a curse across generations.',
   'https://placehold.co/300x450/451a03/ffffff?text=Tumbbad',
   (select id from genres where name = 'Horror')),
  ('Ratsasan', 2018, 'Tamil', 170,
   'An aspiring filmmaker turned cop hunts a serial killer who targets schoolgirls.',
   'https://placehold.co/300x450/1f2937/ffffff?text=Ratsasan',
   (select id from genres where name = 'Thriller')),
  ('Kumbalangi Nights', 2019, 'Malayalam', 135,
   'Four estranged brothers in a Kochi fishing village learn to become a family.',
   'https://placehold.co/300x450/134e4a/ffffff?text=Kumbalangi+Nights',
   (select id from genres where name = 'Drama')),
  ('Lucifer', 2019, 'Malayalam', 174,
   'After the death of a Kerala political leader, a mysterious figure rises to shape the state''s power struggle.',
   'https://placehold.co/300x450/450a0a/ffffff?text=Lucifer',
   (select id from genres where name = 'Action'));

-- 12.2 New column: director
alter table movies add column director text;

update movies set director = 'Jeethu Joseph'        where title = 'Drishyam';
update movies set director = 'Alphonse Puthren'     where title = 'Premam';
update movies set director = 'Anjali Menon'         where title = 'Bangalore Days';
update movies set director = 'Basil Joseph'         where title = 'Minnal Murali';
update movies set director = 'Chidambaram'          where title = 'Manjummel Boys';
update movies set director = 'Lokesh Kanagaraj'     where title = 'Vikram';
update movies set director = 'C. Prem Kumar'        where title = '96';
update movies set director = 'T. J. Gnanavel'       where title = 'Jai Bhim';
update movies set director = 'Christopher Nolan'
  where title in ('Memento', 'The Dark Knight', 'Inception', 'Interstellar', 'Oppenheimer');
update movies set director = 'Rahul Sadasivan'      where title = 'Bramayugam';
update movies set director = 'Rahi Anil Barve'      where title = 'Tumbbad';
update movies set director = 'Ram Kumar'            where title = 'Ratsasan';
update movies set director = 'Madhu C. Narayanan'   where title = 'Kumbalangi Nights';
update movies set director = 'Prithviraj Sukumaran' where title = 'Lucifer';

-- check
select count(*) as total_movies from movies;   -- should be 18