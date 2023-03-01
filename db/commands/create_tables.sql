CREATE TABLE user_details (
    id INTEGER PRIMARY KEY,
    email TEXT,
    password TEXT
);

CREATE TABLE staff_details (
    id INTEGER PRIMARY KEY,
    first_name TEXT,
    surname TEXT,
    email TEXT,
    password TEXT,
    role TEXT
);
