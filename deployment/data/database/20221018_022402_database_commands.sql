ALTER TABLE "salesmanager$warehouse" DROP COLUMN "warehouseid";
CREATE SEQUENCE "salesmanager$warehouse__id_mxseq" AS BIGINT START WITH 1;
ALTER TABLE "salesmanager$warehouse" ADD "_id" BIGINT NULL;
UPDATE "salesmanager$warehouse"
 SET "_id" = NEXT VALUE FOR "salesmanager$warehouse__id_mxseq";
DELETE FROM "mendixsystem$attribute" 
 WHERE "id" = '062eb9a5-adf2-4e62-8b41-85ba54ff67eb';
INSERT INTO "mendixsystem$attribute" ("id", 
"entity_id", 
"attribute_name", 
"column_name", 
"type", 
"length", 
"default_value", 
"is_auto_number")
 VALUES ('ed10ce8f-2ae2-47b6-b445-0b6be46c06c3', 
'e42b6340-52e2-4c14-b4b4-6853fb2153f2', 
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
 VALUES ('ed10ce8f-2ae2-47b6-b445-0b6be46c06c3', 
'salesmanager$warehouse__id_mxseq', 
1, 
97);
CREATE TABLE "salesmanager$inventory" (
	"id" BIGINT NOT NULL,
	"qty" INT NULL,
	PRIMARY KEY("id"));
INSERT INTO "mendixsystem$entity" ("id", 
"entity_name", 
"table_name", 
"remote", 
"remote_primary_key")
 VALUES ('71b1f4e2-6eff-42e2-92ff-503fc5530243', 
'SalesManager.Inventory', 
'salesmanager$inventory', 
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
 VALUES ('18848ab9-e496-4e34-852f-97d3fc1b96fc', 
'71b1f4e2-6eff-42e2-92ff-503fc5530243', 
'Qty', 
'qty', 
3, 
0, 
'0', 
false);
CREATE TABLE "salesmanager$inventory_warehouse" (
	"salesmanager$inventoryid" BIGINT NOT NULL,
	"salesmanager$warehouseid" BIGINT NOT NULL,
	PRIMARY KEY("salesmanager$inventoryid","salesmanager$warehouseid"),
	CONSTRAINT "uniq_salesmanager$inventory_warehouse_salesmanager$inventoryid" UNIQUE ("salesmanager$inventoryid"));
CREATE INDEX "idx_salesmanager$inventory_warehouse_salesmanager$warehouse_salesmanager$inventory" ON "salesmanager$inventory_warehouse" ("salesmanager$warehouseid" ASC,"salesmanager$inventoryid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('1fdb612e-55ea-490a-a021-3a4578ca0dc3', 
'SalesManager.Inventory_Warehouse', 
'salesmanager$inventory_warehouse', 
'71b1f4e2-6eff-42e2-92ff-503fc5530243', 
'e42b6340-52e2-4c14-b4b4-6853fb2153f2', 
'salesmanager$inventoryid', 
'salesmanager$warehouseid', 
'idx_salesmanager$inventory_warehouse_salesmanager$warehouse_salesmanager$inventory');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_salesmanager$inventory_warehouse_salesmanager$inventoryid', 
'1fdb612e-55ea-490a-a021-3a4578ca0dc3', 
'e2d72874-8dbe-3422-9b9a-6b28e243606c');
CREATE TABLE "salesmanager$inventory_product" (
	"salesmanager$inventoryid" BIGINT NOT NULL,
	"salesmanager$productid" BIGINT NOT NULL,
	PRIMARY KEY("salesmanager$inventoryid","salesmanager$productid"),
	CONSTRAINT "uniq_salesmanager$inventory_product_salesmanager$inventoryid" UNIQUE ("salesmanager$inventoryid"));
CREATE INDEX "idx_salesmanager$inventory_product_salesmanager$product_salesmanager$inventory" ON "salesmanager$inventory_product" ("salesmanager$productid" ASC,"salesmanager$inventoryid" ASC);
INSERT INTO "mendixsystem$association" ("id", 
"association_name", 
"table_name", 
"parent_entity_id", 
"child_entity_id", 
"parent_column_name", 
"child_column_name", 
"index_name")
 VALUES ('bdf9d7ff-ec7b-4a39-838a-217c517b5020', 
'SalesManager.Inventory_Product', 
'salesmanager$inventory_product', 
'71b1f4e2-6eff-42e2-92ff-503fc5530243', 
'174260bb-8079-47e6-9df2-ca569153e215', 
'salesmanager$inventoryid', 
'salesmanager$productid', 
'idx_salesmanager$inventory_product_salesmanager$product_salesmanager$inventory');
INSERT INTO "mendixsystem$unique_constraint" ("name", 
"table_id", 
"column_id")
 VALUES ('uniq_salesmanager$inventory_product_salesmanager$inventoryid', 
'bdf9d7ff-ec7b-4a39-838a-217c517b5020', 
'fcb4ecb1-0698-368a-9f96-b950894267f2');
UPDATE "mendixsystem$version"
 SET "versionnumber" = '4.2', 
"lastsyncdate" = '20221018 02:24:02';
