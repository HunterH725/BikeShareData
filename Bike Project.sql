-- Select data to be visualized in Tableau

SELECT *
FROM BikeProject..Bikes

-- Shares throughout time with season
SELECT CAST(timestamp AS DATE) AS date_only, SUM(cnt) as total_count, season
FROM BikeProject..Bikes
GROUP BY CAST(timestamp AS DATE), season
ORDER BY CAST(timestamp AS DATE)

-- Max Shares vs Weather
SELECT MAX(cnt), weather_code
FROM BikeProject..Bikes
GROUP BY weather_code
ORDER BY weather_code

-- Total Shares vs Season
SELECT SUM(cnt), season
FROM BikeProject..Bikes
GROUP BY season
ORDER BY season

-- Total Shares vs Temp (F)
SELECT SUM(cnt), ((t1 * (9/5)) + 32) as temp
FROM BikeProject..Bikes
GROUP BY t1
ORDER BY t1