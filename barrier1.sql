# Script to delete existing plugin ID and create and insert new plugin ID.
# Built following instructions in "How to create a data source plugin" by Natividad Baena from AlienVault.
# See Baena's instructions on how to load the .cfg config file and execute the .sql SQL file:
# https://alienvault.bloomfire.com/posts/747999-how-to-create-a-data-source-plugin

DELETE FROM plugin where id="9002";
DELETE FROM plugin_sid where plugin_id ="9002";
Insert into plugin (id,type,name,Product_type,vendor,description) VALUES (9002,1,'Barrier1',10,'Barrier1','remote syslog from Barrier1 firewall');
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,1,NULL,NULL,'Firewall Event with DF',5,5);
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,2,NULL,NULL,'Firewall Event with No DF',5,5);
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,3,NULL,NULL,'Firewall Event with IMCP and No DF',5,5);
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,4,NULL,NULL,'Firewall Event with IMCP and DF',5,5);
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,10,NULL,NULL,'DHCP Inform',5,5);
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,11,NULL,NULL,'Promiscious Mode',5,5);
Insert into plugin_sid (plugin_id,sid,category_id,class_id,name,priority,reliability) VALUES (9002,99,NULL,NULL,'Catch all Event',5,5);
