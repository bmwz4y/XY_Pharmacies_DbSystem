alter table Patient add constraint patient_pri_phy_id_fk foreign key(pri_phy_id) references Doctor(id);

alter table Prescription add constraint prescription_pat_id_fk foreign key(pat_id) references Patient(id)
on delete cascade;

alter table Prescription add constraint prescription_doc_id_fk foreign key(doc_id) references Doctor(id);

alter table Prescription add constraint prescription_med_name_fk foreign key(med_name) references Medicine(name);

alter table Medicine add constraint medicine_pha_co_name_fk foreign key(pha_co_name) references Pharma_co(name)
on delete cascade;

alter table Sell add constraint sell_pha_name_fk foreign key(pha_name) references Pharmacy(name)
on delete cascade;

alter table Sell add constraint sell_med_name_fk foreign key(med_name) references Medicine(name)
on delete cascade;

alter table Contract add constraint contract_pha_co_name_fk foreign key(pha_co_name) references Pharma_co(name);

alter table Contract add constraint contract_pha_name_fk foreign key(pha_name) references Pharmacy(name);