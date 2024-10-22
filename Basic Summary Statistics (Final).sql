SELECT 
    COUNT(f.trip_id) AS total_trips,
    AVG(f.fare_amount) AS avg_fare_amount,
    AVG(f.tip_amount) AS avg_tip_amount,
    SUM(f.total_amount) AS total_revenue,
    MAX(t.trip_distance) AS max_trip_distance,
    MIN(t.trip_distance) AS min_trip_distance,
    MAX(f.fare_amount) AS max_fare_amount,
    MIN(f.fare_amount) AS min_fare_amount,
    COUNT(DISTINCT d.pick_day) AS total_days
FROM 
    `uber-data-project-439104.uber_data.fact_table` f
JOIN 
    `uber-data-project-439104.uber_data.trip_distance_dimension` t ON f.trip_distance_id = t.trip_distance_id
JOIN 
    `uber-data-project-439104.uber_data.datetime_dimension` d ON f.datetime_id = d.datetime_id;
