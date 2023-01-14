-- Creacion de la base de datos
CREATE DATABASE lab6
    WITH
    OWNER = postgres    
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    TEMPLATE template0;
\c lab6

-- Creacion de la tabla subContractor
CREATE TABLE subContractor(
  s_id SERIAL PRIMARY KEY,
  s_lname VARCHAR(50) NOT NULL,
  s_fname VARCHAR(50) NOT NULL,
  salary INT NOT NULL
);
-- Creacion de la tabla builder
CREATE TABLE builder(
    b_id SERIAL PRIMARY KEY,
    b_lname VARCHAR(50) NOT NULL,
    b_fname VARCHAR(50) NOT NULL,
    license VARCHAR(50) NOT NULL
);
-- Creacion de la tabla neighborhood
CREATE TABLE neighborhood(
    n_id SERIAL PRIMARY KEY,
    n_name VARCHAR(50) NOT NULL,
    city  VARCHAR(50) NOT NULL
);
-- Creacion de la tabla hireInfo
CREATE TABLE hireInfo(
     b_id INT NOT NULL,
     s_id INT NOT NULL,
     hiredate DATE NOT NULL,
     CONSTRAINT fk_hireinfo_builder
        FOREIGN KEY (b_id) REFERENCES builder(b_id),
     CONSTRAINT fk_hireinfo_SubContrator
        FOREIGN KEY (s_id) REFERENCES subContractor(s_id),
     PRIMARY KEY (b_id,s_id)
);
-- Creacion de la tabla house
CREATE TABLE house(
    h_id SERIAL PRIMARY KEY,
    h_name VARCHAR(50) NOT NULL,
    finish_date DATE NOT NULL,
    price INT NOT NULL,
    b_id INT NOT NULL,
    n_id INT NOT NULL,
    CONSTRAINT fk_house_builder
        FOREIGN KEY (b_id) REFERENCES builder(b_id),
    CONSTRAINT fk_house_neighborhood
        FOREIGN KEY (n_id) REFERENCES neighborhood(n_id)
);
