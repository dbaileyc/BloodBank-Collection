CREATE table Donor(
donor_id integer not null,            
fname varchar(20) not null,
minit varchar (1) not null,
lname varchar(15) not null,
donor_age integer not null CHECK (donor_age>=16),
weightLBS integer not null CHECK (weightLBS>=110),
conditions varchar(100) not null check(conditions in ('Hepatitis B','HIV','Human t-lymphotropic virus (HTLV) I and II' ,'Syphilis', 'West Nile Virus', 'Chagas Disease','none')),
--The 'none' is also added in check so as the SQL compiler checks it as a different(normal as we see) type and does not generate a error--
donor_address varchar(100) not null, 
donor_contact varchar(50) not null,
donor_bloodtype varchar(100) not null,
primary key (donor_id)
);

CREATE table Donation(
donor_id integer not null,          
donation_number integer not null,  
blood_bank_id integer,
donation_bloodtype varchar(20) not null,
donation_volumePT integer not null,
date_of_donation DATE not null,
primary key (donation_number),
foreign key (donor_id) references Donor(donor_id)
);

CREATE table BloodBank(
blood_bank_id integer not null,     
blood_bank_name varchar(50),
blood_bank_address varchar(50),
blood_bank_email varchar(50),
blood_bank_fax char(50),
blood_bank_phone char(50),
primary key (blood_bank_id)
);

CREATE table BBInventory(
inventory_id integer not null,
donation_number integer,
donor_id integer,
blood_bank_id integer,
bbtype varchar(20) not null,
bbvolumePT integer not null,
primary key (inventory_id),
foreign key (blood_bank_id) references BloodBank(blood_bank_id),
foreign key (donation_number) references Donation(donation_number)   
);

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576001,'Kim','D','Gaines',15,130,'Syphilis','1401 S 16th St Philadelphia PA 19146','267-467-5045','A+');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576002,'Angel','F','Rodriguez',38,198,'none','3999 W Chester Pike Newton Sq, PA 19073','781-768-6813','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576003,'Anastasia','R','Fox',59,158,'HIV','324 Main St, Carbondale,PA 18407','717-365-2908','AB+');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576004,'Thomas','T','McFarlane',49,212,'Syphilis','563 Moore St, Springfield,PA 18407','570-688-1593','O+');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576005,'Ella','N','Murphy',17,175,'West Nile Virus','518 Stout Street, Gratz,PA 18407','610-762-3203','B-');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576006,'Jeffrey','L','Banks',22,145,'none','563 Moore St, Reading,PA 18407','717-652-9625','AB+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576007,'Melissa','O','Cox',25,190,'Chagas Disease','681 Lincoln Drive, Harrisburg,PA 18407','267-205-0482','B-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576008,'Kendra','J','Silva',45,165,'none','3139 Wakefield Street, Philadelphia,PA 19108','215-367-1617','AB-');


insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576009,'Jennifer','T','Campos',61,234,'none','4737 Leo Street, Portland,PA 19108','724-207-2192','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576101,'Christian','A','Humphrey',56,188,'none','2 Timber Dr, Chester Springs,PA 19425','215-367-1617','AB-');






insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576102','Morgan','R','Moss','18','197','none','2379 Tree Top Lane, New Castle,PA 19720','610-299-2042','O-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576103','Damon','L','Bray','32','206','Hepatitis B','3037 Cityview Drive, Philadelphia,PA 19108','267-616-0298','O+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576104','Jorge','R','Gomez','39','130','none','384 Quincy Street, Philadelphia,PA 19108','267-486-9526','B-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576105','Kendra','C','Burton','47','155','none','2303 Peach St, Erie,PA 19108','215-367-1617','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576106','Calvin','K','Guerra','26','165','none','6 E Lancaster Ave, Wynnewood,PA 19003','404-297-8360','A-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576107','Christian','R','Greene','17','205','none','6423 Beaumont Ave, Philadelphia,PA 19143','410-326-4036','AB+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576108','Morgan','D','Cross','19','125','Chagas Disease','5701 Hoffman Ave, Philadelphia,PA 19143','215-748-4027','O+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576109','Damon','D','Norris','30','160','Syphilis','5707 Cedar Ave, Philadelphia,PA 19143','215-895-1802','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576201','Mai','P','Roy','35','180','none','53 Brennan Dr, Bryn Mawr,PA 19010','610-520-0131','B-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576202','Stella','M','Nguyen','42','165','none','1221 Ridgewood Rd, Bryn Mawr,PA 19010','610-520-0131','O-');


insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576203','Jennifer','L','Webb','55','185','none','1048 W Baltimore Pike, Media,PA 19063','610-738-6988','AB-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576204','Gregory','T','Peck','52','220','none','540 Maple Ct, Bensalem,PA 19108','215-447-8709','A+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576205','Colby','V','Taylor','34','170','none','589 S Mount Vernon Cir, Bensalem,PA 19020','215-638-9336','AB+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576206','Kerri','T','Gross','21','130','Syphilis','4211 Crawford Ave, Northern Cambria,PA 19108','814-420-8079','A-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576207','Jolene','J','Boyle','24','135','none','421 Wild Goose Rd, Tyrone,PA 16686','814-684-4581','O-');




insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576001, '1', '9752', 'A+', 0, '28-JAN-20');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values ('576002', '2', '9752', 'B+', 1,'24-SEP-19');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values ('576003', '3', 9752, 'AB+', 0, '03-FEB-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576004, 4, 9752, 'O+', 0, '09-JUN-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576005, 5, 9752, 'B-', 0, '22-JUL-19');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576006, 6, 9752, 'AB+', 1,'16-MAR-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576007, 7, 9752, 'B-', 1,'19-APR-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576008, 8, 9752, 'AB-', 1, '28-MAY-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576009, 9, 9752,'B+', 1, '24-FEB-20');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576101,10, 9752, 'AB-', 1,'23-OCT-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576102,11, 9752, 'O-', 1, '20-MAR-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576103, 12, 9752, 'O+', 0, '20-APR-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576104, 13, 9752, 'B-', 1, '25-MAY-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576105, 14, 9752, 'B+', 1,'04-JUN-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576106, 15, 9752, 'A-', 1,'09-DEC-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576107, 16, 9752, 'AB+', 1, '06-NOV-18');


insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576108, 17, 9752, 'O+', 0, '24-NOV-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576109, 18, '9752', 'B+', 0,'26-SEP-19');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576201, 19, 9752, 'B-', 1, '23-JUL-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576202, 20, 9752, 'O-', 1, '17-JUN-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576203, 21, 9752, 'AB-', 1, '02-DEC-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576204, 22, 9752, 'A+', 1,'05-JAN-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576205, 23, 9752, 'AB+', 1,'24-AUG-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576206, 24, 9752, 'A-', 0, '22-MAY-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576207, 25, 9752, 'A-', 1, '20-OCT-21');






insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_email,blood_bank_fax,blood_bank_phone)
values (9752,'ARC','525 S 9th St Philadelphia PA' ,'donate@arc.org','1-806-905-6421','1-800-732-2945');





insert into BBInventory (inventory_id,donation_number,donor_id,blood_bank_id,bbtype,bbvolumePT)
values (10000010,1,001,01,'A+',1);

--

