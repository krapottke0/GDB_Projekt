create view PROJEKT_VIEW_MITARBEITER AS
select ARBEITSORT, ROLLE, count(*) as "Mitarbeiter Anzahl", round(avg(GEHALT)) as Durschnittsgehalt
FROM PROJEKT_MITARBEITER
group by ROLLE, ARBEITSORT
Order by ARBEITSORT;

create view PROJEKT_VIEW_VERKAUF AS
select 
    VERKAUFSORT, 
    sum(GESAMTPREIS) as Gesamtumsatz, 
    count(*) as Verkäufe, AVG(Gesamtpreis) as "Durchscnittlicher Umsatz pro Verkauf",  
    (SUM(GESAMTPREIS) / (SELECT SUM(GESAMTPREIS) FROM PROJEKT_VERKAUF)) * 100 AS "Prozentualer Gesamtanteil"
FROM PROJEKT_VERKAUF
group by VERKAUFSORT;

create view PROJEKT_VIEW_LAGER AS
select P.PRODUKTNAME, sum(L.ANZAHL) as Bestand
from PROJEKT_LAGERT L
join PROJEKT_PRODUKT P ON L.PRODUKTID = P.PRODUKTID
group by P.PRODUKTID, P.PRODUKTNAME;
