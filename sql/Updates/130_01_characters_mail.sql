alter table `characters`.`mail` add column `body` longtext CHARSET utf8 COLLATE utf8_general_ci NULL after `subject`;
UPDATE `mail` SET `body` = (SELECT `text` FROM `item_text` WHERE `item_text`.`id`=`mail`.`itemTextId`);
DELETE FROM `item_text` WHERE `id` IN (SELECT `itemTextId` FROM `mail`);
ALTER TABLE `mail` DROP COLUMN `itemTextId`;
 