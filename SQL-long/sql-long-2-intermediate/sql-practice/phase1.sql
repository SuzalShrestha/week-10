CREATE TABLE cats(
    id INTEGER PRIMARY KEY,
    name TEXT,
    birth_year INTEGER
);
CREATE TABLE owners(
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    last_name TEXT
);
CREATE TABLE toys(
    id INTEGER PRIMARY KEY,
    name TEXT,
    cat_id INTEGER,
    FOREIGN KEY(cat_id) REFERENCES cats(id) ON DELETE CASCADE
);
CREATE TABLE cat_owners(
    id INTEGER PRIMARY KEY,
    cat_id INTEGER,
    owner_id INTEGER,
    FOREIGN KEY(cat_id) REFERENCES cats(id) ON DELETE CASCADE,
    FOREIGN KEY(owner_id) REFERENCES owners(id) ON DELETE CASCADE
);



