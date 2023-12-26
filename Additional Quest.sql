CREATE TABLE IF NOT EXISTS Department (
    Department_ID SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT null,
    boss VARCHAR(40) NOT null
);

CREATE TABLE IF NOT EXISTS Worker (
    Worker_ID SERIAL PRIMARY KEY,
    name VARCHAR(40) NOT NULL,
    boss VARCHAR(40) NOT null,
    Department INTEGER REFERENCES Department(Department_ID)
);