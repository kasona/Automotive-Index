-- ============= Setting Up! =================
-- 1. Create user named indexed_cars_user
-- CREATE USER indexed_cars_user;

-- 2. Create a new database named indexed_cars owned by indexed_cars_user
-- CREATE DATABASE indexed_cars OWNER indexed_cars_user;

-- 3. Run the provided scripts/car_models.sql script on the indexed_cars database
-- \i scripts/car_models.sql

-- 4. Run the provided scripts/car_model_data.sql script on indexed_cars db 10 times
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql

-- ======= Timing Select Statements =========
--  Run \timing

-- 1. Run a query to get a list of all make_title values from the car_models table where the make_code is 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)
-- Time: 35.048 ms
-- SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

-- 2. Run a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows, and note the time somewhere. (should have 1 result)
-- Time: 29.947 ms
-- SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

-- 3. Run a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM', and note the time somewhere. (should have 1360 rows)
-- Time: 34.120 ms
-- SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

-- 4. Run a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
-- Time: 91.698 ms
-- SELECT  * FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- 5. Run a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
-- Time: 45.274 ms
-- SELECT * FROM car_models WHERE year =  2010;

-- =============== Indexing ===================
-- 1. Create a query to get a list of all make_title values from the car_models table where the make_code is 'LAM', without any duplicate rows, and note the time somewhere. (should have 1 result)
-- Time: 3967.023 ms
-- CREATE INDEX make_title_idx ON car_models ( make_title );

-- Time: 30.267
-- SELECT DISTINCT make_title FROM car_models WHERE make_code = 'LAM';

-- 2. Create a query to list all model_title values where the make_code is 'NISSAN', and the model_code is 'GT-R' without any duplicate rows, and note the time somewhere. (should have 1 result)
-- Time: 30.005 ms
-- SELECT DISTINCT model_title FROM car_models WHERE make_code = 'NISSAN' AND model_code = 'GT-R';

-- 3. Create a query to list all make_code, model_code, model_title, and year from car_models where the make_code is 'LAM', and note the time somewhere. (should have 1360 rows)
-- Time: 4031.701 ms
-- CREATE INDEX model_title_idx ON car_models ( model_title );
-- CREATE INDEX make_code_idx ON car_models ( make_code );
-- Time: 3941.701 ms
-- CREATE INDEX model_code_idx ON car_models ( model_code );
-- Time: 2.202 ms
-- SELECT make_code, model_code, model_title, year FROM car_models WHERE make_code = 'LAM';

-- 4. Create a query to list all fields from all car_models in years between 2010 and 2015, and note the time somewhere (should have 78840 rows)
-- Time: 217.492 ms
-- CREATE INDEX year_idx ON car_models ( year );
-- Time: 76.028 ms
-- SELECT  * FROM car_models WHERE year BETWEEN 2010 AND 2015;

-- 5. Create a query to list all fields from all car_models in the year of 2010, and note the time somewhere (should have 13140 rows)
-- Time: 19.289 ms
-- SELECT * FROM car_models WHERE year =  2010;

-- =============== Indexing on table create ================
-- 1. Add your recorded indexing statements to the scripts/car_models.sql
-- Aready done in each step

-- 2. Delete the car_models table
-- Time: 11.685 ms
-- DROP TABLE car_models;

-- 3. Run the provided scripts/car_models.sql script on the indexed_cars database
-- Time: 7.313 ms
-- \i scripts/car_models.sql

-- 4. Run the provided scripts/car_model_data.sql script on indexed_cars db 10 times
-- INSERT 0 22338
-- Time: 412.906 ms
-- INSERT 0 22338
-- Time: 398.658 ms
-- INSERT 0 22338
-- Time: 441.039 ms
-- INSERT 0 22338
-- Time: 387.417 ms
-- INSERT 0 22338
-- Time: 411.268 ms
-- INSERT 0 22338
-- Time: 400.044 ms
-- INSERT 0 22338
-- Time: 399.037 ms
-- INSERT 0 22338
-- Time: 401.344 ms
-- INSERT 0 22338
-- Time: 405.888 ms
-- INSERT 0 22338
-- Time: 460.200 ms
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql
-- \i scripts/car_model_data.sql

-- SELECT * FROM car_models;
-- Time: 161.553 ms