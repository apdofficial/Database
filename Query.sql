insert into Device values ('70B3D5499DDBF4D0', 'LoPy_1', 'Enschede');
insert into Device values ('70B3D5499DDBF4D1', 'first_lopy_sensor', 'Almelo');

select * from Device;

insert into DeviceData values ('70B3D5499DDBF4D0', 1, 25.3, null, 300, 315, NOW());
insert into DeviceData values ('70B3D5499DDBF4D0', 2, 25.2, null, 299, 312, NOW());
insert into DeviceData values ('70B3D5499DDBF4D0', 3, 25.1, null, 286, 308, NOW());
insert into DeviceData values ('70B3D5499DDBF4D1', 1, 5.3, null, 50, 65, NOW());
insert into DeviceData values ('70B3D5499DDBF4D1', 2, 5.2, null, 48, 61, NOW());

select * from Devicedata;