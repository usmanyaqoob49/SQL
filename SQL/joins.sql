use moviesdb;

#will give rows common in both tables
select 
	m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m
	inner join financials f
on m.movie_id = f.movie_id;

#as sholay and inception were not included with above query means that movies had its name but in right table we wont have its values
#so for that we can use left joins--> it will include left records and common records
select 
	m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m
	left join financials f
on m.movie_id = f.movie_id;

#in right join you will get common enteries and enteries of right table
select 
	m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m
	right join financials f
on m.movie_id = f.movie_id;


#full outer join give everything--> common, left, right
#but we dont have full outer key word
#so we will perform union in between left and right join queries
#columns in both must be same
select 
	m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m
	left join financials f
on m.movie_id = f.movie_id

union

select 
	m.movie_id, m.title, f.budget, f.revenue, f.currency, f.unit
from movies m
	right join financials f
on m.movie_id = f.movie_id;

