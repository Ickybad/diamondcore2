-- UPDATE `mail` SET `body`=(SELECT `text` FROM `item_text` WHERE `id`=`mail`.`itemtextid`)
-- DELETE FROM item_text WHERE id IN SELECT itemtextid FROM mail;
alter table `characters`.`mail` drop column `itemTextId`;