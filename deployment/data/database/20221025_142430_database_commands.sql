ALTER TABLE "salesmanager$salesheader" DROP COLUMN "salesid";
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = 'abc64643-cbb9-4edb-8013-780072ac079c';
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221025 14:24:30';
