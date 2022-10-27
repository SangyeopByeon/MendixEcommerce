ALTER TABLE "salesmanager$salesheader" ADD "salesid" VARCHAR_IGNORECASE(200) NULL;
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('abc64643-cbb9-4edb-8013-780072ac079c', 
'f900b680-9925-444a-b783-36b2234ee5d3', 
'SalesId', 
'salesid', 
30, 
200, 
'', 
false);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221025 12:04:31';
