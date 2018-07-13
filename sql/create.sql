create table Patient
(id char(8),
name varchar2(25),
address varchar2(25),
age number,
pri_phy_id char(8) constraint patient_pri_phy_id_nn not null,
constraint patient_id_pk primary key (id)
);

create table Doctor
(id		char(8),
name		varchar2(25),
specialty	varchar2(25),
experience	number,
constraint doctor_id_pk primary key (id)
);

create table Prescription
(pat_id		char(8),
doc_id		char(8),
last_date	date,
quantity	number default 1,
med_name	varchar2(25),
constraint prescription_composite_pk primary key (pat_id, doc_id, med_name)
);

create table Pharma_co
(name		varchar2(25),
phone_num	number(10) constraint pharma_co_phone_num_uk unique,
constraint pharma_co_name_pk primary key (name)
);

create table Medicine
(name		varchar2(25),
formula		varchar2(25),
pha_co_name	varchar2(25),
constraint medicine_name_pk primary key (name)
);

create table Pharmacy
(name		varchar2(25),
address		varchar2(25),
phone_num	number(10) constraint pharmacy_phone_num_uk unique,
constraint pharmacy_name_pk primary key (name)
);

create table Sell
(pha_name	varchar2(25),
med_name	varchar2(25),
price		number(5,2) constraint sell_price_nn not null,
constraint sell_composite_pk primary key (pha_name, med_name)
);

create table Contract
(pha_co_name	varchar2(25),
pha_name	varchar2(25),
start_date	date,
end_date	date,
supervisor	varchar2(25) constraint contract_supervisor_nn not null,
text		varchar2(25),
constraint contract_composite_pk primary key (pha_co_name, pha_name)
);