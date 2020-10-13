use sakila;

-- Get film ratings.

select rating from film;

-- Get release years.
select release_year from film;


-- Get all films with ARMAGEDDON in the title.
select * from film where title like '%ARMAGEDDON%';


-- Get all films with APOLLO in the title
select * from film where title like '%APOLLO%';

-- Get all films which title ends with APOLLO
select * from film where title like '%APOLLO';

-- Get all films with word DATE in the title.
select title from film where title regexp ' DATE|DATE ';

-- Get 10 films with the longest title.
select title from film order by length(title) desc limit 10;

-- Get 10 the longest films.
select * from film order by length desc limit 10;

-- How many films include Behind the Scenes content?
select count(*)  as 'films include Behind the Scenes' from film where special_features like '%Behind%';

-- List films ordered by release year and title in alphabetical order.
select * from film order by release_year, title;


