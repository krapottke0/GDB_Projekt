SELECT *
from PROJEKT_FUEHRUNGSKRAFT f, PROJEKT_FIRMENSTANDORT s, PROJEKT_MITARBEITER m
where f.MITARBEITERID = s.LEITER and f.MITARBEITERID = m.MITARBEITERID;

 

