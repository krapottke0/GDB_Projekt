-- Einfügen von Beispieldaten in Projekt_Firmenstandort ohne Leiter

--Hauptsitz
insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_HP0001', 'Hauptsitz', 'Hauptstr. 1', '12345', 'Berlin', 'Hauptsitz');

--Filialen
insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FI0001', 'Filiale 1', 'Filialstr. 10', '54321', 'Hamburg', 'Filiale');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FI0002', 'Filiale 2', 'Filialstr. 20', '98765', 'München', 'Filiale');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FI0003', 'Filiale 3', 'Filialstr. 30', '11111', 'Köln', 'Filiale');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FI0004', 'Filiale 4', 'Filialstr. 40', '22222', 'Frankfurt', 'Filiale');

--Externe Lager
insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_EL0001', 'Externe Lager 1', 'Lagerstr. 1', '33333', 'Düsseldorf', 'Warenlager');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_EL0002', 'Externe Lager 2', 'Lagerstr. 2', '44444', 'Stuttgart', 'Warenlager');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_EL0003', 'Externe Lager 3', 'Lagerstr. 3', '55555', 'Leipzig', 'Warenlager');

--Filial Lager
insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FL0001', 'Filiallager 1', 'Lagerstr. 1a', '66666', 'Hamburg', 'Filiallager');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FL0002', 'Filiallager 2', 'Lagerstr. 2a', '77777', 'München', 'Filiallager');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FL0003', 'Filiallager 3', 'Lagerstr. 3a', '88888', 'Köln', 'Filiallager');

insert into Projekt_Firmenstandort (FirmenstandortID, StandortName, Strasse, PLZ, Stadt, Rolle)
values ('F_FL0004', 'Filiallager 4', 'Lagerstr. 4a', '99999', 'Frankfurt', 'Filiallager');


-- Einfügen von Beispieldaten in Projekt_Warenlager
insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_EL0001', 1000.00, 1000.00, 10);

insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_EL0002', 1200.00, 1200.00, 12);

insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_EL0003', 1500.00, 1500.00, 15);

-- Einfügen von Beispieldaten in Projekt_Warenlager für die Filiallager
insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_FL0001', 500.00, 500.00, 4);

insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_FL0002', 600.00, 600.00, 4);

insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_FL0003', 700.00, 700.00, 4);

insert into Projekt_Warenlager (FirmenstandortID, maxKapM3, freieKapM3, StaplerZahl)
values ('F_FL0004', 800.00, 800.00, 4);

-- Einfügen von Beispieldaten in Projekt_Filiale
insert into Projekt_Filiale (FirmenstandortID, Umsatz, Inventur, angWarenlager)
values ('F_FI0001', 500000.00, 80.00, 'S006');

insert into Projekt_Filiale (FirmenstandortID, Umsatz, Inventur, angWarenlager)
values ('F_FI0002', 450000.00, 75.00, 'S007');

insert into Projekt_Filiale (FirmenstandortID, Umsatz, Inventur, angWarenlager)
values ('F_FI0003', 600000.00, 70.00, 'S008');

insert into Projekt_Filiale (FirmenstandortID, Umsatz, Inventur, angWarenlager)
values ('F_FI0004', 550000.00, 65.00, 'S006');
