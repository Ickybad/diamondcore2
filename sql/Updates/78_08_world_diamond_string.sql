DELETE FROM `diamond_string` WHERE `entry` IN (5024,5025,5026,5027);

INSERT INTO `diamond_string` (`entry`, `content_default`) VALUES 
(5024, 'Entry: %u'),
(5025, 'Type: %u'),
(5026, 'DisplayID: %u'),
(5027, 'Name: %s');
