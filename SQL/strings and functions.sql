use moviesdb;
show tables;
select * from movies;

#concatenation of stings
select title,
industry,
concat(title,"{", industry,"}")
from movies;

#Trimming strings
#simple trim will remove space before and after string
select Trim("	You are best	")
as fulltrimmedstring,
#ltrim removes from left
ltrim("   You are best	") 
as lefttimmedsting,
#rtrim removes from right
rtrim("   You are best	")
as righttrimmedstring;


#Sustring: Return a particular part of string
#use: substr(string_name, string_position, number_of_characters_to_retrun)
#string position is index to start with
#in sql we start with 1
select title,
substr(title, 2, 3)
from movies;

#Changing String case
select title,
upper(title) as uppercase,
lower(title) as lowercase,
#same as uppercase
ucase(title) as ucased
from movies;

