ALTER TABLE "salesmanager$sales_product" DROP CONSTRAINT "uniq_salesmanager$sales_product_salesmanager$salesid";
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_salesmanager$sales_product_salesmanager$salesid' AND "column_id" = 'abd41ae1-333d-37ba-92e7-12e2bfa373af';
CREATE TABLE "salesmanager$sales_account" (
	"salesmanager$salesid" BIGINT NOT NULL,
	"administration$accountid" BIGINT NOT NULL,
	PRIMARY KEY("salesmanager$salesid","administration$accountid"),
	CONSTRAINT "uniq_salesmanager$sales_account_salesmanager$salesid" UNIQUE ("salesmanager$salesid"));
CREATE INDEX "idx_salesmanager$sales_account_administration$account_salesmanager$sales" ON "salesmanager$sales_account" ("administration$accountid" ASC,"salesmanager$salesid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('4867bcc1-c171-42e3-9513-444d51b3ed0b', 
'SalesManager.Sales_Account', 
'salesmanager$sales_account', 
'f900b680-9925-444a-b783-36b2234ee5d3', 
'ec66fba1-2aad-4b62-892b-95a146ec7e22', 
'salesmanager$salesid', 
'administration$accountid', 
'idx_salesmanager$sales_account_administration$account_salesmanager$sales');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_salesmanager$sales_account_salesmanager$salesid', 
'4867bcc1-c171-42e3-9513-444d51b3ed0b', 
'9d06f4d9-f631-3664-8d52-f1c03b6bd413');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221017 21:56:18';
