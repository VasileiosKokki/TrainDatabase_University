
create table agency (
 agency_id number(10),
 agency_name varchar2(40),
 agency_url varchar2(50) ,
 agency_timezone varchar2(50),
 agency_lang varchar2(50),
 agency_phone varchar2(50),                    --dimiourgia pinaka agency me primary key to agency_id


constraint pk_agency primary key(agency_id)



);

create table Routes(
route_id varchar2(50),
agency_id number(10),
route_short_name varchar2(50),
route_long_name varchar2(50),
route_desc varchar2(50),
route_type varchar2(50),
route_url varchar2(50),
route_color varchar2(50),
route_text_color varchar2(50),

constraint pk_routes primary key(route_id),
constraint fk_routes_agency foreign key (agency_id) references Agency(agency_id)    --dimiourgia pinaka routes me foreign key to agency_id apo to agency kai primary key to route_id



);

create table calendar(
service_id varchar2(50),
monday number(10),
tuesday number(10),                    -- oi metavlites ton imerominion einai number dioti ekfrazete me 0 i 1 an iparxei dromologio kai to service id einai varchar kai me vasi to protipo tou oasa                        
wednesday number(10),            --episis to primary key einai to service id 
thursday number(10),
friday number(10),
saturday number(10),
sunday number(10),
start_date date,
end_date date,

constraint pk_calendar primary key(service_id)


);


create table Trips(
route_id varchar2(50),
service_id varchar2(50),
trip_id varchar2(50),
trip_headsign varchar2(50),
trip_short_name varchar2(50),                    --to primary key einai to trip id kai ta foreign keys einai to route_id kai to service_id
direction_id number(10),
block_id number(10),
shape_id number(10),
constraint pk_Trips primary key(trip_id),
CONSTRAINT fk_trips_routes FOREIGN KEY(route_id) REFERENCES routes(route_id),
CONSTRAINT fk_trips_calendar FOREIGN KEY(service_id) REFERENCES calendar(service_id)




);
create table Stops(
stop_id number(10),
stop_code number(10),
stop_name varchar2(50),
stop_desc varchar2(50),
stop_lat number(20),
stop_lon number(20),
zone_id number(10),
stop_url varchar2(50),
location_type varchar2(50),
parent_station  number(10),
constraint pk_stops primary key(stop_id),
CONSTRAINT fk_parent_station_stopid FOREIGN KEY(parent_station) REFERENCES Stops(stop_id) -- to primary key einai to stop_id kai to parent station einai forreign key pou dixnei sto stop_id 






);

create table stop_times(
stop_time_id number(10),
trip_id varchar2(50),
arrival_time varchar2(50),
departure_time varchar2(50),
stop_id number(10),
stop_sequence number(10),
stop_headsign varchar2(50),
pickup_type number(10),
drop_off_typpe number(10),
shape_dst_travelled number(10),
constraint pk_stop_times primary key(stop_time_id),
CONSTRAINT fk_stop_times_stops FOREIGN KEY(stop_id) REFERENCES Stops(stop_id),
CONSTRAINT fk_stop_times_trips FOREIGN KEY(trip_id) references Trips(trip_id) -- to primary key einai to stop_time_id kai ta foreign keys einai to stop_id kai to trip_id








);

