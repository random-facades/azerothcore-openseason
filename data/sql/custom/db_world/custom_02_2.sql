-- 
-- Change XP per level & modify a couple quests
--

UPDATE `player_xp_for_level` 
SET `Experience` = 100 * `level` * ( `level` + 1 );

UPDATE `exploration_basexp` SET `basexp` = 25;


UPDATE `quest_template`
SET `LogDescription` = 'Kill 5 Young Nightsabers and 5 Young Thistle Boars and return to Conservator Ilthalaine.', `RequiredNpcOrGoCount1` = 5, `RequiredNpcOrGoCount2` = 5
WHERE ID = 456;

UPDATE `quest_template`
SET `LogDescription` = 'Collect 6 Fel Moss and bring them to Tarindrella.', `RequiredItemCount1` = 6
WHERE ID = 459;

UPDATE `quest_template`
SET `LogDescription` = 'Bring 6 Timberling Seeds to Denelan at Lake Al\'Ameth.', `RequiredItemCount1` = 6
WHERE ID = 918;

UPDATE `quest_template`
SET `LogDescription` = 'Bring 8 Timberling Sprouts to Denalan at Lake Al\'Ameth.', `RequiredItemCount1` = 6
WHERE ID = 919;


-- Undo change to Tarindrella
UPDATE `creature` SET `wander_distance` = 0, `MovementType` = 0 WHERE `guid` = 47347 AND `id1` = 1992;


UPDATE `npc_trainer` SET `ID` = 200013 WHERE `ID` = 200014 and `SpellID` in (3127,5116,13165,14260);


UPDATE `creature_template` SET faction = 22 WHERE `entry` IN (1986, 1994);