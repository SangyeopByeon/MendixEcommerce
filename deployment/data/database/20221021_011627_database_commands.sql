CREATE SEQUENCE "administration$account__id_mxseq" AS BIGINT START WITH 1;
ALTER TABLE "administration$account" ADD "_id" BIGINT NULL;
UPDATE "administration$account"
 SET "_id" = NEXT VALUE FOR "administration$account__id_mxseq";
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('25650746-d601-44c4-ab2e-3343660284b8', 
'ec66fba1-2aad-4b62-892b-95a146ec7e22', 
'_Id', 
'_id', 
0, 
0, 
'1', 
true);
INSERT INTO "mendixsystem$sequence" ("attribute_id", 
"name", 
"start_value", 
"current_value")
 VALUES ('25650746-d601-44c4-ab2e-3343660284b8', 
'administration$account__id_mxseq', 
1, 
5);
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221021 01:16:27';
