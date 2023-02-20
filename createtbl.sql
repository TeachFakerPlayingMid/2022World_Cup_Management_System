-- Include your create table DDL statements in this file.
-- Make sure to terminate each statement with a semicolon (;)

-- LEAVE this statement on. It is required to connect to your database.
CONNECT TO cs421;

-- Remember to put the create table ddls for the tables with foreign key references
--    ONLY AFTER the parent tables has already been created.

-- This is only an example of how you add create table ddls to this file.
--   You may remove it.
CREATE TABLE MYTEST01
(
  id INTEGER NOT NULL
 ,value INTEGER
 ,PRIMARY KEY(id)
);

CREATE TABLE Team
(
    country VARCHAR(30) NOT NULL ,
    PRIMARY KEY (country),
    national_association VARCHAR(50) NOT NULL,
    url VARCHAR(50) NOT NULL ,
    group VARCHAR(1) NOT NULL
);

CREATE TABLE Player
(
    pid INTEGER NOT NULL ,
    PRIMARY KEY (pid),
    DOB DATE NOT NULL,
    shirt_number INTEGER NOT NULL ,
    general_position VARCHAR(10) NOT NULL,
    country VARCHAR(30) NOT NULL,
    FOREIGN KEY(country) REFERENCES Team(country)
)

CREATE TABLE Coach
(
    cid INTEGER NOT NULL ,
    PRIMARY KEY (cid) ,
    name VARCHAR(30) NOT NULL ,
    role VARCHAR(30),
    country VARCHAR(30) NOT NULL,
    FOREIGN KEY(country) REFERENCES Team(country)
)

CREATE TABLE Match
(
    identidier INTEGER NOT NULL ,
    PRIMARY KEY (identidier),
    date DATE NOT NULL ,
    time TIME NOT NULL ,
    round VARCHAR(10),
    extra_program VARCHAR(30),
    "availiability" INTEGER,
    match_length INTEGER NOT NULL ,
    match_name VARCHAR(50)
)