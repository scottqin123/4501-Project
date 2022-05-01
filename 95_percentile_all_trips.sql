
WITH "dists" AS (SELECT "distance" FROM "yellow_taxi" WHERE DATE("pickup_datetime")>"2013-06-30" AND DATE("pickup_datetime")<"2013-08-01"
    UNION ALL
    SELECT "distance" FROM "uber" WHERE DATE("pickup_datetime")>"2013-06-30" AND DATE("pickup_datetime")<"2013-08-01")
    
    SELECT * FROM "dists"
    ORDER BY "distance" ASC
    LIMIT 1
    OFFSET (SELECT
         COUNT(*)
        FROM "dists") * 95 / 100 - 1;
