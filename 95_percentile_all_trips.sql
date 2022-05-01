
    WITH "dists" AS (SELECT "distance" FROM "yellow_taxi" WHERE "pickup_datetime">"2012-12-31 23:59:59" AND "pickup_datetime"<"2014-01-01 00:00:00"
    UNION ALL
    SELECT "distance" FROM "uber" WHERE "pickup_datetime">"2012-12-31 23:59:59" AND "pickup_datetime"<"2014-01-01 00:00:00")
    
    SELECT * FROM "dists"
    ORDER BY "distance" ASC
    LIMIT 1
    OFFSET (SELECT
         COUNT(*)
        FROM "dists") * 95 / 100 - 1;
