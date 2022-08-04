-- 
-- Make Keen Machete actually worth killing a rare for
--

UPDATE `item_template` SET `Quality` = '2', `BuyPrice` = '945', `SellPrice` = '189', `spellid_1` = '7522', `spelltrigger_1` = '1', `bonding` = '2', `RequiredDisenchantSkill` = '1', `DisenchantID` = '21' WHERE `entry` = '18610';

