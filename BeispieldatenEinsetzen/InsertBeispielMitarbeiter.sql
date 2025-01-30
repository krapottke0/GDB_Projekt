--Beispiele wurden mithilfe von Chat GPT generiert
BEGIN

    -- Mitarbeiter für Filiale 1 (F_FI0001)
    Projekt_InsertMitarbeiter('Mustermann','Anna',2800.00,TO_DATE('1990-05-01', 'YYYY-MM-DD'),TO_DATE('2018-01-01', 'YYYY-MM-DD'),'Führungskraft',40,25,'F_FI0001',
    TO_DATE('2018-01-01', 'YYYY-MM-DD'), 'Schichtleiter');
    Projekt_InsertMitarbeiter('Meyer','Ben',2400.00,TO_DATE('1985-03-15', 'YYYY-MM-DD'),TO_DATE('2017-05-15', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0001');
    Projekt_InsertMitarbeiter('Schmidt','Clara',2100.00,TO_DATE('1993-02-10', 'YYYY-MM-DD'),TO_DATE('2020-07-01', 'YYYY-MM-DD'),'Filialmitarbeiter',40,23,'F_FI0001');
    Projekt_InsertMitarbeiter('Schneider','David',2300.00,TO_DATE('1988-11-25', 'YYYY-MM-DD'),TO_DATE('2019-03-21', 'YYYY-MM-DD'),'Filialmitarbeiter',40,24,'F_FI0001');
    Projekt_InsertMitarbeiter('Fischer','Eva',2250.00,TO_DATE('1992-07-17', 'YYYY-MM-DD'),TO_DATE('2020-10-10', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0001');
    Projekt_InsertMitarbeiter('Weber','Felix',2400.00,TO_DATE('1990-12-12', 'YYYY-MM-DD'),TO_DATE('2016-06-01', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0001');
    Projekt_InsertMitarbeiter('Hoffmann','Gabi',2100.00,TO_DATE('1994-01-08', 'YYYY-MM-DD'),TO_DATE('2021-02-15', 'YYYY-MM-DD'),'Filialmitarbeiter',40,22,'F_FI0001');
    Projekt_InsertMitarbeiter('Schulz','Hannah',2150.00,TO_DATE('1989-04-18', 'YYYY-MM-DD'),TO_DATE('2018-08-30', 'YYYY-MM-DD'),'Filialmitarbeiter',40,24,'F_FI0001');
    Projekt_InsertMitarbeiter('Zimmermann','Ines',2250.00,TO_DATE('1991-09-22', 'YYYY-MM-DD'),TO_DATE('2017-11-01', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0001');
    Projekt_InsertMitarbeiter('Lang','Jörg',2400.00,TO_DATE('1987-06-05', 'YYYY-MM-DD'),TO_DATE('2018-12-20', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0001');
    Projekt_InsertMitarbeiter('Bauer','Karl',2300.00,TO_DATE('1985-02-18', 'YYYY-MM-DD'),TO_DATE('2017-09-12', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0002');

    -- Mitarbeiter für Filiale 2 (F_FI0002)
    Projekt_InsertMitarbeiter('Becker','Lena',2800.00,TO_DATE('1992-06-03', 'YYYY-MM-DD'),TO_DATE('2020-01-01', 'YYYY-MM-DD'),'Führungskraft',40,24,'F_FI0002',
    TO_DATE('2020-01-01', 'YYYY-MM-DD'), 'Schichtleiter');
    Projekt_InsertMitarbeiter('Richter','Mia',2100.00,TO_DATE('1991-12-01', 'YYYY-MM-DD'),TO_DATE('2019-05-14', 'YYYY-MM-DD'),'Filialmitarbeiter',40,22,'F_FI0002');
    Projekt_InsertMitarbeiter('Wolf','Nina',2200.00,TO_DATE('1993-04-12', 'YYYY-MM-DD'),TO_DATE('2021-03-15', 'YYYY-MM-DD'),'Filialmitarbeiter',40,23,'F_FI0002');
    Projekt_InsertMitarbeiter('Koch','Oliver',2350.00,TO_DATE('1987-10-25', 'YYYY-MM-DD'),TO_DATE('2017-06-30', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0002');
    Projekt_InsertMitarbeiter('Schwarz','Paul',2100.00,TO_DATE('1992-11-18', 'YYYY-MM-DD'),TO_DATE('2018-02-14', 'YYYY-MM-DD'),'Filialmitarbeiter',40,22,'F_FI0002');
    Projekt_InsertMitarbeiter('Haas','Quirin',2300.00,TO_DATE('1989-08-03', 'YYYY-MM-DD'),TO_DATE('2017-11-11', 'YYYY-MM-DD'),'Filialmitarbeiter',40,24,'F_FI0002');
    Projekt_InsertMitarbeiter('Schuster','Rita',2200.00,TO_DATE('1994-03-02', 'YYYY-MM-DD'),TO_DATE('2020-06-05', 'YYYY-MM-DD'),'Filialmitarbeiter',40,23,'F_FI0002');
    Projekt_InsertMitarbeiter('Müller','Stefan',2250.00,TO_DATE('1990-09-10', 'YYYY-MM-DD'),TO_DATE('2018-05-03', 'YYYY-MM-DD'),'Filialmitarbeiter',40,24,'F_FI0002');
    Projekt_InsertMitarbeiter('Graf','Ursula',2350.00,TO_DATE('1988-01-14', 'YYYY-MM-DD'),TO_DATE('2016-11-11', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0002');
    
    -- Mitarbeiter für Filiale 3 (F_FI0003)
    Projekt_InsertMitarbeiter('Schulze','Vera',2900.00,TO_DATE('1989-03-30', 'YYYY-MM-DD'),TO_DATE('2020-08-05', 'YYYY-MM-DD'),'Führungskraft',40,24,'F_FI0003',
    TO_DATE('2020-08-05', 'YYYY-MM-DD'), 'Schichtleiter');
    Projekt_InsertMitarbeiter('Peters','Walter',2400.00,TO_DATE('1987-11-22', 'YYYY-MM-DD'),TO_DATE('2018-12-02', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0003');
    Projekt_InsertMitarbeiter('Jäger','Xenia',2100.00,TO_DATE('1991-10-14', 'YYYY-MM-DD'),TO_DATE('2019-04-08', 'YYYY-MM-DD'),'Filialmitarbeiter',40,22,'F_FI0003');
    Projekt_InsertMitarbeiter('Feldmann','Yvonne',2200.00,TO_DATE('1990-01-18', 'YYYY-MM-DD'),TO_DATE('2017-09-11', 'YYYY-MM-DD'),'Filialmitarbeiter',40,23,'F_FI0003');
    Projekt_InsertMitarbeiter('Hennig','Zacharias',2250.00,TO_DATE('1986-12-03', 'YYYY-MM-DD'),TO_DATE('2017-10-15', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0003');
    Projekt_InsertMitarbeiter('Lorenz','Carla',2200.00,TO_DATE('1988-04-19', 'YYYY-MM-DD'),TO_DATE('2016-11-25', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0003');
    Projekt_InsertMitarbeiter('Heinrich','Diana',2250.00,TO_DATE('1989-08-17', 'YYYY-MM-DD'),TO_DATE('2017-08-30', 'YYYY-MM-DD'),'Filialmitarbeiter',40,24,'F_FI0003');
    Projekt_InsertMitarbeiter('Götz','Elisabeth',2300.00,TO_DATE('1990-05-25', 'YYYY-MM-DD'),TO_DATE('2018-05-21', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0003');
    
    -- Mitarbeiter für Filiale 4 (F_FI0004)
    Projekt_InsertMitarbeiter('Roth','Friedrich',2700.00,TO_DATE('1991-05-10', 'YYYY-MM-DD'),TO_DATE('2020-12-01', 'YYYY-MM-DD'),'Führungskraft',40,25,'F_FI0004',
    TO_DATE('2020-12-01', 'YYYY-MM-DD'), 'Schichtleiter');
    Projekt_InsertMitarbeiter('Simon','Günther',2300.00,TO_DATE('1992-08-20', 'YYYY-MM-DD'),TO_DATE('2020-09-15', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0004');
    Projekt_InsertMitarbeiter('Kraft','Heike',2100.00,TO_DATE('1994-02-14', 'YYYY-MM-DD'),TO_DATE('2021-02-05', 'YYYY-MM-DD'),'Filialmitarbeiter',40,22,'F_FI0004');
    Projekt_InsertMitarbeiter('Hartmann','Isabella',2200.00,TO_DATE('1993-12-02', 'YYYY-MM-DD'),TO_DATE('2019-10-03', 'YYYY-MM-DD'),'Filialmitarbeiter',40,23,'F_FI0004');
    Projekt_InsertMitarbeiter('Ebert','Johannes',2250.00,TO_DATE('1990-11-12', 'YYYY-MM-DD'),TO_DATE('2018-05-10', 'YYYY-MM-DD'),'Filialmitarbeiter',40,24,'F_FI0004');
    Projekt_InsertMitarbeiter('Kramer','Katrin',2300.00,TO_DATE('1988-07-01', 'YYYY-MM-DD'),TO_DATE('2017-12-19', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0004');
    Projekt_InsertMitarbeiter('Vogel','Lukas',2100.00,TO_DATE('1992-04-20', 'YYYY-MM-DD'),TO_DATE('2019-03-02', 'YYYY-MM-DD'),'Filialmitarbeiter',40,22,'F_FI0004');
    Projekt_InsertMitarbeiter('Friedrich','Martha',2400.00,TO_DATE('1986-10-10', 'YYYY-MM-DD'),TO_DATE('2016-07-22', 'YYYY-MM-DD'),'Filialmitarbeiter',40,26,'F_FI0004');
    Projekt_InsertMitarbeiter('Wagner','Norbert',2200.00,TO_DATE('1990-12-05', 'YYYY-MM-DD'),TO_DATE('2017-09-15', 'YYYY-MM-DD'),'Filialmitarbeiter',40,25,'F_FI0004');
    
    -- Einfügen von vier Leitern Filiale
    Projekt_InsertMitarbeiter('Müller','Erika',4500.00,TO_DATE('1980-04-25', 'YYYY-MM-DD'),TO_DATE('2010-08-01', 'YYYY-MM-DD'),'Führungskraft',40,30,'F_FI0001',
    TO_DATE('2010-08-01', 'YYYY-MM-DD'), 'Leiter Filiale');
    Projekt_InsertMitarbeiter('Schmidt','Thomas',5000.00,TO_DATE('1975-09-10', 'YYYY-MM-DD'),TO_DATE('2012-01-15', 'YYYY-MM-DD'),'Führungskraft',40,30,'F_FI0002',
    TO_DATE('2012-01-15', 'YYYY-MM-DD'), 'Leiter Filiale');
    Projekt_InsertMitarbeiter('Klein','Anna',4800.00,TO_DATE('1982-07-05', 'YYYY-MM-DD'),TO_DATE('2013-06-10', 'YYYY-MM-DD'),'Führungskraft',40,30,'F_FI0003',
    TO_DATE('2013-06-10', 'YYYY-MM-DD'), 'Leiter Filiale');
    Projekt_InsertMitarbeiter('Schwarz','Peter',4700.00,TO_DATE('1983-03-12', 'YYYY-MM-DD'),TO_DATE('2014-04-22', 'YYYY-MM-DD'),'Führungskraft',40,30,'F_FI0004',
    TO_DATE('2014-04-22', 'YYYY-MM-DD'), 'Leiter Filiale');

    -- Mitarbeiter für Lager 1 (F_EL0001)
    Projekt_InsertMitarbeiter('Richter','Mia',2100.00,TO_DATE('1991-12-01', 'YYYY-MM-DD'),TO_DATE('2019-05-14', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,22,'F_EL0001',
    NULL, NULL, 'T', TO_DATE('2019-05-14', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Schulz','Hannah',2200.00,TO_DATE('1993-04-18', 'YYYY-MM-DD'),TO_DATE('2021-01-02', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,23,'F_EL0001',
    NULL, NULL, 'T', TO_DATE('2021-01-02', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Zimmermann','Ines',2300.00,TO_DATE('1990-05-10', 'YYYY-MM-DD'),TO_DATE('2020-07-01', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,24,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2020-07-01', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Lang','Jörg',2400.00,TO_DATE('1987-06-05', 'YYYY-MM-DD'),TO_DATE('2019-10-30', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,25,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2019-10-30', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Weber','Felix',2200.00,TO_DATE('1990-12-12', 'YYYY-MM-DD'),TO_DATE('2021-03-01', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,26,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2021-03-01', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Hoffmann','Gabi',2100.00,TO_DATE('1994-01-08', 'YYYY-MM-DD'),TO_DATE('2020-11-15', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,22,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2020-11-15', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Schulze','Vera',2300.00,TO_DATE('1989-03-30', 'YYYY-MM-DD'),TO_DATE('2021-02-14', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,23,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2021-02-14', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Peters','Walter',2400.00,TO_DATE('1987-11-22', 'YYYY-MM-DD'),TO_DATE('2019-05-30', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,24,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2019-05-30', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Jäger','Xenia',2500.00,TO_DATE('1991-10-14', 'YYYY-MM-DD'),TO_DATE('2021-04-15', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,25,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2021-04-15', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Feldmann','Yvonne',2600.00,TO_DATE('1990-01-18', 'YYYY-MM-DD'),TO_DATE('2019-08-30', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,26,'F_EL0001', 
    NULL, NULL, 'T', TO_DATE('2019-08-30', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Götz','Elisabeth',2700.00,TO_DATE('1990-05-25', 'YYYY-MM-DD'),TO_DATE('2021-05-21', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,26,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2021-05-21', 'YYYY-MM-DD'), 'CE');

    -- Mitarbeiter für Lager 2 (F_EL0002)
    Projekt_InsertMitarbeiter('Schmidt','Clara',2200.00,TO_DATE('1993-02-10', 'YYYY-MM-DD'),TO_DATE('2020-12-01', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,22,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2020-12-01', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Fischer','Eva',2300.00,TO_DATE('1992-07-17', 'YYYY-MM-DD'),TO_DATE('2021-10-15', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,23,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2021-10-15', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Schneider','David',2400.00,TO_DATE('1988-11-25', 'YYYY-MM-DD'),TO_DATE('2020-09-05', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,24,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2020-09-05', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Müller','Stefan',2500.00,TO_DATE('1990-09-10', 'YYYY-MM-DD'),TO_DATE('2021-02-20', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,25,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2021-02-20', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Graf','Ursula',2200.00,TO_DATE('1988-01-14', 'YYYY-MM-DD'),TO_DATE('2021-04-10', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,26,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2021-04-10', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Koch','Oliver',2400.00,TO_DATE('1987-10-25', 'YYYY-MM-DD'),TO_DATE('2020-06-30', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,24,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2020-06-30', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Schwarz','Paul',2500.00,TO_DATE('1992-11-18', 'YYYY-MM-DD'),TO_DATE('2021-01-20', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,25,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2021-01-20', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Schuster','Rita',2600.00,TO_DATE('1994-03-02', 'YYYY-MM-DD'),TO_DATE('2021-02-05', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,26,'F_EL0002', 
    NULL, NULL, 'T', TO_DATE('2021-02-05', 'YYYY-MM-DD'), 'CE');

    -- Mitarbeiter für Lager 3 (F_EL0003)
    Projekt_InsertMitarbeiter('Schulze','Vera',2200.00,TO_DATE('1989-03-30', 'YYYY-MM-DD'),TO_DATE('2020-08-05', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,22,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2020-08-05', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Peters','Walter',2300.00,TO_DATE('1987-11-22', 'YYYY-MM-DD'),TO_DATE('2019-12-02', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,23,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2019-12-02', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Jäger','Xenia',2400.00,TO_DATE('1991-10-14', 'YYYY-MM-DD'),TO_DATE('2020-04-08', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,24,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2020-04-08', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Feldmann','Yvonne',2500.00,TO_DATE('1990-01-18', 'YYYY-MM-DD'),TO_DATE('2019-09-11', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,25,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2019-09-11', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Hennig','Zacharias',2200.00,TO_DATE('1986-12-03', 'YYYY-MM-DD'),TO_DATE('2020-10-15', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,26,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2020-10-15', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Kaiser','Albert',2300.00,TO_DATE('1993-07-09', 'YYYY-MM-DD'),TO_DATE('2021-02-19', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,22,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2021-02-19', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Neumann','Brigitte',2400.00,TO_DATE('1991-06-06', 'YYYY-MM-DD'),TO_DATE('2020-12-22', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,23,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2020-12-22', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Lorenz','Carla',2500.00,TO_DATE('1988-04-19', 'YYYY-MM-DD'),TO_DATE('2019-11-25', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,24,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2019-11-25', 'YYYY-MM-DD'), 'CE');
    Projekt_InsertMitarbeiter('Heinrich','Diana',2600.00,TO_DATE('1989-08-17', 'YYYY-MM-DD'),TO_DATE('2020-08-30', 'YYYY-MM-DD'),'Warenlagermitarbeiter',40,25,'F_EL0003', 
    NULL, NULL, 'T', TO_DATE('2020-08-30', 'YYYY-MM-DD'), 'CE');

    -- Einfügen von drei Leitern Warenlager
    Projekt_InsertMitarbeiter('Lange','Stefan',3500.00,TO_DATE('1985-07-10', 'YYYY-MM-DD'),TO_DATE('2021-06-01', 'YYYY-MM-DD'),'Führungskraft',40,28,'F_EL0001',
    TO_DATE('2021-06-01', 'YYYY-MM-DD'), 'Leiter Warenlager');
    
    Projekt_InsertMitarbeiter('Müller','Ingrid',3600.00,TO_DATE('1982-05-22', 'YYYY-MM-DD'),TO_DATE('2022-05-15', 'YYYY-MM-DD'),'Führungskraft',40,30,'F_EL0002',
    TO_DATE('2022-05-15', 'YYYY-MM-DD'), 'Leiter Warenlager');
    
    Projekt_InsertMitarbeiter('Neumann','Felix',3400.00,TO_DATE('1984-11-09', 'YYYY-MM-DD'),TO_DATE('2020-08-18', 'YYYY-MM-DD'),'Führungskraft',40,29,'F_EL0003',
    TO_DATE('2020-08-18', 'YYYY-MM-DD'), 'Leiter Warenlager');
    
    -- Einfügen für die Geschäftsführer
    Projekt_InsertMitarbeiter('Schön','Gustav',7800.00,TO_DATE('1960-06-15', 'YYYY-MM-DD'),TO_DATE('1990-03-01', 'YYYY-MM-DD'),'Führungskraft',38.5,24,'F_HP0001',
    TO_DATE('1990-03-01', 'YYYY-MM-DD'), 'Geschäftsführer');
    Projekt_InsertMitarbeiter('Stramke','Lucas',7500.00,TO_DATE('1970-03-01', 'YYYY-MM-DD'),TO_DATE('2015-07-01', 'YYYY-MM-DD'),'Führungskraft',38.5,26,'F_HP0001',
    TO_DATE('2015-07-01', 'YYYY-MM-DD'), 'Technischer Geschäftsführer');
    Projekt_InsertMitarbeiter('Nguyen','Toni',7500.00,TO_DATE('1975-02-12', 'YYYY-MM-DD'),TO_DATE('2018-04-01', 'YYYY-MM-DD'),'Führungskraft',38.5,28,'F_HP0001',
    TO_DATE('2018-04-01', 'YYYY-MM-DD'), 'Kaufmännischer Geschäftsführer');

    COMMIT;
END;

--DELETE PROJEKT_WARENLAGERMITARBEITER;
--DELETE PROJEKT_FUEHRUNGSKRAFT;
--DELETE PROJEKT_MITARBEITER;
