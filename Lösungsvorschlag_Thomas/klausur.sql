\! cls

SHOW DATABASES;
DROP DATABASE klausur;
CREATE DATABASE klausur;
use klausur;
-- -- call 
-- -- source 06_Klausur\klausur.sql

# Bestehende Tabelle löschen, falls vorhanden
DROP TABLE IF EXISTS adressbook;
# Tabelle erzeugen
CREATE TABLE adressbook(
    id INT PRIMARY KEY AUTO_INCREMENT,
    nachname VARCHAR(45),
    vorname VARCHAR(45),
    plz INT,
    ort VARCHAR(45)
);

# Tabelle Info
DESCRIBE adressbook;

# Tabelle befüllen
INSERT INTO adressbook(nachname, vorname, plz, ort) 
VALUES ('Müller', 'Peter', '12991', 'Berlin');

INSERT INTO adressbook(nachname, vorname, plz, ort) 
VALUES ('Ay', 'Yildiz', '63325', 'Langen');

INSERT INTO adressbook(nachname, vorname, plz, ort) 
VALUES ('Sommer', 'Petra', '70137', 'Stuttgart');

# Ausgabe alle Inhalte
SELECT * FROM klausur.adressbook;

# Ausgabe Inhalte Vorname & Nachname deren Vorname "Pet%"
SELECT 'Ausgabe Inhalte Vorname & Nachname deren Vorname "Pet%"';
SELECT vorname, nachname FROM klausur.adressbook
WHERE vorname LIKE "Pet%";