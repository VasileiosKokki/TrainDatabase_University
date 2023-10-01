SELECT stop_times.stop_headsign, stop_times.trip_id
FROM stop_times
INNER JOIN trips          
ON stop_times.trip_id = trips.trip_id                                                    --erotisi a 
WHERE (stop_times.trip_id = 'F1-20-KAUIMERINES-01' and trips.route_id='F1-20');

select stop_times.arrival_time 
FROM stop_times                                       --erotisi b 
where(stop_times.stop_time_id=020005);



SELECT routes.route_id, trips.trip_id, COUNT(stop_times.stop_id)
FROM stop_times 
JOIN trips ON stop_times.trip_id = trips.trip_id 
JOIN routes ON trips.route_id = routes.route_id           --erotisi c
GROUP BY routes.route_id, trips.trip_id;

SELECT  DISTINCT routes.route_long_name, trips.trip_headsign
FROM stop_times 
JOIN trips ON stop_times.trip_id = trips.trip_id 
JOIN routes ON trips.route_id = routes.route_id 
JOIN calendar ON trips.service_id = calendar.service_id   --erotisi d
JOIN stops ON stop_times.stop_id = stops.stop_id
WHERE stops.stop_name = 'katehaki'
AND calendar.service_id = 'kiriakes';


SELECT agency.agency_name
FROM routes
JOIN trips ON routes.route_id = trips.route_id
JOIN agency ON routes.agency_id = agency.agency_id --Erotisi E
WHERE trips.trip_short_name = 'XP'

