Create table Appointment_Scheduling 
(
	Appointment_ID int not null identity(1000,1),
	Doctor_SchedulesID int not null ,
	Patient_ID int not null ,
	Admin_ID int not null ,
	Appointment_DateTime datetime not null,
	Appointment_Status varchar(30),
	Doctor_Name varchar(30),
	Constraint Appointment_Scheduling_PK PRIMARY KEY (Appointment_ID),
	Constraint Appointment_Scheduling_FK FOREIGN KEY (Doctor_SchedulesID) REFERENCES Doctor_Schedule(Doctor_SchedulesID)
	Constraint Appointment_Scheduling_FK FOREIGN KEY (Patient_ID) REFERENCES Patient (Pateint_ID)
	Constraint Appointment_Scheduling_FK FOREIGN KEY (Admin_ID) REFERENCES Hospital_Admin (Admin_ID)
);


Create table Billing
(
	Bill_ID int not null identity (1000,1),
	Billing_Date date not null,
	Patient_ID int not null ,
	Doctor_Fees int not null,
	Room_Charge int not null,
	Constraint Billing_PK PRIMARY KEY (Bill_ID),
	Constraint Billing_FK FOREIGN KEY (Patient_ID) REFERENCES Patient (Pateint_ID)

);


Create table Payment
(
	Payment_ID int not null identity (1000,1),
	Payment_Method varchar(30) not null,
	Payment_Date_Time datetime not null,
	Billing_ID int not null,
	Constraint Payment_PK PRIMARY KEY (Payment_ID),
	Constraint Payment_FK FOREIGN KEY (Billing_ID) REFERENCES Billing (Billing_ID)
	
);


Insert into Payment Values ('Card','2022-04-06 08:00:00');
Insert into Payment Values ('Cash','2022-04-05 08:00:00');
Insert into Payment Values ('Cash','2022-04-06 08:00:00');
Insert into Payment Values ('Cash','2022-04-05 08:00:00');
Insert into Payment Values ('Card','2022-04-07 08:00:00');
Insert into Payment Values ('Card','2022-04-05 08:00:00');
Insert into Payment Values ('Check','2022-04-08 08:00:00');
Insert into Payment Values ('Card','2022-04-09 08:00:00');
Insert into Payment Values ('Card','2022-04-10 08:00:00');
Insert into Payment Values ('Card','2022-04-05 08:00:00');



Insert into Appointment_Scheduling Values ('2022-04-05 08:00:00', 'Booked', 'Jill Goodacre');
Insert into Appointment_Scheduling Values ('2022-04-06 09:00:00', 'Booked', 'Jill Goodacre');
Insert into Appointment_Scheduling Values ('2022-04-06 10:00:00', 'Booked', 'Frank Jr');
Insert into Appointment_Scheduling Values ('2022-04-05 08:30:00', 'Booked', 'Jill Goodacre');
Insert into Appointment_Scheduling Values ('2022-04-05 11:00:00', 'Booked', 'Phoebe Buffay');
Insert into Appointment_Scheduling Values ('2022-04-07 07:00:00', 'Booked', 'Jill Goodacre');
Insert into Appointment_Scheduling Values ('2022-04-05 07:30:00', 'Booked', 'Ross Gellerr');
Insert into Appointment_Scheduling Values ('2022-04-08 08:00:00', 'Booked', 'Rachel Greene');
Insert into Appointment_Scheduling Values ('2022-04-05 08:00:00', 'Booked', 'Jill Goodacre');
Insert into Appointment_Scheduling Values ('2022-04-09 08:00:00', 'Booked', 'Reese Witherspoon');


Insert into Billing VALUES ('2022-04-06','200','800');
Insert into Billing VALUES ('2022-04-07','500','700');
Insert into Billing VALUES ('2022-04-05','400','500');
Insert into Billing VALUES ('2022-04-06','200','400');
Insert into Billing VALUES ('2022-04-05','100','900');
Insert into Billing VALUES ('2022-04-09','300','800');
Insert into Billing VALUES ('2022-04-10','250','800');
Insert into Billing VALUES ('2022-04-05','250','800');
Insert into Billing VALUES ('2022-04-07','230','500');
Insert into Billing VALUES ('2022-04-08','250','600');







