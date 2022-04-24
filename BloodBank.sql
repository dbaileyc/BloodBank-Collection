CREATE table Donor(
donor_id integer not null,            
fname varchar(20) not null,
minit varchar (1) not null,
lname varchar(15) not null,
donor_age integer not null CHECK (donor_age>=16),
weightLBS integer not null CHECK (weightLBS>=110),
conditions varchar(100) not null check(conditions in ('Hepatitis B','HIV','Human t-lymphotropic virus (HTLV) I and II' ,'Syphilis', 'West Nile Virus', 'Chagas Disease','none')),
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
donation_volumePT integer not null CHECK (donation_volumePT <> 0),
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
blood_bank_id integer,
donation_number integer,
donor_id integer,
bbtype varchar(20) not null,
bbvolumePT integer not null,
foreign key (blood_bank_id) references BloodBank(blood_bank_id),
foreign key (donation_number) references Donation(donation_number)   
);

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000001,'Kim','D','Gaines',15,130,'Syphilis','1401 S 16th St Philadelphia PA 19146','267-467-5045','A+');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000002,'Angel','F','Rodriguez',38,198,'none','3999 W Chester Pike Newton Sq, PA 19073','781-768-6813','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000003,'Anastasia','R','Fox',59,158,'HIV','324 Main St, Carbondale,PA 18407','717-365-2908','AB+');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000004,'Thomas','T','McFarlane',49,212,'Syphilis','563 Moore St, Springfield,PA 18407','570-688-1593','O+');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000005,'Ella','N','Murphy',17,120,'West Nile Virus','518 Stout Street, Gratz,PA 18407','610-762-3203','B-');
  
insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000006,'Jeffrey','L','Banks',22,145,'none','563 Moore St, Reading,PA 18407','717-652-9625','AB+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000007,'Melissa','O','Cox',25,190,'Chagas Disease','681 Lincoln Drive, Harrisburg,PA 18407','267-205-0482','B-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000008,'Kendra','J','Silva',45,165,'none','3139 Wakefield Street, Philadelphia,PA 19108','215-367-1617','AB-');


insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000009,'Jennifer','T','Campos',61,234,'none','4737 Leo Street, Portland,PA 19108','724-207-2192','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values(576000010,'Christian','A','Humphrey',56,188,'none','2 Timber Dr, Chester Springs,PA 19425','215-367-1617','AB-');






insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000011','Morgan','R','Moss','18','100','none','2379 Tree Top Lane, New Castle,PA 19720','610-299-2042','O-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000012','Damon','L','Bray','32','206','Hepatitis B','3037 Cityview Drive, Philadelphia,PA 19108','267-616-0298','O+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000013','Jorge','R','Gomez','39','130','none','384 Quincy Street, Philadelphia,PA 19108','267-486-9526','B-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000014','Kendra','C','Burton','47','155','none','2303 Peach St, Erie,PA 19108','215-367-1617','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000015','Calvin','K','Guerra','26','165','none','6 E Lancaster Ave, Wynnewood,PA 19003','404-297-8360','A-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000016','Christian','R','Greene','17','205','none','6423 Beaumont Ave, Philadelphia,PA 19143','410-326-4036','AB+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000017','Morgan','D','Cross','19','125','Chagas Disease','5701 Hoffman Ave, Philadelphia,PA 19143','215-748-4027','O+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000018','Damon','D','Norris','30','160','Syphilis','5707 Cedar Ave, Philadelphia,PA 19143','215-895-1802','B+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000019','Mai','P','Roy','35','180','none','53 Brennan Dr, Bryn Mawr,PA 19010','610-520-0131','B-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000020','Stella','M','Nguyen','42','165','none','1221 Ridgewood Rd, Bryn Mawr,PA 19010','610-520-0131','O-');


insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000021','Jennifer','L','Webb','55','185','none','1048 W Baltimore Pike, Media,PA 19063','610-738-6988','AB-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000022','Gregory','T','Peck','52','220','none','540 Maple Ct, Bensalem,PA 19108','215-447-8709','A+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000023','Colby','V','Taylor','34','170','none','589 S Mount Vernon Cir, Bensalem,PA 19020','215-638-9336','AB+');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000024','Kerri','T','Gross','21','130','Syphilis','4211 Crawford Ave, Northern Cambria,PA 19108','814-420-8079','A-');

insert into Donor (donor_id,fname,minit,lname,donor_age,weightLBS,conditions,donor_address,donor_contact,donor_bloodtype)
values('576000025','Jolene','J','Boyle','24','135','none','421 Wild Goose Rd, Tyrone,PA 16686','814-684-4581','O-');




insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000001, '1', '1', 'A+', 0, '28-JAN-20');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values ('576000002', '2', '1', 'B+', 1,'24-SEP-19');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values ('576000003', '3', 1, 'AB+', 0, '03-FEB-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000004, 4, 1, 'O+', 0, '09-JUN-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000005, 5, 1, 'B-', 0, '22-JUL-19');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000006, 6, 1, 'AB+', 1,'16-MAR-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000007, 7, 1, 'B-', 0,'19-APR-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000008, 8, 1, 'AB-', 1, '28-MAY-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000009, 9, 1,'B+', 1, '24-FEB-20');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000010,10, 1, 'AB-', 1,'23-OCT-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000011,11, 1, 'O-', 1, '20-MAR-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000012, 12, 1, 'O+', 0, '20-APR-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000013, 13, 1, 'B-', 1, '25-MAY-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000014, 14, 1, 'B+', 1,'04-JUN-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000015, 15, 1, 'A-', 1,'09-DEC-17');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000016, 16, 1, 'AB+', 1, '06-NOV-18');


insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000017, 17, 1, 'O+', 0, '24-NOV-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000018, 18, '1', 'B+', 0,'26-SEP-19');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000019, 19, 1, 'B-', 1, '23-JUL-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000020, 20, 1, 'O-', 1, '17-JUN-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000021, 21, 1, 'AB-', 1, '02-DEC-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000022, 22, 1, 'A+', 1,'05-JAN-18');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000023, 23, 1, 'AB+', 1,'24-AUG-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000024, 24, 1, 'A-', 0, '22-MAY-21');

insert into Donation (donor_id,donation_number,blood_bank_id,donation_bloodtype,donation_volumePT,date_of_donation)
values (576000025, 25, 1, 'A-', 1, '20-OCT-21');






insert into BloodBank (blood_bank_id,blood_bank_name,blood_bank_address,blood_bank_email,blood_bank_fax,blood_bank_phone)
values (1,'ARC','525 S 9th St Philadelphia PA' ,'donate@arc.org','1-806-905-6421','1-800-732-2945');





insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,2, 576000002,  'B+', 3);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,6, 576000006,  'AB+', 4);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,7, 576000007,  'B-', 2);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,8, 576000008,  'AB-', 2);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,9, 576000009,  'B+', 2);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,10,  576000010, 'AB-', 1);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,13, 576000013, 'B-', 4);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,14,  576000014,  'B+', 4);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,15, 576000015,  'A-', 3);



insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,16, 576000016,  'AB+', 4);


insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,19, 576000019,  'B-', 2);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,20, 576000020,  'O-', 5);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,21, 576000021,  'AB-', 1);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,22, 576000022,  'A+', 3);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,23, 576000023,  'AB+', 1);

insert into BBInventory (blood_bank_id,donation_number,donor_id,bbtype,bbvolumePT)
values (1,25, 576000025,  'A-', 1);





--

