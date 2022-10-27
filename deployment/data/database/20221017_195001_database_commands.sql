ALTER TABLE "salesmanager$product" ADD "itemcount" INT NULL;
UPDATE "salesmanager$product"
 SET "itemcount" = 0;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('25e6d39d-bf6a-44c8-bc49-d206e1313b6a', 
'174260bb-8079-47e6-9df2-ca569153e215', 
'ItemCount', 
'itemcount', 
3, 
0, 
'0', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221017 19:50:01';
