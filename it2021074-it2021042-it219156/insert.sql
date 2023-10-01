insert into AGENCY values(1,'trainose','trainose.gr','Europe/Athens','greek','21023213');
insert into AGENCY values(2,'grtrena','grtena.gr','Europe/Athens','greek','21034134567');
insert into ROUTES values('F1-20',1,'F1','AERODROMIO-DIMOTIKOUEATRO','dromologio apo AERODROMIO pros  DIMOTIKO UEATRO','5','f1.gr','blue','black');
insert into ROUTES values('G1-25',2,'G1','ANTHOUPOLI-ELLINIKO','dromologio apo anthoupoli pros elliniko','5','g1.gr','red','black');
ALTER SESSION SET NLS_DATE_FORMAT = 'DD-MM-YY';
INSERT INTO calendar VALUES ('kauimerines', 1, 1, 1, 1, 1, 0, 0, '01-02-25' ,'05-02-25' );

INSERT INTO calendar
VALUES ('savvato', 0, 0, 0, 0, 0, 1, 0, '06-02-25','06-02-25');

INSERT INTO calendar VALUES ('kiriakes', 0, 0, 0, 0, 0, 0, 1,'07-02-25' , '07-02-25');



insert into stops VALUES(1,1,'agia paraskevi','agia paraskevi',null,null,null,'ap.gr',0,null);
insert into stops VALUES(2,2,'nomismatokopeio','stathmos nomismatokopeio',null,null,null,'nomismatokopeio.gr',0,null);
insert into stops VALUES(3,3,'xolargos','stathmos xolargos',null,null,null,'xolargos.gr',0,null);
insert into stops VALUES(4,4,'ethniki amina','stathmos ethniki amina',null,null,null,'ea.gr',0,null);
insert into stops VALUES(5,5,'katehaki','stathmos katehaki',null,null,null,'katehaki.gr',0,null);
insert into stops VALUES(6,6,'panormou','stathmos panormou',null,null,null,'panormou.gr',0,null);
insert into stops VALUES(7,7,'ampelokipoi','stathmos ampelokipoi',null,null,null,'ampelokipoi.gr',0,null);
insert into stops VALUES(8,8,'argiroupoli','stathmos argiroupoli',null,null,null,'argiroupoli.gr',0,null);
insert into stops VALUES(9,9,'alimos','stathmos alimos',null,null,null,'alimos.gr',0,null);
insert into stops VALUES(10,10,'ilioupoli','stathmos ilioupoli',null,null,null,'ilioupoli.gr',0,null);
insert into stops VALUES(11,11,'agios dimitrios','stathmos agios dimitrios',null,null,null,'ad.gr',0,null);
insert into stops VALUES(12,12,'dafni','stathmos dafni',null,null,null,'dafni.gr',0,null);
insert into stops VALUES(13,13,'agios ioannis','stathmos agios ioannis',null,null,null,'ai.gr',0,null);
insert into stops VALUES(14,14,'neos kosmos','stathmos neos kosmos',null,null,null,'nk.gr',0,null);



insert into trips values('F1-20','kauimerines','F1-20-KAUIMERINES-01','XALANDRI-PANORMOU','XP',0,1234,NULL);
insert into trips values('F1-20','savvato','F1-20-SAVVATO-01','AGIAPRASKEVI-AMPELOKIPOI','AA',0,1234,NULL);
insert into trips values('F1-20','kiriakes','F1-20-KIRIAKES-01','NOMISMATOKOPEIO-MEGAROMOUSIKIS','NM',0,1234,NULL);
insert into trips values('G1-25','kauimerines','G1-25-KAUIMERINES-01','ELLINIKO-AGIOSIOANNIS','EA',0,2222,NULL);
insert into trips values('G1-25','savvato','G1-25-SAVVATO-01','ARGIROUPOLI-NEOSKOSMOS','AN',0,2222,NULL);
insert into trips values('G1-25','kiriakes','G1-25-KIRIAKES-01','ALIMOS-SIGROUFIX','AS',0,2222,NULL);
insert into stop_times VALUES(010001,'F1-20-KAUIMERINES-01','7:05','7:06',1,1,'AGIA PARASKEVI',0,0,NULL);
insert into stop_times VALUES(010002,'F1-20-KAUIMERINES-01','7:11','7:12',2,2,'NOMISMATOKOPEIO',0,0,NULL);
insert into stop_times VALUES(010003,'F1-20-KAUIMERINES-01','7:17','7:18',3,3,'XOLARGOS',0,0,NULL);
insert into stop_times VALUES(010004,'F1-20-KAUIMERINES-01','7:23','7:24',4,4,'ETHNIKI AMINA',0,0,NULL);
insert into stop_times VALUES(010005,'F1-20-KAUIMERINES-01','7:29','7:30',5,5,'KATEHAKI',0,0,NULL);

insert into stop_times VALUES(020001,'F1-20-SAVVATO-01','7:05','7:06',2,1,'NOMISMATOKOPEIO',0,0,NULL);
insert into stop_times VALUES(020002,'F1-20-SAVVATO-01','7:11','7:12',3,2,'XOLARGOS',0,0,NULL);
insert into stop_times VALUES(020003,'F1-20-SAVVATO-01','7:17','7:18',4,3,'ETHNIKI AMINA',0,0,NULL);
insert into stop_times VALUES(020004,'F1-20-SAVVATO-01','7:23','7:24',5,4,'KATEHAKI',0,0,NULL);
insert into stop_times VALUES(020005,'F1-20-SAVVATO-01','7:29','7:30',6,5,'PANORMOU',0,0,NULL);


insert into stop_times VALUES(030001,'F1-20-KIRIAKES-01','7:05','7:06',3,1,'XOLARGOS',0,0,NULL);
insert into stop_times VALUES(030002,'F1-20-KIRIAKES-01','7:11','7:12',4,2,'ETHNIKI AMINA',0,0,NULL);
insert into stop_times VALUES(030003,'F1-20-KIRIAKES-01','7:17','7:18',5,3,'KATEHAKI',0,0,NULL);
insert into stop_times VALUES(030004,'F1-20-KIRIAKES-01','7:23','7:24',6,4,'PANORMOU',0,0,NULL);
insert into stop_times VALUES(030005,'F1-20-KIRIAKES-01','7:29','7:30',7,5,'AMPELOKIPOI',0,0,NULL);

insert into stop_times values(110001,'G1-25-KAUIMERINES-01','7:05','7:06',8,1,'argiroupoli',0,0,null);
insert into stop_times values(110002,'G1-25-KAUIMERINES-01','7:11','7:12',9,2,'alimos',0,0,null);
insert into stop_times values(110003,'G1-25-KAUIMERINES-01','7:17','7:18',10,3,'ilioupoli',0,0,null);
insert into stop_times values(110004,'G1-25-KAUIMERINES-01','7:23','7:24',11,4,'agios dimitrios',0,0,null);
insert into stop_times values(110005,'G1-25-KAUIMERINES-01','7:29','7:30',12,5,'dafni',0,0,null);


insert into stop_times values(120001,'G1-25-SAVVATO-01','7:05','7:06',9,1,'alimos',0,0,null);
insert into stop_times values(120002,'G1-25-SAVVATO-01','7:11','7:12',10,2,'ilioupoli',0,0,null);
insert into stop_times values(120003,'G1-25-SAVVATO-01','7:17','7:18',11,3,'agios dimitrios',0,0,null);
insert into stop_times values(120004,'G1-25-SAVVATO-01','7:23','7:24',12,4,'dafni',0,0,null);
insert into stop_times values(120005,'G1-25-SAVVATO-01','7:29','7:30',13,5,'agios ioannis',0,0,null);


insert into stop_times values(130001,'G1-25-KIRIAKES-01','7:05','7:06',10,1,'ilioupoli',0,0,null);
insert into stop_times values(130002,'G1-25-KIRIAKES-01','7:11','7:12',11,2,'agios dimitrios',0,0,null);
insert into stop_times values(130003,'G1-25-KIRIAKES-01','7:17','7:18',12,3,'dafni',0,0,null);
insert into stop_times values(130004,'G1-25-KIRIAKES-01','7:23','7:24',13,4,'agios ioannis',0,0,null);
insert into stop_times values(130005,'G1-25-KIRIAKES-01','7:29','7:30',14,5,'neos kosmos',0,0,null);