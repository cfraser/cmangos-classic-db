UPDATE `creature_template`
SET
       `AIName`    = ""
WHERE  `Entry` IN (4829, 4978, 4825, 6047, 4823, 12876, 4807, 4805, 4819, 4820, 4827, 4799, 4798, 6243, 4887, 12902, 4815, 4977, 4830, 4821, 4822, 4809, 4811, 4814, 4832, 4812, 4810, 4813,                    -- Blackfathom Deeps
                   4275, 3887, 3861, 4278, 3864, 4274, 3875, 3863, 4279, 3886, 3855, 3857, 3853, 3859, 3851, 3854, 2529, 3873, 3877, 3927,                                                                      -- Deadmines
                   647, 645, 636, 1729, 598, 634, 657, 1732, 4416, 4418, 639, 3947, 641, 1731, 646, 643, 642,                                                                                                   -- Wailing Caverns
                   5048, 5053, 5056, 5055, 5761, 5756, 5755, 3671, 3669, 3673, 3674, 5775,                                                                                                                      -- Shadowfang Keep
                   1716, 1720, 1707, 1711, 1708, 1715, 1706, 1663, 1717, 1666, 1696,                                                                                                                            -- Stormwind Stockades
                   6232, 7738, 6207, 6206, 6211, 6219, 6229, 6212, 6228, 6235, 6220, 6329, 6218, 7603, 6223, 6224, 6234, 6226, 6227, 7849, 6230, 7915)                                                          -- Gnomergen
;

DELETE FROM `creature_ai_scripts`
WHERE  `creature_id` IN (4829, 4978, 4825, 6047, 4823, 12876, 4807, 4805, 4819, 4820, 4827, 4799, 4798, 6243, 4887, 12902, 4815, 4977, 4830, 4821, 4822, 4809, 4811, 4814, 4832, 4812, 4810, 4813,              -- Blackfathom Deeps
                   4275, 3887, 3861, 4278, 3864, 4274, 3875, 3863, 4279, 3886, 3855, 3857, 3853, 3859, 3851, 3854, 2529, 3873, 3877, 3927,                                                                      -- Deadmines
                   647, 645, 636, 1729, 598, 634, 657, 1732, 4416, 4418, 639, 3947, 641, 1731, 646, 643, 642,                                                                                                   -- Wailing Caverns
                   5048, 5053, 5056, 5055, 5761, 5756, 5755, 3671, 3669, 3673, 3674, 5775,                                                                                                                      -- Shadowfang Keep
                   1716, 1720, 1707, 1711, 1708, 1715, 1706, 1663, 1717, 1666, 1696,                                                                                                                            -- Stormwind Stockades
                   6232, 7738, 6207, 6206, 6211, 6219, 6229, 6212, 6228, 6235, 6220, 6329, 6218, 7603, 6223, 6224, 6234, 6226, 6227, 7849, 6230, 7915)                                                          -- Gnomergen
;