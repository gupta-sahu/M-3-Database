create database HospitalDBM;
use HospitalDBM;
create table Doctors (
doctorid int primary key,
first_name varchar(50),
last_name varchar(50),
specialization varchar(100));

insert into Doctors (doctorid, first_name, last_name, specialization)
values
(1, 'dolly', 'kumari', 'cardiology'),
(2, 'yash', 'sahu', 'neurology'),
(3, 'tanya', 'sha', 'orthopedics');

create table patients (
patientid int primary key,
first_name varchar(50),
last_name varchar(50),
age int, 
doctorid int );

insert into patients (patientid, first_name, last_name, age, doctorid)
values 
(101, 'khushi', 'kumari', 30, 1),
(102, 'vishal', 'sahu', 25, 2),
(103, 'komal', 'rao', 32, 3),
(104, 'amit', 'jai', 26, null);

select patients.first_name as patient_name,
Doctors.first_name as doctor_name,
Doctors.specialization
FROM patients
inner join Doctors 
on patients.doctorid = Doctors.doctorid;

select patients.first_name as patient_name,
Doctors.first_name as doctor_name,
Doctors.specialization
FROM patients
left join Doctors 
on patients.doctorid = Doctors.doctorid;

select patients.first_name as patient_name,
Doctors.first_name as doctor_name,
Doctors.specialization
FROM patients
right join Doctors 
on patients.doctorid = Doctors.doctorid;

select patients.first_name as patient_name,
Doctors.first_name as doctor_name,
Doctors.specialization
FROM patients
left join Doctors 
on patients.doctorid = Doctors.doctorid
union
select patients.first_name as patient_name,
Doctors.first_name as doctor_name,
Doctors.specialization
FROM patients
right join Doctors 
on patients.doctorid = Doctors.doctorid;

select patients.first_name as patient_name,
Doctors.first_name as doctor_name
from patients
cross join doctors;



drop table doctors;
drop table patients;



























