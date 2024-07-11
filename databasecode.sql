create database blood_donation;
use  blood_donation;
create table hospital(hid int,hname varchar(30),city varchar(30),street varchar(30),state varchar(30),
                     primary key (hid));

INSERT INTO HOSPITAL VALUES(1,'HIRANANDANI','THANE','ESTATE','MAHARASHTRA');
INSERT INTO HOSPITAL VALUES(2,'JUPITER','THANE','LBS','MAHARASHTRA');
INSERT INTO HOSPITAL VALUES(3,'LOVELY','mumbai','RGL','MAHARASHTRA');
insert into hospital values(4,'GMCH','Jalore','Ring_road','Rajasthan');
insert into hospital values(5,'SMS','Jaipur','Moti_road','Rajasthan');
insert into hospital values(6,'GOVT_hospital','Jaipur','Rambagh_street','Rajasthan');
insert into hospital values(7,'AIIMS_Jodhpur','Jodhpur','Pal_road','Rajasthan');
select *from hospital;
create table blood_bank(hid int,bid int,capacity int,primary key(hid,bid));
insert into blood_bank values(1,1,100);
insert into blood_bank values(2,2,120);
insert into blood_bank values(3,3,125);
insert into blood_bank values(4,4,110);
insert into blood_bank values(5,5,115);
insert into blood_bank values(6,6,120);
insert into blood_bank values(7,7,120);
-- ------------------------------------------------------------- --
create table hospital_contact(contact numeric, address varchar(50), hid int,
                              primary key(hid,contact),
                              foreign key (hid) references
							  hospital(hid));
						
                        
insert into hospital_contact values(4924114141,'01_ESTATE_THANE',1);
insert into hospital_contact values(4254114141,'21_LBS_THANE',2);
insert into hospital_contact values(9824114141,'12_RGL_MUMBAI',3);
insert into hospital_contact values(7384114141,'1_RINGROAD_JALORE_RJ',4);
insert into hospital_contact values(1924114141,'11_MOTIROAD_JAIPUR',5);
insert into hospital_contact values(9824114741,'112_RAMBAGH_PALACE_JAIPUR',6);
insert into hospital_contact values(9924114141,'1_PALROAD_JODHPUR',7);

                        
                        
                        
	drop table donor;						
create table donor(did int,name_ varchar(30),location varchar(30),
				  blood_group varchar(5),last_donate date,
                  hid int,bid int, age int, check(age>=18),diseased bool ,check (diseased=FALSE or diseased=0), mobile_no numeric(10),
                  primary key(did,hid,bid),
                  foreign key(hid,bid) references blood_bank(hid,bid));
INSERT INTO donor VALUES (1, 'HERAMB', 'THANE', 'AB+', '2023-03-27', 1, 1,20,FALSE,423456789);
INSERT INTO DONOR values(2,'PRANAV','THANE','B+','2022-02-24',1,1,22,FALSE,3434567890);
INSERT INTO DONOR values(3,'SIDDH','THANE','A-','2022-02-24',1,1,21,FALSE,2534567890);
INSERT INTO DONOR values(4,'SHIRISH','THANE','AB+','2020-02-24',1,1,23,FALSE,3434567890);
INSERT INTO DONOR values(5,'HARSH','THANE','O-','2018-02-24',2,2,43,FALSE,5634567890);
INSERT INTO DONOR values(6,'PARTH','THANE','O+','2017-01-30',2,2,40,FALSE,9434567890);
INSERT INTO DONOR values(7,'RONIT','THANE','AB-','2019-06-05',2,2,54,FALSE,1334567890);
INSERT INTO DONOR values(8,'BHUSHAN','THANE','B-','2011-06-05',2,2,45,FALSE,9234567890);
INSERT INTO donor VALUES (11, 'Abhishek', 'Jaipur', 'A+', '2023-10-15', 7, 7, 20, 0, 1234567890);
INSERT INTO donor VALUES (12, 'Priya_Sharma', 'Mumbai', 'B-', '2023-11-20', 4, 4, 30, 0, 9876543210);
INSERT INTO donor VALUES (13, 'Ramesh_Patel', 'Jodhpur', 'O+', '2023-09-05', 7, 7, 34, 0, 8765432109);
INSERT INTO donor VALUES (14, 'Sunita_Singh', 'Jalore', 'AB+', '2023-12-18', 5, 5, 24, 0, 7654321098);
INSERT INTO donor VALUES (15, 'Amit_Gupta', 'Jaipur', 'A-', '2023-08-30', 7, 7, 43, 0, 6543210987);
INSERT INTO donor VALUES (16, 'Anjali_Devi', 'Mumbai', 'B+', '2023-10-25', 7, 7, 21, 0, 5432109876);
INSERT INTO donor VALUES (17, 'Sandeep_Mishra', 'Jodhpur', 'O-', '2023-11-12', 4, 4, 55, 0, 4321098765);
INSERT INTO donor VALUES (18, 'Muskan_Tiwari', 'Mumbai', 'AB-', '2023-09-28', 4, 4, 23, 0, 3210987654);
INSERT INTO donor VALUES (19, 'Rajesh_Kumar', 'Jaipur', 'A+', '2023-11-05', 5, 5, 29, 0, 2109876543);
INSERT INTO donor VALUES (20, 'Meera_Singh', 'Jalore', 'B-', '2023-10-10', 5, 5, 41, 0, 1098765432);
INSERT INTO donor VALUES (21, 'Arun_Sharma', 'Mumbai', 'O+', '2023-12-22', 6, 6, 62, 0, 987654321);
INSERT INTO donor VALUES (22, 'Kavita_Reddy', 'Jodhpur', 'AB+', '2023-09-15', 6, 6, 36, 0, 9876543210);
INSERT INTO donor VALUES (23, 'Sanjay_Kumar', 'Jaipur', 'A-', '2023-11-18', 6, 6, 27, 0, 8765432109);
INSERT INTO donor VALUES (24, 'Pooja_Patel', 'Mumbai', 'B+', '2023-10-05', 5, 5, 71, 0, 7654321098);
INSERT INTO donor VALUES (25, 'Durgesh_Mishra', 'Jodhpur', 'O-', '2023-08-20', 6, 6, 18, 0, 6543210987);
INSERT INTO donor VALUES (26, 'Anita_Verma', 'Jaipur', 'AB-', '2023-12-28', 4, 4, 19, 0, 5432109876);
INSERT INTO donor VALUES (27, 'Raj_Kumar', 'Mumbai', 'A+', '2023-09-02', 5, 5, 18, 0, 4321098765);
INSERT INTO donor VALUES (28, 'Radha_Gupta', 'Jodhpur', 'B-', '2023-10-30', 7, 7, 29, 0, 3210987654);
INSERT INTO donor VALUES (29, 'Suresh_Yadav', 'Jaipur', 'O+', '2023-11-15', 5, 5, 31, 0, 2109876543);
INSERT INTO donor VALUES (30, 'Kiran_Singh', 'Mumbai', 'AB+', '2023-09-08', 6, 6, 19, 0, 1098765432);
INSERT INTO donor VALUES (31, 'Kp_Singh', 'Mumbai', 'AB+', '2023-09-08', 5, 5, 19, 0, 1098765432);




		select *from donor;
	
create table blood_count(blood_group varchar(5),quantity int,
						hid int,bid int, expiry date,
                        primary key(hid,bid,blood_group),
                        foreign key (hid,bid) references blood_bank(hid,bid));
                  drop table blood_count;      
insert into blood_count values('AB+',0,1,1);
insert into blood_count values('AB-',0,1,1);
insert into blood_count values('B+',0,1,1);
insert into blood_count values('B-',0,1,1);
insert into blood_count values('A+',0,1,1);
insert into blood_count values('A-',0,1,1);
insert into blood_count values('O+',0,1,1);
insert into blood_count values('O-',0,1,1);

insert into blood_count values('AB+',0,2,2);
insert into blood_count values('AB-',0,2,2);
insert into blood_count values('B+',0,2,2);
insert into blood_count values('B-',0,2,2);
insert into blood_count values('A+',0,2,2);
insert into blood_count values('A-',0,2,2);
insert into blood_count values('O+',0,2,2);
insert into blood_count values('O-',0,2,2);


insert into blood_count values('AB+',0,4,4);
insert into blood_count values('AB-',0,4,4);
insert into blood_count values('B+',0,4,4);
insert into blood_count values('B-',0,4,4);
insert into blood_count values('A+',0,4,4);
insert into blood_count values('A-',0,4,4);
insert into blood_count values('O+',0,4,4);
insert into blood_count values('O-',0,4,4);

insert into blood_count values('AB+',0,5,5);
insert into blood_count values('AB-',0,5,5);
insert into blood_count values('B+',0,5,5);
insert into blood_count values('B-',0,5,5);
insert into blood_count values('A+',0,5,5);
insert into blood_count values('A-',0,5,5);
insert into blood_count values('O+',0,5,5);
insert into blood_count values('O-',0,5,5);

INSERT INTO blood_count VALUES ('A+', 42, 7, 7, '2024-01-05');
INSERT INTO blood_count VALUES ('A+', 75, 4, 4, '2024-01-07');
INSERT INTO blood_count VALUES ('A+', 18, 5, 5, '2024-02-10');
INSERT INTO blood_count VALUES ('A+', 93, 6, 6, '2024-03-15');

INSERT INTO blood_count VALUES ('A-', 65, 7, 7, '2024-01-08');
INSERT INTO blood_count VALUES ('A-', 30, 4, 4, '2024-01-09');
INSERT INTO blood_count VALUES ('A-', 88, 5, 5, '2024-02-12');
INSERT INTO blood_count VALUES ('A-', 12, 6, 6, '2024-03-18');

INSERT INTO blood_count VALUES ('B+', 82, 7, 7, '2024-01-11');
INSERT INTO blood_count VALUES ('B+', 47, 4, 4, '2024-01-14');
INSERT INTO blood_count VALUES ('B+', 55, 5, 5, '2024-02-16');
INSERT INTO blood_count VALUES ('B+', 39, 6, 6, '2024-03-20');

INSERT INTO blood_count VALUES ('B-', 23, 7, 7, '2024-01-13');
INSERT INTO blood_count VALUES ('B-', 81, 4, 4, '2024-01-17');
INSERT INTO blood_count VALUES ('B-', 44, 5, 5, '2024-02-19');
INSERT INTO blood_count VALUES ('B-', 69, 6, 6, '2024-03-22');

INSERT INTO blood_count VALUES ('AB+', 90, 7, 7, '2024-01-21');
INSERT INTO blood_count VALUES ('AB+', 15, 4, 4, '2024-01-23');
INSERT INTO blood_count VALUES ('AB+', 37, 5, 5, '2024-02-25');
INSERT INTO blood_count VALUES ('AB+', 58, 6, 6, '2024-03-27');

INSERT INTO blood_count VALUES ('AB-', 50, 7, 7, '2024-03-29');
INSERT INTO blood_count VALUES ('AB-', 64, 4, 4, '2024-01-29');
INSERT INTO blood_count VALUES ('AB-', 78, 5, 5, '2024-02-20');
INSERT INTO blood_count VALUES ('AB-', 26, 6, 6, '2024-03-01');

INSERT INTO blood_count VALUES ('O+', 77, 3, 3, '2024-01-02');
INSERT INTO blood_count VALUES ('O+', 9, 4, 4, '2024-01-03');
INSERT INTO blood_count VALUES ('O+', 71, 5, 5, '2024-02-04');
INSERT INTO blood_count VALUES ('O+', 33, 6, 6, '2024-03-29');

INSERT INTO blood_count VALUES ('O-', 22, 7, 7, '2024-01-06');
INSERT INTO blood_count VALUES ('O-', 85, 4, 4, '2024-01-07');
INSERT INTO blood_count VALUES ('O-', 56, 5, 5, '2024-02-08');
INSERT INTO blood_count VALUES ('O-', 41, 6, 6, '2024-03-09');


select *from blood_count;


create table staff(staff_id int,d_o_join date,contact int,hid int,bid int,
                  primary key(hid,bid,staff_id),
                  foreign key(hid,bid) references blood_bank(hid,bid));
INSERT INTO STAFF VALUES(101,'2020-07-18',12345,1,1);
INSERT INTO STAFF VALUES(102,'2021-05-10',54321,1,1);
INSERT INTO STAFF VALUES(103,'2022-02-18',21435,1,1);
INSERT INTO STAFF VALUES(104,'2013-07-18',12346,1,1);
INSERT INTO STAFF VALUES(105,'2022-01-07',12543,1,1);

INSERT INTO STAFF VALUES(201,'2021-07-18',98765,2,2);
INSERT INTO STAFF VALUES(202,'2021-05-10',56789,2,2);
INSERT INTO STAFF VALUES(203,'2012-02-18',56879,2,2);
INSERT INTO STAFF VALUES(204,'2014-07-18',57969,2,2);
INSERT INTO STAFF VALUES(205,'2015-01-07',76985,2,2);

INSERT INTO staff VALUES (10, '2022-05-15', 9123456780, 7, 7);
INSERT INTO staff VALUES (11, '2022-06-20', 9876543210, 7, 7);
INSERT INTO staff VALUES (12, '2022-07-25', 8765432109, 4, 4);
INSERT INTO staff VALUES (13, '2022-08-30', 9345678901, 4, 4);
INSERT INTO staff VALUES (14, '2022-09-10', 8456789012, 5, 5);
INSERT INTO staff VALUES (15, '2022-10-15', 9567890123, 5, 5);
INSERT INTO staff VALUES (16, '2022-11-20', 5678901234, 6, 6);
INSERT INTO staff VALUES (17, '2022-12-25', 6789012345, 6, 6);
INSERT INTO staff VALUES (18, '2023-01-30', 7890123456, 7, 7);
INSERT INTO staff VALUES (19, '2023-02-05', 8901234567, 7, 7);

CREATE TABLE COMPAT(dbg varchar(5),rbg varchar(5),
                    primary key (dbg,rbg));
insert into COMPAT values('O-','AB+');
insert into COMPAT values('O-','AB-');
insert into COMPAT values('O-','B+');
insert into COMPAT values('O-','B-');
insert into COMPAT values('O-','A+');
insert into COMPAT values('O-','A-');
insert into COMPAT values('O-','O+');
insert into COMPAT values('O-','O-');

insert into COMPAT values('O+','AB+');
insert into COMPAT values('O+','B+');
insert into COMPAT values('O+','A+');
insert into COMPAT values('O+','O+');

insert into COMPAT values('A-','AB+');
insert into COMPAT values('A-','AB-');
insert into COMPAT values('A-','A+');
insert into COMPAT values('A-','A-');

insert into COMPAT values('A+','AB+');
insert into COMPAT values('A+','A+');

insert into COMPAT values('B-','AB+');
insert into COMPAT values('B-','AB-');
insert into COMPAT values('B-','B+');
insert into COMPAT values('B-','B-');

insert into COMPAT values('B+','AB+');
insert into COMPAT values('B+','B+');

insert into COMPAT values('AB-','AB+');
insert into COMPAT values('AB-','AB-');

insert into COMPAT values('AB+','AB+');


create table recepient(rid int,name_ varchar(30),
                     blood_group varchar(5),location varchar(30),
					 hid int,bid int,
                     primary key(hid,bid,rid),
                     foreign key(hid,bid) references blood_bank(hid,bid));

INSERT INTO recepient VALUES (1, 'Rahul', 'A+', 'Jaipur', 7, 7);
INSERT INTO recepient VALUES (2, 'Priya', 'B-', 'Jodhpur', 7, 7);
INSERT INTO recepient VALUES (3, 'Raja_Singh', 'O+', 'Jaipur', 4, 4);
INSERT INTO recepient VALUES (4, 'Sunita', 'AB+', 'Jodhpur', 5, 5);
INSERT INTO recepient VALUES (5, 'Ayush_Gupta', 'A-', 'Jaipur', 6, 6);
INSERT INTO recepient VALUES (7, 'Sudeep', 'O-', 'Jalore', 4, 4);
INSERT INTO recepient VALUES (8, 'Sneha', 'AB-', 'Jaipur', 5, 5);
INSERT INTO recepient VALUES (9, 'Rahul', 'A+', 'Jaipur', 6, 6);
INSERT INTO recepient VALUES (10, 'Mika_Singh', 'B-', 'Jalore', 7, 7);
INSERT INTO recepient VALUES (11, 'Aditi', 'O+', 'Jodhpur', 4, 4);
INSERT INTO recepient VALUES (12, 'Venkat_Reddy', 'AB+', 'Jaipur', 5, 5);
INSERT INTO recepient VALUES (13, 'Sanjay_Goyal', 'A-', 'Jodhpur', 6, 6);
INSERT INTO recepient VALUES (14, 'Akshar_Patel', 'B+', 'Jaipur', 7, 7);
INSERT INTO recepient VALUES (15, 'Rohit_Sharma', 'O-', 'Jalore', 4, 4);



--  SQL QUERIES ON THE DATABASE

-- -updation of a blood group in that particular hospital-- --
update blood_count
set quantity=quantity+1
WHERE (blood_group ='A+' and hid=1 and bid=1);

select * from donor;
SELECT * FROM BLOOD_COUNT;
SELECT * FROM STAFF;
SELECT * FROM BLOOD_BANK;
select * from hospital;
select * from recepient;

--  for finding donor from a nearest or specific loaction for desired blood group.
select *from donor where location='mumbai' and blood_group='B+';

-- If a patient is admitted in hospital and he/she needs blood then we can search appropriate blood in hospital blood bank


select * from blood_count where (hid,bid)=(select hid,bid from recepient where rid=1) and blood_group IN (select rbg from compat where dbg='A+');

-- IF you trying to insert data of a donor whose age is less than 18 or infected by some disease then you won't be able to insert record.

insert into donor values (32, 'Singh', 'Mumbai', 'AB+', '2023-01-28', 5,5,17,0,1234567890);
insert into donor values (33, 'abhi', 'jalore', 'B+', '2023-07-18', 5,5,19,1,1234567890);

-- if a donor want to donate blood then he/she can choose the hospital which have less amount that blood_group and which located in their city.
select *from hospital_contact where hid=
(select hid from blood_count where (hid,bid) IN (select hid,bid from hospital where city='Jaipur') and blood_group='A+' and quantity=(select min(quantity) from blood_count where (hid,bid) IN (select hid,bid from hospital where city='Jaipur') and blood_group='A+'));
-------------------------------------------------------------------------------------------

-- IF a hospital want to check which blood_group have blood amount less than a specific amount in their blood bank they can check  and manage.
select * from blood_count where hid=4 and quantity<=30;

--  IF hOSPITAL want to contact donor who have that specific blood group and they are able to donate
select *from donor where location='THANE' and (blood_group='AB+' and (extract(month from last_donate)+4<=extract(month from sysdate())) or extract(year from last_donate)<extract(year from sysdate()));

-- IF blood bank have deficiency  of blood of any blood group then it can contact other blood bank
select *from hospital_contact where hid IN
(select hid from blood_count where blood_group='A+');

--  finding the blood which gonna expire today or on a specific date related to a hospital
 SELECT * FROM blood_count WHERE expiry = DATE_FORMAT(NOW(), '%Y-%m-%d') and hid=7;


-- lISTING OUT OF DATA OF ALL BLOOD GROUP IN A BLOOD BANK
select *from blood_count where bid=5;

-- listing total quantity of blood by each group
select blood_group,sum(quantity) as amount_ltr from blood_count group by blood_group;
