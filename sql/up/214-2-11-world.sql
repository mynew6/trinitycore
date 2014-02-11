-- 以下补丁只针对YOLINLIN原始数据库
-- 黑蹄军备不是生物掉落
DELETE FROM `creature_loot_template` Where `item` = 33071;


-- 龙尾草不是生物掉落
DELETE FROM `creature_loot_template` Where `item` = 33175;

-- 尘泥沼泽护送任务丢失对话
DELETE FROM `creature_text` WHERE `entry` = 4880;
INSERT INTO `creature_text` VALUES
(4880,0,0,"好的，我们出发吧！",12,0,100,0,0,0,           "stinky - quest accepted"),
(4880,1,0,"接下来我们要去寻找睡菜了。",12,0,100,0,0,0,   "stinky - say1"),
(4880,2,0,"唉，这没有...",12,0,100,0,0,0,                "stinky - say2"),
(4880,3,0,"这附近肯定会有，至少会有一株...",12,0,100,0,0,0,"stinky - say3"),
(4880,4,0,"啊，那有一株！",12,0,100,0,0,0,                  "stinky - say4"),
(4880,5,0,"快来,$N!我们赶快过去采集。",12,0,100,0,0,0,      "stinky - say5"),
(4880,6,0,"好了，我们抓紧时间离开吧！",12,0,100,0,0,0,       "stinky - say6"),
(4880,7,0,"我可以自己回去的。谢谢你，$N！去和我的老板谈谈，他会好好奖励你的！",12,0,100,0,0,0,"stinky - quest complete"),
(4880,8,0,"救命，该死的野兽在攻击我！",12,0,100,0,0,0,       "stinky - aggro"),
(4880,9,0,"%S消失在丛林里。",12,0,100,0,0,0,                 "stinky - emote disapper");

UPDATE `item_template` SET `BuyPrice` = 28 WHERE `entry` = 17058;
UPDATE `item_template` SET `SellPrice` = 7 WHERE `entry` = 17058;