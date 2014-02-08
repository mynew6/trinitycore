-- 捎带手汉化
UPDATE `quest_template` SET `OfferRewardText` = '普兹克派你来的，是吗?你要知道，在普兹克退休去为车队工作之前，他是安德麦最令人尊敬的工匠之一。$B$B他加入赛车队后的第一件事就是开发了双引擎赛车。如果他没有为技工协会工作过，这些事儿就不会那么顺畅了，但谁会关心这个呢，对吧?再没有比赛车更让人关心的啦!$B' Where `id` = 1178;



-- 修复任务-沃姆什的喜悦
UPDATE `smart_scripts` SET `action_param6` = 0 Where `entryorguid` = 779000 and `id` = 2;
UPDATE `smart_scripts` SET `target_type`   = 7 Where `entryorguid` = 779000 and `id` = 2;
-- ???è?±??30S????15S
UPDATE `smart_scripts` SET `event_param1` = 1000 Where `entryorguid` = 779000 and `id` = 0;
UPDATE `smart_scripts` SET `event_param2` = 1000 Where `entryorguid` = 779000 and `id` = 0;
UPDATE `smart_scripts` SET `event_param1` = 15000 Where `entryorguid` = 779000 and `id` = 1;
UPDATE `smart_scripts` SET `event_param2` = 15000 Where `entryorguid` = 779000 and `id` = 1;

-- ?????±??33S????3S
UPDATE `smart_scripts` SET `event_param1` = 3000 Where `entryorguid` = 779000 and `id` = 2;
UPDATE `smart_scripts` SET `event_param2` = 3000 Where `entryorguid` = 779000 and `id` = 2;

UPDATE `smart_scripts` SET `event_flags` = 1     Where `entryorguid` = 779000;


-- ???à???í??
UPDATE `smart_scripts` SET `action_param6` = 0 Where `entryorguid` = 785300 and `id` = 0;
UPDATE `smart_scripts` SET `target_type`   = 7 Where `entryorguid` = 785300 and `id` = 0; 





 










