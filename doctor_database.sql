create database clinical_doctor_system_v3;

show databases;

use clinical_doctor_system_v3;




create table Doctor(
    Doctor_ID   int,
    Doctor_Name varchar(10),
    Specialization  varchar(20),
    Salary int,
    primary key(Doctor_ID)
);


create table Medical_Assistant(
    Assistant_ID int,
    Assistant_Name  varchar(10),
    Experience   int,
    Assistant_Salary  int,
    Phone_Number decimal(11,0),
    primary key(Assistant_ID)
);

create table Patient(
    Patient_ID  int,
    Patient_Name    varchar(20),
    Gender char,
    primary key(Patient_ID)
);

create table Medicine(
    Medicine_Formula varchar(40),
    Medicine_Name   varchar(40),
    Manufacturing_Company varchar(40),
    Medicine_Price  int,
    primary key(Medicine_Formula)
);

create table Pharmacy_Store(
    Pharmacy_License_No int,
    Pharmacy_Name   varchar(40),
    Pharmacy_Area   varchar(40),
    Stock_Capacity  int,
    primary key(Pharmacy_License_No)
);


create table Appointment(
    App_Id int auto_increment,
    App_Date Date,
    App_status varchar(20) default "Pending",
    primary key(App_Id)
);



alter table Medical_Assistant
add Doctor_ID int;

alter table Medical_Assistant
add foreign  key (Doctor_ID) 
references Doctor(Doctor_ID);




alter table Medicine
add Pharmacy_License_No int;

alter table Medicine
add foreign  key (Pharmacy_License_No) 
references Pharmacy_Store(Pharmacy_License_No);



alter table Appointment
add Doctor_ID int;

alter table Appointment
add foreign  key (Doctor_ID) 
references Doctor(Doctor_ID);



alter table Appointment
add Patient_ID int;

alter table Appointment
add foreign  key (Patient_ID) 
references Patient(Patient_ID);





describe doctor;
describe patient;
describe medicine;
describe pharmacy;
describe medical_assistant;



insert into Doctor values(
    1,'Usman','General Physicaian',300000
); 

insert into Doctor values(
   2,'Kamran','General Physicaian',300000
); 
insert into Doctor values(
    3,'Muhammad','Child Specialist',400000
); 



insert into Medical_Assistant values(
    11,'Ali',2,1000,03048143112,1
);
insert into Medical_Assistant values(
    12,'Ahmad',2,1000,03335051523,2
); 
insert into Medical_Assistant values(
    13,'Asad',3,2000,03354012231,3
); 




insert into patient values(
    21,'Hassan',"M"
);
insert into patient values(
    22,'Huzaifa',"M"
); 
insert into patient values(
    23,'Hassaan',"M"
); 


insert into pharmacy_store values(
    13101,"Usman Pharamacy","200 Sqft",500
);


insert into Medicine values(
    'CH3O2',"Panadol","Pak Med Lmtd",50,13101
);
insert into medicine values(
    'Methyle colabamine',"Neurocomin","Eurobio",400,13101
); 
insert into medicine values(
    'Paracetamol',"Calpol","GSk",1800,13101
);

describe Appointment;


insert into Appointment values(
    41,"2022/1/3","Completed",1,21
);
insert into Appointment values(
    42,"2022/9/1","Pending",2,22
);


select * from Doctor;
select * from Patient;
select * from medical_assistant;
select * from pharmacy_store;
select * from medicine;
select * from Appointment;



create view show_doc_data AS
select * from doctor;

select * from show_doc_data;


-----------------------------Creating a stored procedure---------------

delimiter $$
create procedure Doc_name (in id int)
begin
declare doctor_name varchar(40);
select Doctor_Name into doctor_name
from doctor
where Doctor_ID = id;
end $$
delimiter ;

