
 WITH "windiest" AS (
   SELECT DATE("date") as "new_date", "windspeed" FROM "daily_weather" WHERE DATE("date") < "2015-01-01" AND DATE("date") > "2013-12-31"
   ORDER BY "windspeed" DESC
   LIMIT 10
   ),

 "allrides" AS (
    SELECT DATE("pickup_datetime") AS "date" FROM "yellow_taxi" WHERE DATE("pickup_datetime") < "2015-01-01" AND DATE("pickup_datetime") > "2013-12-31"
    UNION ALL
    SELECT DATE("pickup_datetime") AS "date" FROM "uber" WHERE DATE("pickup_datetime") < "2015-01-01" AND DATE("pickup_datetime") > "2013-12-31"
    ),
    
 "ridescount" AS (
     SELECT "date", COUNT("date") AS ct FROM "allrides"
     GROUP BY "date"
 )
 
  SELECT windiest.new_date, windiest.windspeed, ridescount.ct FROM "windiest"
     LEFT JOIN "ridescount" ON windiest.new_date = ridescount.date
     GROUP BY windiest.new_date
     ORDER BY windiest.windspeed DESC

