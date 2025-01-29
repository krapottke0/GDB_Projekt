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
