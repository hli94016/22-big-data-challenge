use big_data;

-- Number of reviews of vine
select count(DISTINCT review_id) from vine_table v
where v.vine = 'Y';

-- Number of reviews of non-vine
select count(DISTINCT review_id) from vine_table v
where v.vine = 'N';

-- Number of 5 stars reviews of vine
select count(DISTINCT review_id) from vine_table v
where v.vine = 'Y' and v.star_rating = 5;

-- Number of 5 stars reviews of non-vine
select count(DISTINCT review_id) from vine_table v
where v.vine = 'N' and v.star_rating = 5;

-- Average Rating of vine
select avg(star_rating) from vine_table v
where v.vine = 'Y';

-- Average Rating of non-vine
select avg(star_rating) from vine_table v
where v.vine = 'N';