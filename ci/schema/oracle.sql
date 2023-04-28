DROP TABLE diamonds;

-- https://docs.oracle.com/database/121/DRDAS/data_type.htm#DRDAS264
-- says that NUMBER(4) -> NUMBER(4)
-- says that NUMBER(9) -> NUMBER(9)
-- says that BIGINT -> NUMBER(18)

CREATE TABLE diamonds (
    carat BINARY_FLOAT,
    cut VARCHAR2(255),
    color VARCHAR2(255),
    clarity VARCHAR2(255),
    depth BINARY_FLOAT,
    "table" BINARY_FLOAT,
    price NUMBER(18),
    x BINARY_FLOAT,
    y BINARY_FLOAT,
    z BINARY_FLOAT
) ;

DROP TABLE batting;

CREATE TABLE batting (
    "playerID" VARCHAR2(255),
    "yearID" NUMBER(18),
    stint NUMBER(18),
    "teamID" VARCHAR2(7),
    "lgID" VARCHAR2(7),
    "G" NUMBER(18),
    "AB" NUMBER(18),
    "R" NUMBER(18),
    "H" NUMBER(18),
    "X2B" NUMBER(18),
    "X3B" NUMBER(18),
    "HR" NUMBER(18),
    "RBI" NUMBER(18),
    "SB" NUMBER(18),
    "CS" NUMBER(18),
    "BB" NUMBER(18),
    "SO" NUMBER(18),
    "IBB" NUMBER(18),
    "HBP" NUMBER(18),
    "SH" NUMBER(18),
    "SF" NUMBER(18),
    "GIDP" NUMBER(18)
);

DROP TABLE awards_players;

CREATE TABLE awards_players (
    "playerID" VARCHAR2(255),
    "awardID" VARCHAR2(255),
    "yearID" NUMBER(18),
    "lgID" VARCHAR2(7),
    tie VARCHAR2(7),
    notes VARCHAR2(255)
) ;

DROP TABLE functional_alltypes;

CREATE TABLE functional_alltypes (
    id NUMBER(9),
    -- There is no boolean type in oracle
    -- and no recommendation on how to implement it
    -- I'm going with 0/1 in a NUMBER(1)
    bool_col NUMBER(1),
    tinyint_col NUMBER(2),
    smallint_col NUMBER(4),
    int_col NUMBER(9),
    bigint_col NUMBER(18),
    float_col BINARY_FLOAT,
    double_col BINARY_DOUBLE,
    date_string_col VARCHAR(255),
    string_col VARCHAR2(255),
    timestamp_col TIMESTAMP,
    year NUMBER(9),
    month NUMBER(9)
);

DROP TABLE win;

CREATE TABLE win (g VARCHAR2(8), x NUMBER(18), y NUMBER(18));
INSERT INTO win VALUES
    ('a', 0, 3),
    ('a', 1, 2),
    ('a', 2, 0),
    ('a', 3, 1),
    ('a', 4, 1);
