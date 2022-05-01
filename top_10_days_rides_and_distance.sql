
    WITH "allrides" AS (
    SELECT DATE("pickup_datetime") AS "date", "distance" FROM "yellow_taxi" WHERE DATE("pickup_datetime") < "2010-01-01"
    UNION ALL
    SELECT DATE("pickup_datetime") AS "date", "distance" FROM "uber" WHERE DATE("pickup_datetime") < "2010-01-01"
    ),
    
    "topten" AS (
    SELECT "date", count(*) AS ct FROM "allrides"
    GROUP BY "date"
    ORDER BY ct DESC
    LIMIT 10
    )
    
    SELECT topten.date, AVG(allrides.distance) FROM "topten"
    JOIN "allrides" ON topten.date = allrides.date
    GROUP BY topten.date
    ORDER BY topten.ct DESC
