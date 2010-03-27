ALTER TABLE characters
  ADD COLUMN `knownTitles` longtext AFTER ammoId;
 
UPDATE characters, data_backup
SET characters.knownTitles = SUBSTRING(data_backup.data,
length(SUBSTRING_INDEX(data_backup.data, ' ', 626))+2,
length(SUBSTRING_INDEX(data_backup.data, ' ', 631+1))- length(SUBSTRING_INDEX(data_backup.data, ' ', 626)) - 1);
 