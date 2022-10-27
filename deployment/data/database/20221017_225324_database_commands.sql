ALTER TABLE "salesmanager$sales_account" DROP CONSTRAINT "uniq_salesmanager$sales_account_salesmanager$salesid";
DROP INDEX "idx_salesmanager$sales_account_administration$account_salesmanager$sales";
DROP INDEX "idx_salesmanager$sales_product_salesmanager$product_salesmanager$sales";
ALTER TABLE "salesmanager$sales_product" RENAME TO "1f5c52f927ec4406974d3044c7b8484f";
ALTER TABLE "salesmanager$sales" RENAME TO "salesmanager$salesheader";
ALTER TABLE "salesmanager$sales_account" RENAME TO "salesmanager$salesheader_account";
ALTER SEQUENCE "salesmanager$sales__id_mxseq" RENAME TO "salesmanager$salesheader__id_mxseq";
UPDATE "mendixsystem$sequence"
 SET "name" = 'salesmanager$salesheader__id_mxseq'
 WHERE "attribute_id" = '6e4af7cf-7f9b-48e9-a799-6018f83a2971';
UPDATE "mendixsystem$entity"
 SET "entity_name" = 'SalesManager.SalesHeader', 
"table_name" = 'salesmanager$salesheader', 
"superentity_id" = NULL, 
"remote" = false, 
"remote_primary_key" = false
 WHERE "id" = 'f900b680-9925-444a-b783-36b2234ee5d3';
ALTER TABLE "salesmanager$salesheader_account" ALTER COLUMN "salesmanager$salesid" RENAME TO "salesmanager$salesheaderid";
CREATE INDEX "idx_salesmanager$salesheader_account_administration$account_salesmanager$salesheader" ON "salesmanager$salesheader_account" ("administration$accountid" ASC,"salesmanager$salesheaderid" ASC);
ALTER TABLE "salesmanager$salesheader_account" ADD CONSTRAINT "uniq_salesmanager$salesheader_account_salesmanager$salesheaderid" UNIQUE ("salesmanager$salesheaderid");
DELETE FROM "mendixsystem$unique_constraint" 
 WHERE "name" = 'uniq_salesmanager$sales_account_salesmanager$salesid' AND "column_id" = '9d06f4d9-f631-3664-8d52-f1c03b6bd413';
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_salesmanager$salesheader_account_salesmanager$salesheaderid', 
'4867bcc1-c171-42e3-9513-444d51b3ed0b', 
'9d06f4d9-f631-3664-8d52-f1c03b6bd413');
UPDATE "mendixsystem$association"
 SET "association_name" = 'SalesManager.SalesHeader_Account', 
"table_name" = 'salesmanager$salesheader_account', 
"parent_entity_id" = 'f900b680-9925-444a-b783-36b2234ee5d3', 
"child_entity_id" = 'ec66fba1-2aad-4b62-892b-95a146ec7e22', 
"parent_column_name" = 'salesmanager$salesheaderid', 
"child_column_name" = 'administration$accountid', 
"pk_index_name" = NULL, 
"index_name" = 'idx_salesmanager$salesheader_account_administration$account_salesmanager$salesheader'
 WHERE "id" = '4867bcc1-c171-42e3-9513-444d51b3ed0b';
DELETE FROM "mendixsystem$association" 
 WHERE "id" = 'ab29df64-cac3-42c7-af8c-bc272e2f3b5a';
CREATE TABLE "salesmanager$salestransation" (
	"id" BIGINT NOT NULL,
	"qty" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('8f497fac-c5cb-4db2-a672-18e2dfcd77de', 
'SalesManager.SalesTransation', 
'salesmanager$salestransation', 
false, 
false);
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('78c0240c-466c-47fe-9b64-30310ef409cd', 
'8f497fac-c5cb-4db2-a672-18e2dfcd77de', 
'Qty', 
'qty', 
3, 
0, 
'0', 
false);
CREATE TABLE "salesmanager$salestransation_product" (
	"salesmanager$salestransationid" BIGINT NOT NULL,
	"salesmanager$productid" BIGINT NOT NULL,
	PRIMARY KEY("salesmanager$salestransationid","salesmanager$productid"),
	CONSTRAINT "uniq_salesmanager$salestransation_product_salesmanager$salestransationid" UNIQUE ("salesmanager$salestransationid"));
CREATE INDEX "idx_salesmanager$salestransation_product_salesmanager$product_salesmanager$salestransation" ON "salesmanager$salestransation_product" ("salesmanager$productid" ASC,"salesmanager$salestransationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('efa5a7cb-bd92-401d-9eec-319ada52fbfb', 
'SalesManager.SalesTransation_Product', 
'salesmanager$salestransation_product', 
'8f497fac-c5cb-4db2-a672-18e2dfcd77de', 
'174260bb-8079-47e6-9df2-ca569153e215', 
'salesmanager$salestransationid', 
'salesmanager$productid', 
'idx_salesmanager$salestransation_product_salesmanager$product_salesmanager$salestransation');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_salesmanager$salestransation_product_salesmanager$salestransationid', 
'efa5a7cb-bd92-401d-9eec-319ada52fbfb', 
'bb43e2da-9480-3212-a97d-26f6f631fcb2');
CREATE TABLE "salesmanager$salestransation_salesheader" (
	"salesmanager$salestransationid" BIGINT NOT NULL,
	"salesmanager$salesheaderid" BIGINT NOT NULL,
	PRIMARY KEY("salesmanager$salestransationid","salesmanager$salesheaderid"),
	CONSTRAINT "uniq_salesmanager$salestransation_salesheader_salesmanager$salestransationid" UNIQUE ("salesmanager$salestransationid"));
CREATE INDEX "idx_salesmanager$salestransation_salesheader_salesmanager$salesheader_salesmanager$salestransation" ON "salesmanager$salestransation_salesheader" ("salesmanager$salesheaderid" ASC,"salesmanager$salestransationid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('1f6d5a3b-20e6-4a09-ba1e-38884cc7380b', 
'SalesManager.SalesTransation_SalesHeader', 
'salesmanager$salestransation_salesheader', 
'8f497fac-c5cb-4db2-a672-18e2dfcd77de', 
'f900b680-9925-444a-b783-36b2234ee5d3', 
'salesmanager$salestransationid', 
'salesmanager$salesheaderid', 
'idx_salesmanager$salestransation_salesheader_salesmanager$salesheader_salesmanager$salestransation');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_salesmanager$salestransation_salesheader_salesmanager$salestransationid', 
'1f6d5a3b-20e6-4a09-ba1e-38884cc7380b', 
'97dbe319-dbad-3b43-beb1-200319233ced');
DROP TABLE "1f5c52f927ec4406974d3044c7b8484f";
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221017 22:53:24';
