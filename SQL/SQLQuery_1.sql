CREATE TABLE Locations (
    id INT PRIMARY KEY,
    city VARCHAR(100),
    pincode VARCHAR(10)
);

INSERT INTO Locations (id, city, pincode) VALUES
(1, 'Mumbai', '400001'),
(2, 'Delhi', '110001'),
(3, 'Bengaluru', '560001'),
(4, 'Hyderabad', '500001'),
(5, 'Ahmedabad', '380001'),
(6, 'Chennai', '600001'),
(7, 'Kolkata', '700001'),
(8, 'Pune', '411001'),
(9, 'Jaipur', '302001'),
(10, 'Lucknow', '226001'),
(11, 'Indore', '452001'),
(12, 'Bhopal', '462001'),
(13, 'Nagpur', '440001'),
(14, 'Patna', '800001'),
(15, 'Chandigarh', '160001'),
(16, 'Guwahati', '781001'),
(17, 'Kochi', '682001'),
(18, 'Visakhapatnam', '530001'),
(19, 'Surat', '395001'),
(20, 'Kanpur', '208001');


select * from Locations

select * from Locations where id > 3;

--Order by is used for ascending and descending
select * from Locations ORDER By city DESC;
select * from Locations ORDER By id DESC;

--Like is used to find patterns end with, start with, in between
select * from Locations WHERE pincode like '%001'
select * from Locations WHERE city like 'M%'
select * from Locations WHERE city like '%u%'

--Not like is used to get data that dosnt match a particular criteria
select * from Locations WHERE city not like '%u%'

--to find city name that contains 'b' as 4 alphabet
select * from Locations WHERE city like '___b%'

--to find city names that start with A,B,C,D
select * from Locations WHERE city like '[a-d]%'

--to find city names that start with A,C,E
select * from Locations WHERE city like '[a,c,e]%'
select * from Locations WHERE city like '[ace]%'

--Between is used to get data between a range
select * from Locations WHERE id BETWEEN 1 and 5

--Not Between is used to get data that doesnt fall into a particular range
select * from Locations WHERE id NOT BETWEEN 1 and 5

-- ways to get the exact data
select * from Locations WHERE city = 'Pune'
select * from Locations WHERE city in ('Delhi')

--To get city id and name
select * from Locations WHERE city = 'Pune' and id = 8

-- Sub query - query inside a query
select * from Locations where
id > (select avg(id) from Locations)

-- To find average 
select avg(id) from Locations