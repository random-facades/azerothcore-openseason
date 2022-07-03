-- 
-- Initial Edits
--


-- Give spiders poison proc and remove cast poison ability
UPDATE `creature_template_addon` SET `auras` = 3616 WHERE `entry` IN (1998,1999,2000,2001);
DELETE FROM `smart_scripts` WHERE `entryorguid` IN (1998,1999,2000,2001) AND `action_param1` = 744;


-- Create two tutorial auras to slow down spell casting speed and increase mana cost
DELETE FROM `spell_dbc` WHERE `ID` IN (50333,50340);
INSERT INTO `spell_dbc` (`ID`, `CastingTimeIndex`, `ProcChance`, `DurationIndex`, `RangeIndex`, `EquippedItemClass`, 
`Effect_1`, `EffectDieSides_1`, `EffectBasePoints_1`, `ImplicitTargetA_1`, `EffectAura_1`, `EffectMiscValue_1`, `EffectMiscValueB_1`, `EffectChainAmplitude_1`,
`Effect_2`, `EffectDieSides_2`, `EffectBasePoints_2`, `ImplicitTargetA_2`, `EffectAura_2`, `EffectMiscValue_2`, `EffectMiscValueB_2`, `EffectChainAmplitude_2`,
`SpellVisualID_1`, `SpellIconID`, `Name_Lang_enUS`, `Name_Lang_Mask`, `NameSubtext_Lang_Mask`, `Description_Lang_Mask`, `AuraDescription_Lang_Mask`) VALUES 
(50333, 1, 101, 21, 1, -4,   6, 1, -34, 1, 65, 0, 0, 1,   6, 1, 49, 1, 72, 126, 1, 1,   965, 2127, 'Slow & Expensive Cast', 16712190, 16712172, 16712188, 16712188),
(50340, 1, 101, 21, 1, -1,   6, 1, -34, 1, 65, 0, 0, 1,   0, 0,  0, 0,  0,   0, 0, 1,   965, 2127, 'Slow Cast',             16712190, 16712172, 16712188, 16712188);

-- Apply those auras to "tutorial" mobs
UPDATE `creature_template_addon` SET `auras` = 50340 WHERE `entry` IN (2009,2030);
UPDATE `creature_template_addon` SET `auras` = 50333 WHERE `entry` IN (2012,2015,2017,2018,2019,2020,2021,7235);


-- Delay Webwood Venom quest until after talking to Iverron
UPDATE `quest_template_addon` SET `PrevQuestID` = 4495 WHERE `ID` = 916;

-- Delay Dolanaar Delivery quest until after finishing both Balance of Nature quests
UPDATE `quest_template_addon` SET `PrevQuestID` = 457 WHERE `ID` = 2159;


-- Reduce Level requirements for professions
UPDATE `npc_trainer` SET `ReqLevel` = 0  WHERE `SpellID` IN (2020, 2155, 2275, 2372, 2551, 2581, 3279, 3911, 4039, 4094, 7414, 7733, 7734, 8615, 18249, 25245, 31252, 45375, 51293, 54083, 54084);
UPDATE `npc_trainer` SET `ReqLevel` = 4  WHERE `SpellID` IN (2021, 2154, 2280, 2373, 2582, 3280, 3412, 3912, 4040, 7415, 8619, 25246, 45376);
UPDATE `npc_trainer` SET `ReqLevel` = 8  WHERE `SpellID` IN (3465, 3539, 3568, 3571, 3812, 3913, 4041, 7416, 8620, 28896, 45377, 54254, 54257);
UPDATE `npc_trainer` SET `ReqLevel` = 10 WHERE `SpellID` IN (33388);
UPDATE `npc_trainer` SET `ReqLevel` = 12 WHERE `SpellID` IN (9786, 10249, 10663, 10769, 10847, 11612, 11994, 12181, 12657, 13921, 18261, 28899, 33391, 45378);
UPDATE `npc_trainer` SET `ReqLevel` = 14 WHERE `SpellID` IN (34090, 40120);
UPDATE `npc_trainer` SET `ReqLevel` = 16 WHERE `SpellID` IN (26791, 28030, 28597, 28696, 28901, 29355, 29845, 30351, 32550, 32679, 34091, 45379, 54255, 54256);
UPDATE `npc_trainer` SET `ReqLevel` = 18 WHERE `SpellID` IN (22968, 44155, 54197);
UPDATE `npc_trainer` SET `ReqLevel` = 20 WHERE `SpellID` IN (27958, 28028, 32667, 44157, 44484, 44488, 44489, 44492, 44500, 44506, 44508, 44509, 44510, 44513, 44528, 44529, 44555, 44582, 44584, 44589, 44592, 44593, 44598, 44616, 44623, 44629, 44630, 44633, 44635, 44636, 44645, 45380, 47766, 47900, 50299, 50301, 50307, 50309, 51295, 51298, 51301, 51303, 51308, 51310, 51312, 59636, 60606, 60609, 60616, 60619, 60621, 60623, 60653, 60663, 60668, 61117, 61118, 61119, 61120, 61464, 62959, 69412);

-- Remove Level requirements for teleports
UPDATE `npc_trainer` SET `ReqLevel` = 0  WHERE `SpellID` IN (3561, 3562, 3563, 3565, 3566, 3567, 32271, 32272, 33690, 35715, 49358, 49359, 53140);
-- Change teleport spell cost
UPDATE `npc_trainer` SET `MoneyCost` = 2000 WHERE `ID` in (4165,5957) and `SpellID` IN (3565,3566);
UPDATE `npc_trainer` SET `MoneyCost` = 8000 WHERE `ID` in (27703,27705) and `SpellID` IN (49358,49359);

-- Reduce Level requirements for class training
UPDATE `npc_trainer` SET `ReqLevel` = 1  WHERE `SpellID` IN (348);
UPDATE `npc_trainer` SET `ReqLevel` = 2  WHERE `SpellID` IN (13163);
UPDATE `npc_trainer` SET `ReqLevel` = 3  WHERE `SpellID` IN (53, 100, 116, 172, 587, 589, 702, 774, 921, 1776, 1978, 2052, 3044, 5504, 8042, 8921, 19740, 20271);
UPDATE `npc_trainer` SET `ReqLevel` = 4  WHERE `SpellID` IN (17, 143, 332, 467, 498, 591, 639, 695, 1130, 1454, 1757, 2136, 2484, 5177, 6343, 6760, 34428);
UPDATE `npc_trainer` SET `ReqLevel` = 5  WHERE `SpellID` IN (284, 339, 674, 1715, 2687, 5171, 5186, 5277);
UPDATE `npc_trainer` SET `ReqLevel` = 6  WHERE `SpellID` IN (72, 99, 1058, 2589, 2983, 5232, 5242, 6546, 6770, 7384, 8924, 13549, 14281, 16689, 19883);
UPDATE `npc_trainer` SET `ReqLevel` = 7  WHERE `SpellID` IN (136, 1160, 2974, 6572, 20736);

UPDATE `npc_trainer` SET `ReqLevel` = 3  WHERE `SpellID` = 3127 and ID = 200001; 
UPDATE `npc_trainer` SET `ReqLevel` = 5  WHERE `SpellID` = 3127 and ID = 200013; 
UPDATE `npc_trainer` SET `ReqLevel` = 6  WHERE `SpellID` = 3127 and ID = 200016; 
UPDATE `npc_trainer` SET `ReqLevel` = 8  WHERE `SpellID` = 3127 and ID = 200004; 

-- Reduce training cost to match spell becoming available at level 2
UPDATE `npc_trainer` SET `MoneyCost` = 100 WHERE `ID` = 200013 and `SpellID` = 13163;


-- Change spell being cast by tutorial mobs (they're a bit too overpowered)
UPDATE `smart_scripts` SET `event_param3` = 10000, `event_param4` = 10000, `action_param1` = 2607 WHERE `entryorguid` = 1993 AND `source_type` = 0 AND `id` = 1 AND `link` = 0;
UPDATE `smart_scripts` SET `action_param1` = 5176 WHERE `entryorguid` = 7235 AND `source_type` = 0 AND `id` = 0 AND `link` = 0;

-- Change healer to cast healing to whoever needs it
UPDATE `smart_scripts` SET `event_type` = 14, `event_chance` = 100, `event_param1` = 50, `event_param3` = 5000, `event_param4` = 5000, `target_type` = 7, `comment` = 'Gnarlpine Shaman - On Friendly Between 0-40% Health - Cast \'Healing Wave\'' WHERE `entryorguid` = 2009 AND `source_type` = 0 AND `id` = 0 AND `link` = 0;


-- Increase chance for small bag to 1.5% per creature
UPDATE `creature_loot_template` SET `Chance` = 1.5 where `Reference` = 11111;


-- Move Anvil in Darnassus to next to smith & forge
UPDATE `gameobject` SET `position_x` = 9920, `position_y` = 2309.14, `orientation` = 4.8954 where guid = 49803;


-- Delete and recreate Druid action bars
DELETE FROM `playercreateinfo_action` WHERE `race` in (4,6) and `class` = 11;

INSERT INTO `playercreateinfo_action` (`race`, `class`, `button`, `action`, `type`) VALUES
(4,11,0,6603,0),
(4,11,1,5176,0),
(4,11,2,5185,0),
(4,11,11,58984,0),
(4,11,72,6603,0),
(4,11,83,58984,0),
(4,11,84,6603,0),
(4,11,96,6603,0),
(4,11,108,6603,0),
(6,11,0,6603,0),
(6,11,1,5176,0),
(6,11,2,5185,0),
(6,11,3,20549,0),
(6,11,72,6603,0),
(6,11,75,20549,0),
(6,11,84,6603,0),
(6,11,96,6603,0),
(6,11,108,6603,0);


-- Deleting creatures that are too clustered in Teldrassil
DELETE FROM `creature` WHERE `guid` IN (46306,48578,49172,49499);

-- Fixing Coastal Runner that was incorrectly marked as a Greymist Coastrunner 
UPDATE `creature` SET `id1` = 2174, `equipment_id` = 0, `position_z` = -12, `wander_distance` = 10, `curhealth` = 300 where guid = 37855;


-- Add Teleport training quest
DELETE FROM `quest_template` WHERE `ID` = 1600;

INSERT INTO `quest_template` (`ID`, `QuestSortID`, `RewardItem1`, `RewardAmount1`, `LogTitle`, `LogDescription`, `QuestDescription`, `QuestCompletionLog`, `VerifiedBuild`) VALUES 
(1600, -284, 17031, 3, 'Portal in Your Pocket', 'Talk to a Portal Trainer.	Congratulations!$bTeleportation is now available to all!$b$bThe core of the Hearthstone enchantment has been distilled and crafted into a spell that mimics their teleportation.$b$bJust ask and you too can be forcefully dragged through the arcane!', 'Talk to a Portal Trainer.', '', 12340);

-- Set NPCs to start the quest
INSERT INTO `creature_queststarter` (`id`, `quest`) VALUES
(2485, 1600), (2489, 1600), (2492, 1600), (4165, 1600), (5957, 1600), (5958, 1600), 
(16654, 1600), (16755, 1600), (19340, 1600), (20791, 1600), (27703, 1600), (27705, 1600), (29156, 1600);

-- Set NPCs to end the quest
INSERT INTO `creature_questender` (`id`, `quest`) VALUES
(2485, 1600), (2489, 1600), (2492, 1600), (4165, 1600), (5957, 1600), (5958, 1600), 
(16654, 1600), (16755, 1600), (19340, 1600), (20791, 1600), (27703, 1600), (27705, 1600), (29156, 1600);

-- Add text on Complete Quest Screen
INSERT INTO `quest_offer_reward` (`ID`, `RewardText`) VALUES
(1600, 'Thank you for your patronage.$bPlease take these complementary Runes.');

-- Make training button visible to all
UPDATE `conditions` SET `ConditionValue1` = 32, `NegativeCondition` = 1 WHERE `SourceGroup` IN (4821,4822,4823,4824,4825,4826,4827,8268,8433,9578,9581,9777) and `SourceTypeOrReferenceId` = 15 and `SourceEntry` = 0;


-- Add RewardItems to quests
UPDATE `quest_template` SET `RewardChoiceItemID3` = 1917, `RewardChoiceItemQuantity3` = 1 WHERE ID = 483;
UPDATE `quest_template` SET `RewardChoiceItemID3` = 2137, `RewardChoiceItemQuantity3` = 1 WHERE ID = 919;
UPDATE `quest_template` SET `RewardChoiceItemID3` = 2484, `RewardChoiceItemQuantity3` = 1 WHERE ID = 3522;

-- Remove RewardItems from quest
UPDATE `quest_template` SET `RewardItem1` = 0, `RewardAmount1` = 0 WHERE ID = 923;








