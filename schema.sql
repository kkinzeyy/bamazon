/* create database */
CREATE database bamazon;

/* select database */
USE bamazon;

/* create table for products */

CREATE table inventory
(
    item_id INT
    AUTO_INCREMENT NOT NULL,
    department_name VARCHAR
    (50) NOT NULL,
    product_name VARCHAR
    (50) NOT NULL,
    price DECIMAL
    (10,3) NOT NULL,
    instock_qty INT
    (10) NOT NULL,
    primary key
    (item_id)
    
);

    /* putting info to table */

    SELECT *
    FROM inventory;

    INSERT INTO inventory
        (department_name, product_name, price, instock_qty)
    VALUES
        (" Computer Hardware ", "Intel i7-8700 cpu", 315.99, 88),
        (" Video games ", "The Legend of Zelda: Breath of the Wild", 59.99, 354),
        (" Books ", "An Effective Guide On How To Overcome Procrastination", 2.99, 210),
        (" Automotive ", "Backup/Front View Camera", 39.99, 564),
        (" Accessories ", "Bluetooth Ear-piece", 19.99, 954),
        (" Phones ", "Galaxy S10", 1149.99, 238),
        (" Kitchenware ", "Waffle Iron", 18.99, 321);