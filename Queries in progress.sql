-- =====================================================================================================================================================
-- ============================================Everything below here is still not really working========================================================
-- =====================================================================================================================================================

select device.devicename, devicedata.datanr, devicedata.temperature_1, devicedata.Luminosity_1, devicedata.Luminocity_2
from Devicedata, device where
devicedata.devicenr = device.devicenr
and device.deviceNr = 1;
        
insert into DeviceData (DeviceNr, Temperature_1, Temperature_2, Luminosity_1, Time_interval) values (1, 25.3, null, 286, NOW());

insert into DeviceData values (2, 0, 5.4, null, 50, 65, NOW());

select * from Devicedata;

select max(d1.datanr)+1
from devicedata d1, devicedata d2
where d1.devicenr in (select d1.devicenr
from devicedata d1, devicedata d2
where d1.devicenr = d2.devicenr
and d1.datanr = 0);

select devicenr
		from devicedata
		where datanr = 0;

UPDATE DEVICEDATA
		Set datanr = (select max(d1.datanr)+1
		from devicedata d1, devicedata d2
		where d1.devicenr in (select d1.devicenr
		from devicedata d1, devicedata d2
		where d1.devicenr = d2.devicenr
		and d1.datanr = 0))
        Where (select devicenr
		from devicedata
		where datanr = 0)
        and datanr = 0;
        

DROP TRIGGER IF EXISTS datanr_adjustment;
-- CREATE TRIGGER datanr_adjustment AFTER INSERT ON devicedata FOR EACH ROW UPDATE devicedata SET max(datanr)+1WHERE datanr
CREATE TRIGGER datanr_adjustment AFTER INSERT ON
	devicedata FOR EACH ROW 
    
	UPDATE devicedata d1, devicedata d2
		Set d1.datanr = max(d1.datanr)+1
        where d1.devicenr in (select d1.devicenr
		from devicedata d1, devicedata d2
		where d1.devicenr = d2.devicenr
		and d1.datanr = 0);
        
SHOW TRIGGERS;




