use spotify;
show tables;
select * from tracks;

-- clauses--
select * from tracks where popularity >55 order by popularity asc;
select track_id,title,release_year,popularity,duration from tracks where duration like 278;
select track_id,concat(title,"-",release_year) as "Name"from tracks; 

select track_id,title,release_year,popularity,duration from tracks group by release_year order by release_year ;
select * from tracks 
having popularity = 63 ;
