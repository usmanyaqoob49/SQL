use moviesdb;
select * 
from movies
where studio ="";

select * 
from movies
where imdb_rating >= 9;

select * 
from movies
where imdb_rating >7 and imdb_rating<9;

select * 
from movies
where imdb_rating between 7 and 9;

select * 
from movies
where imdb_rating in (7,8,9);

select * 
from movies
order by imdb_rating;

select * 
from movies
order by imdb_rating desc;

select min(imdb_rating) as min_rating,
	max(imdb_rating) as max_rating,
		avg(imdb_rating) as avg_rating
from movies;

select industry, count(*) 
from movies
	group by industry;
    
select release_year, count(*) as movies_count
from movies
group by release_year
having movies_count > 2
order by movies_count;

#getting age of actor
select *,
	year(curdate()) - birth_year as actor_age
from actors; 

#currency conversion
select *,
	if(currency='USD', revenue*77, revenue) as revenue_inr
from financials;

#unit conversion
select distinct unit from financials;

select *,
	case
		when unit='Billions' then revenue*1000
        when unit='thousands' then revenue/1000
        else revenue
	end as revenue_in_million
from financials;