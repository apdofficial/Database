DROP DATABASE IF EXISTS Weatherstation;

CREATE DATABASE Weatherstation;

USE Weatherstation;

SET time_zone = '+01:00';

CREATE TABLE Device(
    HardwareID VARCHAR(40) not null,
    DeviceName VARCHAR(40) not null,
    Location VARCHAR(40) not null,
    PRIMARY KEY (HardwareID)
    );

CREATE TABLE Devicedata(
	HardwareID VARCHAR(40) not null,
    DataNr int default 0,
    Temperature double(4,1),
    Luminosity INT not null,
    Humidity INT not null,
    Pressure INT not null ,
    Time_Interval Datetime,
    PRIMARY KEY (HardwareID, DataNr ),
    FOREIGN KEY (HardwareID) REFERENCES Device(HardwareID)
    );
    
-- Dick's First Push
-- Bjorn's


