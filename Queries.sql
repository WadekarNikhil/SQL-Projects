show databases;
use netflix;
show tables;
-- where clause--
select * from movies;
select * from series;
select title,release_year,cast from movies where country="india";
select title,release_year,country,rating from series where release_year<2020;
-- In , Between, Order by clause  --
select title,release_year,cast,rating,country  from movies where country IN ("india","mexico","united states") order by rating desc;
select title,release_year,country,rating from series where release_year between 2010 and 2019 order by release_year asc;

-- like , Null ,limit --
select title,release_year,cast,rating,country  from movies where rating like "Tv-14" limit 5;
select title,release_year,country,rating, director from series where director or country IS NULL limit 10;

use  students_survey;
show tables;
select * from survey;

select survey_id,full_name,student_id,university_id,academic_major,age from survey where age<30 order by age desc;
-- In , Between, Order by clause  --
select survey_id,full_name,student_id,university_id,academic_major,age,height_cm from survey where height_cm IN (164,167,185);
select survey_id,full_name,student_id,university_id,academic_major,age from survey where student_id Between 5450 and 6100 order by student_id asc;
-- like , Null ,limit --
select survey_id,full_name,student_id,university_id,academic_major,age from survey where location_type like "urban" limit 10 ;
select survey_id,full_name,student_id,university_id,academic_major,age from survey where parents_status is Null;
