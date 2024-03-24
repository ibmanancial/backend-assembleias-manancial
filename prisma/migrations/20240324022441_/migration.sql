-- DropIndex
DROP INDEX "ManancialActivities_activity_date_key";

-- RenameIndex
ALTER INDEX "ManancialMembers_phone_key" RENAME TO "ManancialMembers_phone_number_key";
