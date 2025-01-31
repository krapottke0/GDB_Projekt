create view PROJEKT_VIEW_MITARBEITER AS
select ROLLE, count(*) as "Mitarbeiter Anzahl", round(avg(GEHALT)) as Durschnittsgehalt
FROM PROJEKT_MITARBEITER
group by ROLLE;

drop view PROJEKT_VIEW_MITARBEITER;