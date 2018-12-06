DROP DATABASE IF EXISTS WEATHERSTATION;

CREATE DATABASE WEATHERSTATION;

USE WEATHERSTATION;

SET time_zone = '+01:00';

CREATE TABLE DEVICE
	(HardwareNr VARCHAR(30) not null,
    DeviceName VARCHAR(30) not null,
    Location VARCHAR(30) not null,
    primary key ( HardwareNr)
    );

CREATE TABLE DEVICEDATA
	(HardwareNr VARCHAR(30) not null,
    DataNr int default 0,
    Temperature_1 double(4,1) not null,
    Temperature_2 double(4,1),
    Luminosity_1 INT not null,
    Luminosity_2 INT not null default 200,
    Time_Interval Datetime,
    primary key ( HardwareNr, DataNr ),
    FOREIGN KEY (HardwareNr) REFERENCES DEVICE(HardwareNr)
    );
    



