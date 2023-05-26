CREATE TABLE friends(
    id INTEGER PRIMARY KEY AUTOINCREMENT,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL
);
INSERT INTO friends (first_name, last_name) VALUES ('Rose', 'Tyler'),('Martha','Jones'),('Donna','Noble'),('River','Song');
-- STEP 4 solution
-- INSERT OR IGNORE INTO friends (id, first_name, last_name)
-- VALUES (5, 'Jenny', 'Who');