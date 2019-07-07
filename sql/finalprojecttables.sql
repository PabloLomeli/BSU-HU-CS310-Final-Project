CREATE DATABASE FinalProject;

USE FinalProject;

CREATE TABLE Item
(
    ID int auto_increment, 
    ItemCode varchar(10) NOT NULL, 
    ItemDdescription varchar(50),
    Price decimal(4,2) DEFAULT 0,
    primary key (ID),
    UNIQUE (ItemCode)
);

CREATE TABLE Purchase
(
    ID int auto_increment, 
    ItemID int NOT NULL,
    Quantity int NOT NULL,
    PurchaseDate datetime DEFAULT current_timestamp,
    Price decimal(4,2) DEFAULT 0,
    primary key (ID),
    FOREIGN KEY (ItemID) REFERENCES Item (ID)
);

CREATE TABLE Shipment
(
    ID int auto_increment, 
    ItemID int NOT NULL,
    Quantity int NOT NULL,
    ShipmentDate date NOT NULL,
    primary key (ID),
    FOREIGN KEY (ItemID) REFERENCES Item (ID),
    UNIQUE (ShipmentDate)
);