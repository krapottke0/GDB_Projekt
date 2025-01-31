drop SEQUENCE Projekt_seq_zulieferer_id;
drop SEQUENCE Projekt_seq_produkt_id;
drop SEQUENCE Projekt_seq_mitarbeiter_id;
drop PROCEDURE Projekt_InsertProdukt;
drop PROCEDURE Projekt_InsertZulieferer;
drop PROCEDURE Projekt_InsertLieferung;
drop PROCEDURE Projekt_InsertMitarbeiter;

drop view PROJEKT_VIEW_LAGER;
drop view Projekt_view_Mitarbeiter;
drop view PROJEKT_VIEW_VERKAUF;

drop table Projekt_Beinhaltet cascade constraints;
drop table Projekt_Liefert cascade constraints;
drop table Projekt_Lagert cascade constraints;
drop table Projekt_Verkauf cascade constraints;
drop table Projekt_Filiale cascade constraints;
drop table Projekt_Warenlager cascade constraints;
drop table Projekt_Firmenstandort cascade constraints;
drop table Projekt_Fuehrungskraft cascade constraints;
drop table Projekt_Warenlagermitarbeiter cascade constraints;
drop table Projekt_Mitarbeiter cascade constraints;
drop table Projekt_Zulieferer cascade constraints;
drop table Projekt_Produkt cascade constraints;

