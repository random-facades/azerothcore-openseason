-- 
-- Zone/Race combo edits
--

ALTER TABLE `characters` 
ADD COLUMN `startZone` TINYINT UNSIGNED NOT NULL DEFAULT '0' AFTER `innTriggerId`;


