select Name 
from Tracks 
where Album_id in(
	select Album_id
	from Albums
    where Title = 'Californication'
    );
    
select count(I.InvoiceId) as total_number_of_invoices, c.FirstName, c.LastName, c.City, c.Email
	from Invoices I
		left join Customers c 
	on I.CustomerId = c.CustomerId
    
    union
    
    select count(I.InvoiceId) as total_number_of_invoices, c.FirstName, c.LastName, c.City, c.Email
	from Invoices I
		right join Customers c 
	on I.CustomerId = c.CustomerId;


select T.Name, T.AlbumId, A.ArtistId
	from Albums A
		left join Tracks T
	on A.AlbumId = T.AlbumId;
    

select e_a.LastName, e_b.LastName
	from Employees e_a
		left join Employees e_b
	on e_a.ReportsTo = e_b.EmployeeId;
    
SELECT Name,
a.ArtistId,
b.Title
FROM Artists a
LEFT JOIN Albums b
ON a.ArtistId = b.ArtistId
WHERE b.Title IS NULL;


select FirstName, LastName 
from Employees
union
select FirstName, LastName 
from Customers
order by LastName Desc;

select count(*)
from Customers c
    left join Invoices I
on c.CustomerId = I.CustomerId
where c.City != I.BillingCity;
