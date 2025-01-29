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
    l_Anzahl IN Projekt_Liefert.Anzahl%type,
    l_PreisProStueck IN Projekt_Liefert.PreisProStueck%type
)
IS
BEGIN
    BEGIN
        INSERT INTO PROJEKT_LIEFERT (PRODUKTID, ZuliefererID, ANZAHL, PREISPROSTUECK)
        VALUES (l_ProduktID,l_ZuliefererID, l_Anzahl, l_PreisProStueck);
        DBMS_OUTPUT.PUT_LINE('Lieferung erfolgreich eingefügt.');
        
    EXCEPTION
        WHEN OTHERS THEN
            DBMS_OUTPUT.PUT_LINE('Fehler beim Einfügen der Lieferung: ' || SQLERRM);
    END;
    
END Projekt_InsertLieferung;