-- 
-- Overload Databases
--



CREATE TABLE `creature_template_overload` (
   `entry` mediumint unsigned NOT NULL DEFAULT '0',
   `name` char(100) NOT NULL DEFAULT '0',
   `subname` char(100) DEFAULT NULL,
   `unit_class` tinyint unsigned NOT NULL DEFAULT '0',
   `minlevel` tinyint unsigned NOT NULL DEFAULT '1',
   `maxlevel` tinyint unsigned NOT NULL DEFAULT '1',
   `rank` tinyint unsigned NOT NULL DEFAULT '0',
   `dmgschool` tinyint NOT NULL DEFAULT '0',
   `DamageModifier` float NOT NULL DEFAULT '1',
   `BaseAttackTime` int unsigned NOT NULL DEFAULT '0',
   `RangeAttackTime` int unsigned NOT NULL DEFAULT '0',
   `BaseVariance` float NOT NULL DEFAULT '1',
   `RangeVariance` float NOT NULL DEFAULT '1',
   `mingold` mediumint unsigned NOT NULL DEFAULT '0',
   `maxgold` mediumint unsigned NOT NULL DEFAULT '0',
   `RegenHealth` tinyint unsigned NOT NULL DEFAULT '1',
   `HealthModifier` float NOT NULL DEFAULT '1',
   `ManaModifier` float NOT NULL DEFAULT '1',
   `ArmorModifier` float NOT NULL DEFAULT '1',
   `ExperienceModifier` float NOT NULL DEFAULT '1',
   `mechanic_immune_mask` int unsigned NOT NULL DEFAULT '0',
   `spell_school_immune_mask` int unsigned NOT NULL DEFAULT '0',
   PRIMARY KEY (`entry`),
   KEY `idx_name` (`name`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `item_template_overload` (
   `entry` mediumint unsigned NOT NULL DEFAULT '0',
   `name` varchar(255) NOT NULL DEFAULT '',
   `Quality` tinyint unsigned NOT NULL DEFAULT '0',
   `BuyPrice` bigint NOT NULL DEFAULT '0',
   `SellPrice` int unsigned NOT NULL DEFAULT '0',
   `ItemLevel` smallint unsigned NOT NULL DEFAULT '0',
   `RequiredLevel` tinyint unsigned NOT NULL DEFAULT '0',
   `StatsCount` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_type1` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value1` smallint NOT NULL DEFAULT '0',
   `stat_type2` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value2` smallint NOT NULL DEFAULT '0',
   `stat_type3` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value3` smallint NOT NULL DEFAULT '0',
   `stat_type4` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value4` smallint NOT NULL DEFAULT '0',
   `stat_type5` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value5` smallint NOT NULL DEFAULT '0',
   `stat_type6` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value6` smallint NOT NULL DEFAULT '0',
   `stat_type7` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value7` smallint NOT NULL DEFAULT '0',
   `stat_type8` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value8` smallint NOT NULL DEFAULT '0',
   `stat_type9` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value9` smallint NOT NULL DEFAULT '0',
   `stat_type10` tinyint unsigned NOT NULL DEFAULT '0',
   `stat_value10` smallint NOT NULL DEFAULT '0',
   `ScalingStatDistribution` smallint NOT NULL DEFAULT '0',
   `ScalingStatValue` int unsigned NOT NULL DEFAULT '0',
   `dmg_min1` float NOT NULL DEFAULT '0',
   `dmg_max1` float NOT NULL DEFAULT '0',
   `dmg_type1` tinyint unsigned NOT NULL DEFAULT '0',
   `dmg_min2` float NOT NULL DEFAULT '0',
   `dmg_max2` float NOT NULL DEFAULT '0',
   `dmg_type2` tinyint unsigned NOT NULL DEFAULT '0',
   `delay` smallint unsigned NOT NULL DEFAULT '1000',
   `ArmorDamageModifier` float NOT NULL DEFAULT '0',
   `armor` smallint unsigned NOT NULL DEFAULT '0',
   `block` mediumint unsigned NOT NULL DEFAULT '0',
   `holy_res` tinyint unsigned NOT NULL DEFAULT '0',
   `fire_res` tinyint unsigned NOT NULL DEFAULT '0',
   `nature_res` tinyint unsigned NOT NULL DEFAULT '0',
   `frost_res` tinyint unsigned NOT NULL DEFAULT '0',
   `shadow_res` tinyint unsigned NOT NULL DEFAULT '0',
   `arcane_res` tinyint unsigned NOT NULL DEFAULT '0',
   `MaxDurability` smallint unsigned NOT NULL DEFAULT '0',
   `socketColor_1` tinyint NOT NULL DEFAULT '0',
   `socketContent_1` mediumint NOT NULL DEFAULT '0',
   `socketColor_2` tinyint NOT NULL DEFAULT '0',
   `socketContent_2` mediumint NOT NULL DEFAULT '0',
   `socketColor_3` tinyint NOT NULL DEFAULT '0',
   `socketContent_3` mediumint NOT NULL DEFAULT '0',
   `socketBonus` mediumint NOT NULL DEFAULT '0',
   `GemProperties` mediumint NOT NULL DEFAULT '0',
   `RequiredDisenchantSkill` smallint NOT NULL DEFAULT '-1',
   PRIMARY KEY (`entry`),
   KEY `idx_name` (`name`(250))
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `playercreateinfo_skills_overload` (
   `raceMask` int unsigned NOT NULL,
   `classMask` int unsigned NOT NULL,
   `skill` smallint unsigned NOT NULL,
   `Inheritable` tinyint unsigned NOT NULL DEFAULT '0',
   `comment` varchar(255) DEFAULT NULL,
   PRIMARY KEY (`raceMask`,`classMask`,`skill`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci

CREATE TABLE `quest_template_overload` (
   `ID` mediumint unsigned NOT NULL DEFAULT '0',
   `QuestLevel` smallint NOT NULL DEFAULT '0',
   `MinLevel` smallint unsigned NOT NULL DEFAULT '0',
   `MinPartialLevel` smallint unsigned NOT NULL DEFAULT '0',
   `RewardXPDifficulty` smallint unsigned NOT NULL DEFAULT '0',
   `RewardMoney` int NOT NULL DEFAULT '0',
   `RewardMoneyDifficulty` int unsigned NOT NULL DEFAULT '0',
   `RewardBonusMoney` int unsigned NOT NULL DEFAULT '0',
   `QuestName` text,
   PRIMARY KEY (`ID`)
 ) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci





