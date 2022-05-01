CREATE TABLE IF NOT EXISTS yellow_taxi (
	"index" BIGINT, 
	"Unnamed: 0" BIGINT, 
	pickup_datetime TEXT, 
	fare_amount FLOAT, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	passenger_count FLOAT, 
	tips FLOAT, 
	distance FLOAT, 
	hour BIGINT
);

CREATE TABLE IF NOT EXISTS uber (
	"index" BIGINT, 
	"Unnamed: 0" BIGINT, 
	"Unnamed: 0.1" BIGINT, 
	"key" TEXT, 
	fare_amount FLOAT, 
	pickup_datetime TEXT, 
	pickup_longitude FLOAT, 
	pickup_latitude FLOAT, 
	dropoff_longitude FLOAT, 
	dropoff_latitude FLOAT, 
	passenger_count BIGINT, 
	distance FLOAT, 
	day TEXT
);

CREATE TABLE IF NOT EXISTS daily_weather (
	"index" BIGINT, 
	"Unnamed: 0" BIGINT, 
	date TEXT, 
	windspeed FLOAT
);

CREATE TABLE IF NOT EXISTS hourly_weather (
	"index" BIGINT, 
	"Unnamed: 0" BIGINT, 
	"DATE" TEXT, 
	precipitation TEXT
);
