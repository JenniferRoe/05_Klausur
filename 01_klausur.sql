\! cls

DROP TABLE IF EXISTS klausur;

CREATE TABLE klausur (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    datum DATE NOT NULL,
    dauer TIME NOT NULL
);

INSERT INTO klausur (name, datum, dauer) VALUES
('Datenbank_klausur', '2026-03-19', '02:00:00');

SELECT * FROM klausur;