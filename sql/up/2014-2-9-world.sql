-- 以下补丁只针对YOLINLIN原始数据库

-- 阻止腐蚀DBC严重错误

-- 修复对话乱码并汉化
UPDATE `quest_template` SET `OfferRewardText` = '<安德罗阅读这封信件，对信中的内容感到震惊。>$B$B我们一直以来都担心部落和被遗忘者之间的合作关系，而这封信证实了我们的疑虑。随着被遗忘者暗中供应的魔法和装备，恐怖图腾将成为更可怕的敌人。卡林多的势力平衡可能因此而变的动荡不安。' Where `id` = 11185;
UPDATE `quest_template` SET `OfferRewardText` = '假如这封信的内容属实，那么被遗忘者必须提出合理的解释! $B$B恐怖图腾卖弄的这些小动作一直以来都在挑衅着酋长的耐心。我们过去一直把它视为牛头人一族的问题，但是这封信将改变这一切。 $B$B我们需要一些时间来调查这件事，但是别跟其他人谈起你今天的所见所闻。' Where `id` = 11186;

-- 恐怖图腾双杀问题
UPDATE `creature_template` set `KillCredit1` = 0 Where `entry` = 23595;

-- 塞拉摩间谍潜行等级（30831）太高,站面前都看不见
UPDATE `creature_template_addon` set `auras` = '20540' Where `entry` = 4834;

-- 无眠的幽魂不需要对话
UPDATE `creature_template` set `npcflag` = 0 Where `entry` = 23861;

-- 除巫草不是生物掉落
DELETE FROM `creature_loot_template` Where `item` = 33112;

-- 蜘蛛的眼球
UPDATE `creature_loot_template` set `mincountOrRef` = 2 Where `item` = 5884;
UPDATE `creature_loot_template` set `maxcount`      = 2 Where `item` = 5884;


-- TC说你什么好！明明都修复了就不能自己测试一下吗？非得让我才重写！！
-- 顺带修复部分联盟对话
-- 修复对话乱码并汉化(部落)
UPDATE `quest_template` SET `OfferRewardText` = '<巡察员以一种不信任的眼神看着你。 > $B$B我听说你要来...协助这次的调查。好得很。 $B$B我在废墟使用这些粉尘，来帮助我寻找可能辨认出攻击者的线索。它会让任何与攻击相关的痕迹发光。不要犹豫去检查所有可疑的东西。' Where `id` = 11124;
UPDATE `quest_template` SET `OfferRewardText` = '蹄印……我想，有可能是野猪人，或者是半人马。贫瘠之地有不少半人马，要说是他们做了这件事情，我一点也不觉得奇怪。$B$B我跟你说过吗?不仅仅是旅店被烧了……连店主的老婆和孩子都被杀了，这真是太残忍了。$B$B不管怎样，我会派卡古隆去查看那些足迹通向哪里。$B' Where `id` = 1268;
UPDATE `quest_template` SET `OfferRewardText` = '我认识这个叫帕瓦尔·雷瑟的人。他是个可怜的家伙……他抛弃了同伴，一个人躲在树林里。$B$B我派了奥格隆去追踪他，还有人怀疑雷瑟偷了我们的物资装备。我想奥格隆是向东南方向去了。$B' Where `id` = 1269;
UPDATE `quest_template` SET `OfferRewardText` = '虽然人类的装饰品味很奇怪，不过我觉得他们不会把一面铁盾挂在壁炉上方做装饰。可能是放火烧旅馆的人放在那儿的。$B$B这是个警告?或者是个威胁?$B' Where `id` = 1251;
UPDATE `quest_template` SET `OfferRewardText` = '这个盾牌很不错，又重又坚硬。不过杜高尔不需要，我自己做盾牌，不买盾牌，$N。$B$B你应该知道。$B' Where `id` = 1321;
UPDATE `quest_template` SET `OfferRewardText` = '我可不喜欢这么大的蜘蛛，因为我不能一脚把它们给踩扁。$B$B谢谢你找来这些，$N。看我剥开毒囊，把毒液滴到盾牌上……' Where `id` = 1322;
UPDATE `quest_template` SET `OfferRewardText` = '莫萨恩?很耳熟……不过一时之间……也许过会儿我能想起来。$B$B可能不是什么重要的东西。这面盾牌没什么代表性，不一定有什么特殊的意义……$B…' Where `id` = 1323;
UPDATE `quest_template` SET `OfferRewardText` = '是的，你的确是对的，这的确是我做的盾牌。$B$B不过我恐怕也没有太多有用的消息可以告诉你，$N。我打造了很多不同的盾牌和护甲，不可能知道每一个东西的去处。$B' Where `id` = 1276;
UPDATE `quest_template` SET `OfferRewardText` = '嗯!雷瑟不用再鬼鬼祟祟躲在沼泽地里了，这真是太好了。不过人类都这么虚弱，连这点小小的箭伤都恢复不了，真够丢脸的。$B$B这条线索似乎是没有进展了，我们得再找其他线索。' Where `id` = 1273;
-- 修复对话乱码并汉化(联盟)
UPDATE `quest_template` SET `OfferRewardText` = '<巡察员以一种不信任的眼神看着你。 > $B$B我听说你要来...协助这次的调查。好得很。 $B$B我在废墟使用这些粉尘，来帮助我寻找可能辨认出攻击者的线索。它会让任何与攻击相关的痕迹发光。不要犹豫去检查所有可疑的东西。' Where `id` = 11123;
UPDATE `quest_template` SET `OfferRewardText` = '蹄印，是吗?尘泥沼泽附近的确有为数非比寻常的半人马在活动。我们在去贫瘠之地的路上看到过它们的营地和据点。$B$B我会派出我们的侦察兵法格兰·哈斯迪尔，看看他能不能找到这些蹄印通往哪儿。$B' Where `id` = 1284;
UPDATE `quest_template` SET `OfferRewardText` = '找到这个守卫的徽章对我来说可不是什么好消息。 $B$B有时候这就意味这有人死在战场上，而我还得把悲伤的消息带给他们的家人，有时我们永远不知道他们发生了什么，还有些时候，事情可能比你想像中的更糟糕。' Where `id` = 1252;
UPDATE `quest_template` SET `OfferRewardText` = '嗯，我可不是制造武器和护甲的专家。我知道它们的用途，可是不懂如何制造。$B$B这个盾牌和一般盾牌没什么区别，只是旅馆的大火在上面留下了些痕迹。' Where `id` = 1253;
-- 激活后3个任务（部落）
UPDATE `quest_template` SET `PrevQuestId` = 11124 WHERE `id` = 1268;
UPDATE `quest_template` SET `PrevQuestId` = 11124 WHERE `id` = 1269;
UPDATE `quest_template` SET `PrevQuestId` = 11124 WHERE `id` = 1251;
-- 激活后3个任务（联盟）
UPDATE `quest_template` SET `PrevQuestId` = 11123 WHERE `id` = 1284;
UPDATE `quest_template` SET `PrevQuestId` = 11123 WHERE `id` = 1252;
UPDATE `quest_template` SET `PrevQuestId` = 11123 WHERE `id` = 1253;
-- 重写调查员SAI
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 23567;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23567;
INSERT INTO `smart_scripts` VALUES
(23567,0,0,0,20,0,100,1,11123,0,0,0, 1,    0,0,0,0,0,0,1,0,0,0,0,0,0,0,""),
(23567,0,1,0,20,0,100,1,11124,0,0,0, 1,    0,0,0,0,0,0,1,0,0,0,0,0,0,0,""),
(23567,0,2,3,62,0,100,0, 8761,0,0,0,11,42169,0,0,0,0,0,7,0,0,0,0,0,0,0,""),
(23567,0,3,0,61,0,100,0,    0,0,0,0,72,    0,0,0,0,0,0,7,0,0,0,0,0,0,0,"");
-- 奥格隆设置
UPDATE `creature_template` SET `unit_flags`=   0 WHERE `entry` = 4983;
UPDATE `creature_template` SET `faction_A` = 232 WHERE `entry` = 4983;
UPDATE `creature_template` SET `faction_H` = 232 WHERE `entry` = 4983;
-- 相关SAI调节
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 4983;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4983;
INSERT INTO `smart_scripts` VALUES
(4983,0,0,0, 6,0,100,1,   0,   0,0,0, 6,    1273,0,0,0,0,0,7,0,0,0,0,0,0,      0,"奥格隆死亡任务失败"),
(4983,0,1,0,19,0,100,1,1273,   0,0,0,80,  498300,0,0,0,0,0,1,0,0,0,0,0,0,      0,"任务开始执行脚本00"),
(4983,0,2,0,40,0,100,1,   5,498300,0,0,54,  3000,0,0,0,0,0,1,0,0,0,0,0,0,      0,"路点5处暂停"),
(4983,0,3,4,55,0,100,1,   5,498300,0,0, 1,     1,0,0,0,0,0,1,0,0,0,0,0,0,      0,"路点5处说话"),
(4983,0,4,0,61,0,100,1,   0,     0,0,0,66,       0,0,0,0,0,0,8,0,0,0,0,0,0,6.281,"路点5处转向雷瑟"),
(4983,0,5,0,58,0,100,1,   7,498300,0,0,80,498301,0,0,0,0,0,1,0,0,0,0,0,0,      0,"路点7执行脚本01"),
(4983,0,6,0, 6,0,100,1, 500,1500,0,0, 1,       8,0,0,0,0,0,1,0,0,0,0,0,0,      0,"战斗对白"),
(4983,0,7,0,58,0,100,1,   2,498301,0,0,80,498302,0,0,0,0,0,1,0,0,0,0,0,0,      0,"路点7执行脚本02");
DELETE FROM `smart_scripts` WHERE `entryorguid` = 498001 and `id` =  7;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 498301 and `id` = 13;
INSERT INTO `smart_scripts` VALUES
(498301,9,13,0, 0,0,100,0,13000,13000,0,0, 53,0,498301,0,0,0,2,1,0,0,0,0,0,0,    0,"召唤13S后移动");
UPDATE `smart_scripts` SET `action_param2` =498300 WHERE `entryorguid` = 498300 and `id` = 1;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 5046 and `id` = 2;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 498302;
INSERT INTO `smart_scripts` VALUES
(498302,9,0,0, 0,0,100,1, 2000, 2000,0,0,  1,6,0,0,0,0,0,1,0,0,0,0,0,0,    0,"对话"),
(498302,9,1,0, 0,0,100,1, 2000, 2000,0,0,  1,7,0,0,0,0,0,1,0,0,0,0,0,0,    0,"对话"),
(498302,9,2,0, 0,0,100,1,10000,10000,0,0, 41,0,0,0,0,0,0,1,0,0,0,0,0,0,    0,"NPC消失");
-- 调整路点
DELETE FROM `waypoints` WHERE `entry` = 4983;
DELETE FROM `waypoints` WHERE `entry` = 498300;
DELETE FROM `waypoints` WHERE `entry` = 498301;
INSERT INTO `waypoints` VALUES
(498300,1,-3349.78,-3134.81,28.5267,"Ogron"),
(498300,2,-3366.01,-3144.31,35.2659,"Ogron"),
(498300,3,-3367.34,-3164.11,35.9618,"Ogron"),
(498300,4,-3372.77,-3174.81,35.8517,"Ogron"),
(498300,5,-3378.53,-3191.64,35.7204,"Ogron"),
(498300,6,-3370.92,-3190.48,34.1671,"Ogron"),
(498300,7,-3366.86,-3209.47,33.9713,"Ogron");
INSERT INTO `waypoints` VALUES
(498301,1,-3368.86,-3211.39,34.3195,"Ogron"),
(498301,2,-3366.86,-3209.47,33.9713,"Ogron");
-- 翻译错误(巨魔->食人魔)
UPDATE `creature_text` SET `text` = '我……好吧，我也许从旅店里拿了一些东西……但是为什么食人魔要关心这个?' WHERE `entry` = 4980 and `groupid` = 2;
UPDATE `creature_text` SET `text` = '不要过来，食人魔!' WHERE `entry` = 4980 and `groupid` = 3;
UPDATE `creature_text` SET `text` = '帕瓦尔·雷瑟!终於找到你了。你现在和食人魔混在一起了?不要害怕，即便是背叛者也会得到宽恕。' WHERE `entry` = 5046 and `groupid` = 0;




-- 以下补丁只针对YOLINLIN原始数据库
DELETE FROM `smart_scripts` WHERE `entryorguid` = 24601;
INSERT INTO `smart_scripts` VALUES
(24601,0,0,0, 11,0,100,0,   0,   0,    0,    0, 11,36151,0,0,0,0,0,1,0,0,0,0,0,0,0,"Steam Rager - On Respawn - Cast Cosmetic: Steam Aura"),
(24601,0,1,0,  0,0,100,0,4000,8000,11000,14000, 11,50375,1,0,0,0,0,2,0,0,0,0,0,0,0,"Steam Rager - In Combat - Cast Steam Blast"),
(24601,0,2,0,  6,0,100,0,   0,   0,    0,    0, 11,46377,0,0,0,0,0,7,0,0,0,0,0,0,0,"Steam Rager - On Death - Kill Credit");










