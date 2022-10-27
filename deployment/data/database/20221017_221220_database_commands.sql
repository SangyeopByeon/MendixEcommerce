ALTER TABLE "salesmanager$sales" DROP COLUMN "salesid";
DROP SEQUENCE "salesmanager$sales_salesid_mxseq";
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" = '1409dc08-ee43-4692-bef4-71c615e4ab9f';
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '1409dc08-ee43-4692-bef4-71c615e4ab9f';
DELETE FROM "mendixsystem$sequence" 
 WHERE "attribute_id" = '1409dc08-ee43-4692-bef4-71c615e4ab9f';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221017 22:12:20';
