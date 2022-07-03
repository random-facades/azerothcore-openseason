-- 
-- Overwrite all values in creature_classlevelstats
--

UPDATE `creature_classlevelstats` 
SET `basehp0` = CASE WHEN `level` < 32 THEN 64 * POWER(1.25, `level`) ELSE 65535 END,
    `basemana` = 0, 
    `basearmor` = CASE WHEN `level` < 47 THEN ROUND((`level` * 85 + 400) * `level` / (50 - `level`), 0) ELSE 65535 END,
    `attackpower` = CASE WHEN `level` < 37 THEN 5 * POWER(1.3, `level`) ELSE 65535 END,
    `rangedattackpower` = ROUND(`level` / 2.0, 0), 
    `damage_base` = `level` * 0.5
WHERE class = 1;

UPDATE `creature_classlevelstats` 
SET `basehp0` = CASE WHEN `level` < 32 THEN 56 * POWER(1.25, `level`) ELSE 65535 END,
    `basemana` = CASE WHEN `level` < 55 THEN 32 * POWER(1.15, `level`) ELSE 65535 END, 
    `basearmor` = CASE WHEN `level` < 47 THEN ROUND((`level` * 85 + 400) * `level` / (50 - `level`), 0) ELSE 65535 END,
    `attackpower` = CASE WHEN `level` < 37 THEN 4.5 * POWER(1.3, `level`) ELSE 65535 END,
    `rangedattackpower` = ROUND(`level` / 2.1, 0), 
    `damage_base` = `level` * 0.44
WHERE class = 2;

UPDATE `creature_classlevelstats` 
SET `basehp0` = CASE WHEN `level` < 32 THEN 64 * POWER(1.25, `level`) ELSE 65535 END,
    `basemana` = 0, 
    `basearmor` = CASE WHEN `level` < 52 THEN ROUND((`level` * 85 + 400) * `level` / (55.6 - `level`), 0) ELSE 65535 END,
    `attackpower` = CASE WHEN `level` < 37 THEN 5 * POWER(1.3, `level`) ELSE 65535 END,
    `rangedattackpower` = ROUND(`level` / 2.0, 0), 
    `damage_base` = `level` * 0.5
WHERE class = 4;

UPDATE `creature_classlevelstats` 
SET `basehp0` = CASE WHEN `level` < 33 THEN 50 * POWER(1.25, `level`) ELSE 65535 END,
    `basemana` = CASE WHEN `level` < 48 THEN 80 * POWER(1.15, `level`) ELSE 65535 END, 
    `basearmor` = CASE WHEN `level` < 58 THEN ROUND((`level` * 85 + 400) * `level` / (62.5 - `level`), 0) ELSE 65535 END,
    `attackpower` = CASE WHEN `level` < 39 THEN 2.5 * POWER(1.3, `level`) ELSE 65535 END,
    `rangedattackpower` = ROUND(`level` / 2.15, 0), 
    `damage_base` = `level` * 0.4
WHERE class = 8;


UPDATE `creature_classlevelstats` SET `basehp1` = `basehp0`, `basehp2` = `basehp0`, `damage_exp1` = `damage_base`, `damage_exp2` = `damage_base`;
