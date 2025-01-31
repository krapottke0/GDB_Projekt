create view PROJEKT_VIEW_MITARBEITER AS
select ROLLE, count(*) as "Mitarbeiter Anzahl", avg(GEHALT)
FROM PROJEKT_MITARBEITER
group by ROLLE;