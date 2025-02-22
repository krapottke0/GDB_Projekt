--Produkt einpflegen
CREATE SEQUENCE Projekt_seq_produkt_id
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

drop SEQUENCE Projekt_seq_produkt_id;

CREATE OR REPLACE PROCEDURE Projekt_InsertProdukt(
    p_ProduktName IN Projekt_Produkt.ProduktName%type,
    p_Preis IN Projekt_Produkt.Preis%type,
    p_ProduktTyp IN Projekt_Produkt.ProduktTyp%type
)
IS
    p_ProduktID Projekt_Produkt.ProduktID%type;
BEGIN

    SELECT 'P' || TO_CHAR(Projekt_seq_produkt_id.NEXTVAL, 'FM0000000') 
    INTO p_ProduktID 
    FROM dual;

    BEGIN
        INSERT INTO Projekt_Produkt (ProduktID, ProduktName, Preis, ProduktTyp)
        VALUES (p_ProduktID, p_ProduktName, p_Preis, p_ProduktTyp);
        DBMS_OUTPUT.PUT_LINE('Produkt erfolgreich eingefügt.');
        
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Fehler beim Einfügen des Produkts: ' || SQLERRM);
    END;
    
END Projekt_InsertProdukt;

------------------------------
--zulieferer einpflegen

CREATE SEQUENCE Projekt_seq_zulieferer_id
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

drop SEQUENCE Projekt_seq_zulieferer_id;

CREATE OR REPLACE PROCEDURE Projekt_InsertZulieferer(
    z_ZuliefererName IN Projekt_Zulieferer.ZuliefererName%type,
    z_Email IN Projekt_Zulieferer.Email%type,
    z_Telefonnummer IN Projekt_Zulieferer.Telefonnummer%type,
    z_Ansprechpartner In Projekt_Zulieferer.Ansprechpartner%type,
    z_Strasse IN Projekt_Zulieferer.Strasse%type,
    z_PLZ IN Projekt_Zulieferer.PLZ%type,
    z_Stadt IN Projekt_Zulieferer.Stadt%type,
    z_Land IN Projekt_Zulieferer.Land%type
)
IS
    z_ZuliefererID Projekt_Zulieferer.ZuliefererID%type;
BEGIN

    SELECT 'Z' || TO_CHAR(Projekt_seq_zulieferer_id.NEXTVAL, 'FM0000000') 
    INTO z_ZuliefererID
    FROM dual;

    BEGIN
        INSERT INTO PROJEKT_ZULIEFERER (ZuliefererID, ZuliefererName, Email, Telefonnummer, Ansprechpartner, Strasse, PLZ, Stadt, Land)
        VALUES (z_ZuliefererID, z_ZuliefererName, z_Email, z_Telefonnummer, z_Ansprechpartner, z_Strasse, z_PLZ, z_Stadt, z_Land);
        DBMS_OUTPUT.PUT_LINE('Zulieferer erfolgreich eingefügt.');
        
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Fehler beim Einfügen des Zulieferers: ' || SQLERRM);
    END;
    
END Projekt_InsertZulieferer;

------------------------------
--Lieferung einpflegen

CREATE OR REPLACE PROCEDURE Projekt_InsertLieferung(
    l_ProduktID IN Projekt_Liefert.ProduktID%type,
    l_ZuliefererID IN Projekt_Liefert.ZuliefererID%type,
    l_LieferDatum IN Projekt_Liefert.LieferDatum%type,
    l_Anzahl IN Projekt_Liefert.Anzahl%type,
    l_PreisProStueck IN Projekt_Liefert.PreisProStueck%type
)
IS
BEGIN
    BEGIN
        INSERT INTO PROJEKT_LIEFERT (PRODUKTID, ZuliefererID, LIEFERDATUM, ANZAHL, PREISPROSTUECK)
        VALUES (l_ProduktID,l_ZuliefererID, l_LieferDatum, l_Anzahl, l_PreisProStueck);
        DBMS_OUTPUT.PUT_LINE('Lieferung erfolgreich eingefügt.');
        
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Fehler beim Einfügen der Lieferung: ' || SQLERRM);
    END;
    
END Projekt_InsertLieferung;

------------------------------
--Mitarbeiter einpflegen

CREATE SEQUENCE Projekt_seq_mitarbeiter_id
START WITH 1
INCREMENT BY 1
MAXVALUE 9999999
NOCYCLE
NOCACHE;

drop SEQUENCE Projekt_seq_mitarbeiter_id;

CREATE OR REPLACE PROCEDURE Projekt_InsertMitarbeiter(
    m_MitarbeiterNachname IN Projekt_Mitarbeiter.Nachname%TYPE,
    m_MitarbeiterVorname IN Projekt_Mitarbeiter.Vorname%TYPE,
    m_MitarbeiterGehalt IN Projekt_Mitarbeiter.Gehalt%TYPE,
    m_MitarbeiterGebDatum IN Projekt_Mitarbeiter.GebDatum%TYPE,
    m_MitarbeiterAnsDatum IN Projekt_Mitarbeiter.AnsDatum%TYPE,
    m_MitarbeiterRolle IN Projekt_Mitarbeiter.Rolle%TYPE,
    m_MitarbeiterWStunden IN Projekt_Mitarbeiter.WStunden%TYPE,
    m_MitarbeiterKTage IN Projekt_Mitarbeiter.KTage%TYPE,
    m_MitarbeiterArbeitsort IN Projekt_Mitarbeiter.Arbeitsort%TYPE,
    
    -- Zusätzliche Parameter für Führungskraft
    m_BDatum IN Projekt_Fuehrungskraft.BDatum%TYPE DEFAULT NULL,
    m_FEbene IN Projekt_Fuehrungskraft.FEbene%TYPE DEFAULT NULL,
    m_Leitungsort IN Projekt_Firmenstandort.Leiter%TYPE DEFAULT NULL,

    -- Zusätzliche Parameter für Warenlagermitarbeiter
    m_GabelstaplerS IN Projekt_Warenlagermitarbeiter.GabelstaplerS%TYPE DEFAULT NULL,
    m_letzteUnterw IN Projekt_Warenlagermitarbeiter.letzteUnterw%TYPE DEFAULT NULL,
    m_LkwS IN Projekt_Warenlagermitarbeiter.LkwS%TYPE DEFAULT NULL
)
IS
    v_MitarbeiterID Projekt_Mitarbeiter.MitarbeiterID%TYPE;
BEGIN
    SELECT 'M' || TO_CHAR(Projekt_seq_mitarbeiter_id.NEXTVAL, 'FM0000000') 
    INTO  v_MitarbeiterID 
    FROM dual;

    INSERT INTO Projekt_Mitarbeiter (MitarbeiterID, Nachname, Vorname, Gehalt, GebDatum, AnsDatum, Rolle, WStunden, KTage, Arbeitsort) 
    VALUES (
        v_MitarbeiterID, m_MitarbeiterNachname, m_MitarbeiterVorname, m_MitarbeiterGehalt, 
        m_MitarbeiterGebDatum, m_MitarbeiterAnsDatum, m_MitarbeiterRolle, 
        m_MitarbeiterWStunden, m_MitarbeiterKTage, m_MitarbeiterArbeitsort  
    );
    IF m_MitarbeiterRolle = 'Führungskraft' THEN
        INSERT INTO Projekt_Fuehrungskraft (MitarbeiterID, BDatum, FEbene) 
        VALUES (v_MitarbeiterID, m_BDatum, m_FEbene);
        DBMS_OUTPUT.PUT_LINE('Führungskraft erfolgreich eingefügt.');
        IF m_Leitungsort is not null THEN
            UPDATE PROJEKT_FIRMENSTANDORT
            Set LEITER = v_MitarbeiterID
            where FIRMENSTANDORTID = m_Leitungsort;
            DBMS_OUTPUT.PUT_LINE('Leitungsort erfolgreich aktualisiert.');
        ELSE
            DBMS_OUTPUT.PUT_LINE('Leitungsort nicht aktualisiert.');
        END IF;
    ELSIF m_MitarbeiterRolle = 'Warenlagermitarbeiter' THEN
        INSERT INTO Projekt_Warenlagermitarbeiter (MitarbeiterID, GabelstaplerS, letzteUnterw, LkwS) 
        VALUES (v_MitarbeiterID, m_GabelstaplerS, m_letzteUnterw, m_LkwS);
        DBMS_OUTPUT.PUT_LINE('Warenlagermitarbeiter erfolgreich eingefügt.');
    END IF;

END Projekt_InsertMitarbeiter;

------------------------------
--Verkauf einfügen mit automatischem Beinhaltet Eintrag

CREATE OR REPLACE PROCEDURE Projekt_InsertVerkauf(
    p_VerkaufID IN Projekt_Verkauf.VerkaufID%TYPE,
    p_ProduktID IN PROJEKT_PRODUKT.ProduktID%TYPE,
    p_Anzahl IN Projekt_Beinhaltet.Anzahl%TYPE,
    p_Verkaufsort IN Projekt_Firmenstandort.FIRMENSTANDORTID%TYPE
) AS
    v_VerkaufExistiert INTEGER;
    v_Gesamtpreis Projekt_Verkauf.Gesamtpreis%TYPE;
BEGIN
    -- Prüfen, ob die VerkaufsID bereits existiert
    SELECT COUNT(*)
    INTO v_VerkaufExistiert
    FROM Projekt_Verkauf
    WHERE VerkaufID = p_VerkaufID;

    IF v_VerkaufExistiert = 0 THEN
        -- Wenn der Verkauf noch nicht existiert erzeuge Eintrag
        INSERT INTO Projekt_Verkauf (VerkaufID, Zeitpunkt, Gesamtpreis, Verkaufsort) 
        VALUES (p_VerkaufID, SYSDATE, 0, p_Verkaufsort);
        DBMS_OUTPUT.PUT_LINE('Verkauf erfolgreich eingefügt.');
    END IF;

    -- Lege einen Eintrag in der Projekt_Beinhaltet-Tabelle an
    INSERT INTO Projekt_Beinhaltet (VerkaufsID, ProduktID, Anzahl) 
    VALUES (p_VerkaufID, p_ProduktID, p_Anzahl);
    DBMS_OUTPUT.PUT_LINE('Beinhaltet erfolgreich eingefügt.');

    -- Berechne Gesamtpreis neu
    SELECT SUM(p.Preis * b.Anzahl)
    INTO v_Gesamtpreis
    FROM Projekt_Produkt p
    JOIN Projekt_Beinhaltet b ON p.ProduktID = b.ProduktID
    WHERE b.VerkaufsID = p_VerkaufID
    GROUP BY b.VerkaufsID;

    UPDATE Projekt_Verkauf
    SET Gesamtpreis = v_Gesamtpreis
    WHERE VerkaufID = p_VerkaufID;

    COMMIT;
END Projekt_InsertVerkauf;

CREATE OR REPLACE PROCEDURE Projekt_UpdateLagertAutonomous(
    p_PRODUKTID IN Projekt_Lagert.ProduktID%type,
    p_LAGERORT IN Projekt_Lagert.LAGERORT%type,
    p_REGALNR IN Projekt_Lagert.REGALNR%type,
    p_ANZAHL IN Projekt_Lagert.ANZAHL%type
)
IS
    PRAGMA AUTONOMOUS_TRANSACTION;
BEGIN

    UPDATE PROJEKT_LAGERT
    SET Anzahl = Anzahl + p_ANZAHL
    WHERE LAGERORT = p_LAGERORT
      AND PRODUKTID = p_PRODUKTID
      AND REGALNR = p_REGALNR;

    COMMIT; 
END Projekt_UpdateLagertAutonomous;