-- This ensures that SQLite enforces FOREIGN KEY constraints
PRAGMA foreign_keys = 1;
DROP TABLE IF EXISTS instruments;
DROP TABLE IF EXISTS musicians;
DROP TABLE IF EXISTS bands;

CREATE TABLE bands (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  name VARCHAR(100)
);
CREATE TABLE musicians (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  first_name VARCHAR(100) NOT NULL,
  last_name VARCHAR(100),
  bands_id INTEGER NOT NULL,
  FOREIGN KEY (bands_id) REFERENCES bands(id)
);
CREATE TABLE instruments (
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  type VARCHAR(100) NOT NULL
);
INSERT INTO bands (name) VALUES ('The Beatles');
INSERT INTO musicians (first_name, last_name, bands_id) VALUES ('John', 'Lennon', 1);
--many to many relationship 
CREATE TABLE musicians_instruments(
  id INTEGER PRIMARY KEY AUTOINCREMENT,
  musicians_id INTEGER NOT NULL,
  instruments_id INTEGER NOT NULL,
  FOREIGN KEY (musicians_id) REFERENCES musicians(id),
  FOREIGN KEY (instruments_id) REFERENCES instruments(id)
);