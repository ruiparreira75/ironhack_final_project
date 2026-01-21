USE steamspy;

CREATE TABLE steamspy_clean (
    appid INT PRIMARY KEY,
    name VARCHAR(255),
    genre VARCHAR(255),
    publisher VARCHAR(255),
    price DECIMAL(10,2),
    owners INT,
    ccu INT,
    release_year INT
);


LOAD DATA LOCAL INFILE 'C:/ProgramData/MySQL/MySQL Server 8.4/Uploads/steamspy_clean.csv'
INTO TABLE steamspy_clean
FIELDS TERMINATED BY ','
ENCLOSED BY '"'
LINES TERMINATED BY '\r\n'
IGNORE 1 ROWS;

-- engagement ratio kpi -- 
SELECT name, ROUND(ccu / owners, 3) AS engagement_ratio
FROM steamspy_clean
ORDER BY engagement_ratio DESC
LIMIT 10;

-- estimated revenue -- 
SELECT name, ROUND(price * owners, 2) AS estimated_revenue
FROM steamspy_clean
ORDER BY estimated_revenue DESC
LIMIT 10;


-- Review quality -- 
SELECT name, review_ratio, total_reviews
FROM steamspy_clean
WHERE total_reviews > 1000
ORDER BY review_ratio DESC
LIMIT 10;

-- publisher rankings -- 
SELECT publisher, COUNT(*) AS game_count, SUM(owners) AS total_owners
FROM steamspy_clean
GROUP BY publisher
ORDER BY total_owners DESC
LIMIT 10;


-- Average Lifetime Playtime Ranking -- 
SELECT 
    name,
    avg_playtime_hr
FROM steamspy_clean
ORDER BY avg_playtime_hr DESC
LIMIT 20;

-- recent engagment -- 
SELECT 
    name,
    avg_2weeks_hr
FROM steamspy_clean
ORDER BY avg_2weeks_hr DESC
LIMIT 20;


-- discount impact: shows the games that benefit
SELECT 
    name,
    discount,
    owners,
    ROUND(discount * owners, 2) AS discount_impact
FROM steamspy_clean
ORDER BY discount_impact DESC
LIMIT 20;




