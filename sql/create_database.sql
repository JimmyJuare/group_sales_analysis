CREATE DATABASE sales_db;
USE sales_db;

DROP TABLE IF EXISTS sales_data;

CREATE TABLE sales_data (
    ordernumber INT,
    quantityordered INT,
    priceeach DECIMAL(10,2),
    orderlinenumber INT,

    sales DECIMAL(10,2),

    -- FIX: import as text first to avoid date errors
    orderdate VARCHAR(50),

    status VARCHAR(50),

    qtr_id INT,
    month_id INT,
    year_id INT,

    productline VARCHAR(100),
    msrp INT,
    productcode VARCHAR(50),

    customername VARCHAR(100),
    phone VARCHAR(50),

    addressline1 VARCHAR(150),
    addressline2 VARCHAR(150),

    city VARCHAR(100),
    state VARCHAR(100),
    postalcode VARCHAR(20),
    country VARCHAR(50),
    territory VARCHAR(50),

    contactlastname VARCHAR(100),
    contactfirstname VARCHAR(100),

    dealsize VARCHAR(20)
);
