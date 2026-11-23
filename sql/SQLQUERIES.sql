SELECT *
FROM airbnb_analysis
LIMIT 10;


--Query 1: Top 10 Most Expensive Airbnb Listings--

SELECT 
     name,
	 neighbourhood,
	 room_type,
	 price
FROM airbnb_analysis
WHERE price IS NOT NULL
ORDER BY price DESC
LIMIT 10;

--Purpose: To identify the 10 most expensive Airbnb properties in Amsterdam based on their listing prices--


--Query 2: Average Airbnb Price by Neighbourhood

SELECT
      neighbourhood
	  ROUND(AVG(PRICE),2) AS average_price
FROM airbnb_analysis
WHERE price IS NOT NULL
ORDER BY price DESC
LIMIT 10;

--Purpose: Find the most expensive neighbourhoods based on average listing price.


-- QUERY 3: Total Listings by Room Type
SELECT
    room_type,
    COUNT(*) AS total_listings
FROM airbnb_analysis
GROUP BY room_type
ORDER BY total_listings DESC;

--Purpose: Identify the most common accommodation types



-- QUERY 4: Average Price by Room Type
SELECT
    room_type,
    ROUND(AVG(price), 2) AS average_price
FROM airbnb_analysis
WHERE price IS NOT NULL
GROUP BY room_type
ORDER BY average_price DESC;


--Purpose: Compare average prices across room types.



-- QUERY 5: Total Listings by Neighbourhood
SELECT
    neighbourhood,
    COUNT(*) AS total_listings
FROM airbnb_analysis
GROUP BY neighbourhood
ORDER BY total_listings DESC;

--Purpose: Identify neighbourhoods with the highest number of listings.


-- QUERY 6: Total Reviews by Neighbourhood
SELECT
    neighbourhood,
    SUM(number_of_reviews) AS total_reviews
FROM airbnb_analysis
GROUP BY neighbourhood
ORDER BY total_reviews DESC;


--Purpose: Find neighbourhoods with the highest total guest reviews.


-- QUERY 7: Top 10 Hosts with the Most Listings
SELECT
    host_id,
    host_name,
    COUNT(*) AS total_listings
FROM airbnb_analysis
GROUP BY host_id, host_name
ORDER BY total_listings DESC
LIMIT 10;

--Purpose: Identify hosts managing the most properties.



-- QUERY 8: Top 10 Most Reviewed Listings
SELECT
    name,
    neighbourhood,
    number_of_reviews
FROM airbnb_analysis
ORDER BY number_of_reviews DESC
LIMIT 10;

--Purpose: Find listings with the highest guest engagement.


-- QUERY 9: Average Reviews per Listing by Neighbourhood
SELECT
    neighbourhood,
    ROUND(AVG(number_of_reviews), 2) AS average_reviews
FROM airbnb_analysis
GROUP BY neighbourhood
ORDER BY average_reviews DESC;

--Purpose: Compare average guest engagement across neighbourhoods.


-- QUERY 10: Listings by Availability
SELECT
    availability_365,
    COUNT(*) AS total_listings
FROM airbnb_analysis
GROUP BY availability_365
ORDER BY availability_365 DESC;

--Purpose: Understand the distribution of listings by available days.


-- QUERY 11: Average Availability by Room Type
SELECT
    room_type,
    ROUND(AVG(availability_365), 2) AS average_availability
FROM airbnb_analysis
GROUP BY room_type
ORDER BY average_availability DESC;

--Purpose: Compare availability across accommodation types.


-- QUERY 12: Listings with Zero Reviews
SELECT
    name,
    neighbourhood,
    room_type,
    number_of_reviews
FROM airbnb_analysis
WHERE number_of_reviews = 0
ORDER BY price DESC;

--Purpose: Identify listings that haven't received any reviews.


-- QUERY 13: Price Distribution Analysis
SELECT
    CASE
        WHEN price < 100 THEN 'Budget'
        WHEN price BETWEEN 100 AND 300 THEN 'Mid-Range'
        WHEN price BETWEEN 301 AND 600 THEN 'Premium'
        ELSE 'Luxury'
    END AS price_category,
    COUNT(*) AS total_listings
FROM airbnb_analysis
WHERE price IS NOT NULL
GROUP BY price_category
ORDER BY total_listings DESC;

--Purpose: Categorise properties into different price segments.



-- QUERY 14: Neighbourhood-wise Room Type Comparison
SELECT
    neighbourhood,
    room_type,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS average_price
FROM airbnb_analysis
WHERE price IS NOT NULL
GROUP BY neighbourhood, room_type
ORDER BY neighbourhood, total_listings DESC;

--Purpose: Compare room types and prices across neighbourhoods.


-- QUERY 15: Top 10 Hosts by Total Reviews
SELECT
    host_id,
    host_name,
    SUM(number_of_reviews) AS total_reviews,
    COUNT(*) AS total_listings
FROM airbnb_analysis
GROUP BY host_id, host_name
ORDER BY total_reviews DESC
LIMIT 10;

--Purpose: Identify hosts with the highest total reviews.


-- QUERY 16: Minimum Nights Analysis
SELECT
    CASE
        WHEN minimum_nights BETWEEN 1 AND 2 THEN '1-2 Nights'
        WHEN minimum_nights BETWEEN 3 AND 7 THEN '3-7 Nights'
        WHEN minimum_nights BETWEEN 8 AND 30 THEN '8-30 Nights'
        WHEN minimum_nights > 30 THEN 'Above 30 Nights'
    END AS stay_category,
    COUNT(*) AS total_listings,
    ROUND(AVG(price), 2) AS average_price
FROM airbnb_analysis
WHERE minimum_nights IS NOT NULL
  AND minimum_nights >= 1
GROUP BY stay_category
ORDER BY total_listings DESC;

--Purpose: Analyse minimum booking requirements and their relationship with listing prices.



-- QUERY 17: Overall Airbnb Performance Summary
SELECT
    COUNT(*) AS total_listings,
    COUNT(DISTINCT neighbourhood) AS total_neighbourhoods,
    ROUND(AVG(price), 2) AS average_price,
    ROUND(AVG(number_of_reviews), 2) AS average_reviews,
    ROUND(AVG(availability_365), 2) AS average_availability,
    ROUND(AVG(minimum_nights), 2) AS average_minimum_nights
FROM airbnb_analysis;
--Purpose: Generate an overall summary of the Airbnb dataset.
