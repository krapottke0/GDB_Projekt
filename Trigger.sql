CREATE OR REPLACE TRIGGER after_verkauf_insert
AFTER INSERT ON Verkauf
FOR EACH ROW
DECLARE
    v_FirmenstandortID VARCHAR2(8);  -- Variable für die Firmenstandort-ID
    v_ProduktID VARCHAR2(8);         -- Variable für die Produkt-ID
    v_Menge NUMBER(38.0);            -- Variable für die Menge
    v_Lagert_ID VARCHAR2(8);         -- Variable für die Lagert-ID
    v_ANGWARENLAGER VARCHAR2(8);     -- Variable für ANGWARENLAGER
BEGIN
    -- Verkaufsort ist gleich der FirmenstandortID in der Filiale-Tabelle
    v_FirmenstandortID := :NEW.Verkaufsort;

    -- ProduktID und Menge aus dem Insert holen
    v_ProduktID := :NEW.ProduktID;

    -- Menge aus der VerkaufDetails-Tabelle holen, basierend auf der VerkaufsID
    SELECT Menge
    INTO v_Menge
    FROM PROJEKT_BEINHALTET
    WHERE VerkaufsID = :NEW.VerkaufsID;  -- Hier mit der VerkaufsID verknüpfen

    -- ANGWARENLAGER (Fremdschlüssel) aus der PROJEKT_FILIALE-Tabelle holen
    SELECT ANGWARENLAGER
    INTO v_ANGWARENLAGER
    FROM PROJEKT_FILIALE
    WHERE FirmenstandortID = v_FirmenstandortID
    AND ROWNUM = 1;  -- Sicherstellen, dass nur eine Zeile zurückgegeben wird

    -- Lagert_ID aus der PROJEKT_LAGER-Tabelle holen, basierend auf ANGWARENLAGER und ProduktID
    SELECT LAGERORT
    INTO v_Lagert_ID
    FROM PROJEKT_LAGER
    WHERE ANGWARENLAGER = v_ANGWARENLAGER
    AND ProduktID = v_ProduktID
    AND ROWNUM = 1;  -- Sicherstellen, dass nur eine Zeile zurückgegeben wird

    -- Bestand in der Lagert-Tabelle aktualisieren
    UPDATE PROJEKT_LAGERT
    SET ANZAHL = ANZAHL - v_Menge
    WHERE Lagerort = v_Lagert_ID;

END after_verkauf_insert;
