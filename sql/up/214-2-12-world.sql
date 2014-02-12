-- 尸体正确消失的方法在此
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 4331;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4331;
INSERT INTO `smart_scripts` VALUES
(4331,0, 0,0, 8,0,100,1, 42411,   1,0,0, 41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"quest credit");

UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 4329;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4329;
INSERT INTO `smart_scripts` VALUES
(4329,0, 0,0, 8,0,100,1, 42411,   1,0,0, 41,500,0,0,0,0,0,1,0,0,0,0,0,0,0,"quest credit");

UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 4328;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4328;
INSERT INTO `smart_scripts` VALUES
(4328,0, 0,0, 0,0,100,1,    0,    0, 1000, 1000, 11,18968,0,0,0,0,0,1,0,0,0,0,0,0,0,"Firemane Scalebane - In Combat - Cast Fire Shield"),
(4328,0, 1,0, 0,0, 85,0, 4000, 4000,10000,10000, 11,11972,0,0,0,0,0,2,0,0,0,0,0,0,0,"Firemane Scalebane - In Combat - Cast Shield Bash"),
(4328,0, 2,0, 0,0, 95,0, 3000, 3000,15000,15000, 11,11971,0,0,0,0,0,2,0,0,0,0,0,0,0,"Firemane Scalebane - In Combat - Cast Sunder Armor"),
(4328,0, 3,0, 8,0,100,1,42411,    1,    0,    0, 41,  500,0,0,0,0,0,1,0,0,0,0,0,0,0,"quest credit");

-- 修复掉落问题
DELETE FROM `creature_loot_template` Where `item` = 33086;

-- 追加燃翼SAI
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 23789;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 23789;
INSERT INTO `smart_scripts` VALUES
(23789,0,0,0,54,0,100,1,     0,     0,     0,     0,  1,     0, 0,0,0,0,0,1,0,0,0,0,0,0,0,""),
(23789,0,1,0, 0,0,100,1,     0,     0,     0,     0,  1,     1, 0,0,0,0,0,1,0,0,0,0,0,0,0,""),
(23789,0,2,0, 0,0,100,0,     0,     0,  2400,  3400, 11,  9053,64,0,0,0,0,2,0,0,0,0,0,0,0,""),
(23789,0,3,0, 0,0,100,0,  1000,  5000,600000,600000, 11, 18968, 1,0,0,0,0,1,0,0,0,0,0,0,0,""),
(23789,0,4,0, 0,0,100,0,  9000, 16000, 30000, 45000, 11, 11990, 1,0,0,0,0,2,0,0,0,0,0,0,0,""),
(23789,0,5,6, 6,0,100,0,     0,     0,     0,     0,  1,     2, 0,0,0,0,0,1,0,0,0,0,0,0,0,""),
(23789,0,6,0,61,0,100,0,     0,     0,     0,     0,  1,     3, 0,0,0,0,0,1,0,0,0,0,0,0,0,"");

DELETE FROM `creature_text` WHERE `entry` = 23789;
INSERT INTO `creature_text` VALUES
(23789,0,0,"洞穴中传出奥妮克希亚嘶吼的声音：石槌氏族的蠢货！你胆敢挑战我！！燃翼，杀死他们！！",16,0,100,0,0,0,""),
(23789,1,0,"黑龙军团不可战胜！我会让你死的很痛苦的！",14,0,100,0,0,0,""),
(23789,2,0,"这不可能！",14,0,100,0,0,0,""),
(23789,3,0,"奥妮克希亚怒吼道：$N，你会为你所做的付出代价！",16,0,100,0,0,0,"");


-- 追加任务对白
UPDATE `quest_template` SET `OfferRewardText` = '<布洛葛收下那些羽毛。 > $B$B布洛葛对这些羽毛感到很满意。魔力很强。布洛葛不知道迅猛龙如何给这些羽毛力量，但迅猛龙羽毛总是最适合仪式了。' Where `id` = 11158;
UPDATE `quest_template` SET `RequestItemsText` = '<布洛葛满怀希望地看着你。>$B$B你带了血沼羽毛吗?' Where `id` = 11158;

UPDATE `quest_template` SET `OfferRewardText` = '布洛葛感谢你的帮忙，虽然他知道莫格穆洛克主宰一定不会感谢你。起码幸存的石槌终于可以专心面对生者的问题，而让死者获得归属。布洛葛现在只剩下一件事了。' Where `id` = 11159;
UPDATE `quest_template` SET `RequestItemsText` = '布洛葛一定要知道，你有没有带给那些暴力的石槌之灵平静?' Where `id` = 11159;

UPDATE `quest_template` SET `OfferRewardText` = '布洛葛感谢你, $N。布洛葛对氏族军旗有个大计划！' Where `id` = 11160;
UPDATE `quest_template` SET `RequestItemsText` = '你带了石槌旌旗吗?' Where `id` = 11160;

UPDATE `quest_template` SET `OfferRewardText` = '布洛葛感谢你, $N. 一旦布洛葛把这些魔法加进图腾里，就可以使布洛葛死去的朋友获得救赎。' Where `id` = 11161;
UPDATE `quest_template` SET `RequestItemsText` = '你拿到那些精华了吗?布洛葛一定要有那些东西才能替他的朋友复仇!' Where `id` = 11161;

UPDATE `quest_template` SET `OfferRewardText` = '<布洛葛听你讲述在奥妮克希亚的巢穴入口的情况。 > $B$B布洛葛料到奥妮克希亚胆小到不敢出来面对你。就像黑龙军团总是等到确定胜利时才愿意出击。 $B$B布洛葛很感谢你的帮助, $N, 布洛葛永远不会忘记你替他做的。布洛葛永远也不会放弃让石槌回到故乡的任务。' Where `id` = 11162;
UPDATE `quest_template` SET `RequestItemsText` = '布洛葛要进行他的复仇!' Where `id` = 11162;

-- 修复任务顺序
UPDATE `quest_template` SET `PrevQuestId` = 11160 Where `Id` = 11162;


UPDATE `quest_template` SET `OfferRewardText` = '你是个好$r，我一直想着这些东西。我现在很喜欢你。$B' Where `id` = 1166;
UPDATE `quest_template` SET `OfferRewardText` = '你消灭了不少黑龙，你是个勇敢的$r。$B$B我很高兴。$B' Where `id` = 1168;
UPDATE `quest_template` SET `OfferRewardText` = '收集这些心脏和舌头确实是件危险的事。我会深入研究这个秘密，找出袭击我们以前家园的罪魁祸首。$B' Where `id` = 1169;
UPDATE `quest_template` SET `OfferRewardText` = '你跟我说那些龙干嘛?我不喜欢龙。我喜欢这儿，这儿没有龙。' Where `id` = 1170;
UPDATE `quest_template` SET `OfferRewardText` = '那个懒惰的懦夫!$B$B雷克萨还是我们领袖的时候，莫格穆洛克还挺有能力的，谁知道雷克萨一走，他就成了权力的奴仆!他不再领导我们，而是不断要求我们;他不再为他的人民服务，而是要其他人为他服务。$B$B我们一定得做点什么才行。$B' Where `id` = 1171;
UPDATE `quest_template` SET `OfferRewardText` = '太出色了!奥妮克希亚还得再等一段时间才能产出更多卵来。$B$B我代表我的族人感谢你，$N。$B$B我已经要求你做了太多，不过你还可以为石槌氏族做最后一件事。$B$B莫格穆洛克不适合领导我们，而萨尔格却是个出色的领袖，只不过因为年纪和伤痛而无法胜任。用武力把莫格穆洛克从这儿赶出去吧，只有这样我们才能选出一个新领袖，带领我们重返南方的家园。$B' Where `id` = 1172;
UPDATE `quest_template` SET `OfferRewardText` = '那个懦弱又臃肿的莫格穆洛克像个受惊的小阿一样逃跑了。你做得很好，$N。$B$B现在我们要选一个新领袖来帮助我们重新夺回我们的家园。$B' Where `id` = 1173;

UPDATE `quest_template` SET `RequestItemsText` = '我想喝酒，想要我的鼻烟，还有保险箱!你去为莫格穆洛克主宰把东西拿回来。$B$B去南边，我们以前的家。我太忙了，没法带着食人魔去拿。' Where `id` = 1166;
UPDATE `quest_template` SET `RequestItemsText` = '莫格穆洛克让所有食人魔留在这里，保卫这里的安全。我觉得食人魔应该去消灭黑龙，把原来的家夺回来。$B$B你来帮食人魔夺回原来的家。帮食人魔复仇。' Where `id` = 1168;
UPDATE `quest_template` SET `RequestItemsText` = '只要有了黑龙的舌头和心脏，我就可以找出是什么样的卑鄙野兽把它们带到了我们的家园里。我们对这些侵略者的了解越深，就越有可能找到除掉它们的办法，收复已毁灭的石槌村。$B$B当然，要说服莫格穆洛克挪动他那肥胖臃肿的身体离开这个鬼地方根本是不可能的任务……' Where `id` = 1169;
UPDATE `quest_template` SET `RequestItemsText` = '你这个小家伙干嘛来烦我?' Where `id` = 1170;
UPDATE `quest_template` SET `RequestItemsText` = '我们尊敬的莫格穆洛克主宰有什么指示?' Where `id` = 1171;
UPDATE `quest_template` SET `RequestItemsText` = '你必须尽快赶到黑龙谷去，$N。如果再不对巨龙泥沼里那些奥妮克希亚的卵采取行动的话，我们就要面对铺天盖地的敌人了。$B$B毁了她的卵!不要让黑龙肆虐我们的家园。' Where `id` = 1172;
UPDATE `quest_template` SET `RequestItemsText` = '我以为你准备把莫格穆洛克赶出村子，你却跑来要和我聊天?' Where `id` = 1173;

-- 追加莫格穆洛克大王SAI
-- 没有作战技能
-- NPC正确脱战的方法在此
UPDATE `creature_template` SET AIName='SmartAI' WHERE `entry` = 4500;
DELETE FROM `smart_scripts` WHERE `entryorguid` = 4500;
INSERT INTO `smart_scripts` VALUES
(4500,0,0,1,19,0,100,1, 1173,     0,     0,     0,  1,     0, 0,0,0,0,0,1,0,0,0,0,0,0,0,"接任务后对话"),
(4500,0,1,2,61,0,100,1,    0,     0,     0,     0,  2,    16, 0,0,0,0,0,1,0,0,0,0,0,0,0,"变换阵营"),
(4500,0,2,0,61,0,100,1,    0,     0,     0,     0, 19,   832, 0,0,0,0,0,1,0,0,0,0,0,0,0,"与玩家和NPC战斗"),
(4500,0,3,4, 2,0,100,1,    0,    15,     0,     0,  1,     1, 0,0,0,0,0,1,0,0,0,0,0,0,0,"血量15%对话"),
(4500,0,4,5,61,0,100,1,    0,     0,     0,     0, 24,     0, 0,0,0,0,0,1,0,0,0,0,0,0,0,"脱战"),
(4500,0,5,6,61,0,100,1,    0,     0,     0,     0, 18,   832, 0,0,0,0,0,1,0,0,0,0,0,0,0,"不与玩家和NPC战斗"),
(4500,0,6,7,61,0,100,1,    0,     0,     0,     0,  2,    35, 0,0,0,0,0,1,0,0,0,0,0,0,0,"切换阵营"),
(4500,0,7,0,61,0,100,1,    0,     0,     0,     0, 80,450000, 0,0,0,0,0,1,0,0,0,0,0,0,0,"运行脚本"),
(4500,0,8,0,40,0,100,1,    3,  4500,     0,     0, 41,   500, 0,0,0,0,0,1,0,0,0,0,0,0,0,"出村后消失"),
(4500,0,9,0, 1,0,100,1,    0,     0,     0,     0, 28,      0, 0,0,0,0,0,1,0,0,0,0,0,0,0,"去掉所有伤害buff");

DELETE FROM `smart_scripts` WHERE `entryorguid` = 450000;
INSERT INTO `smart_scripts` VALUES
(450000,9,0,0, 0,0,100,1, 2000, 2000,0,0,  1,   2,   0,0,0,0,0,1,0,0,0,0,0,0,    0,"对话"),
(450000,9,1,0, 0,0,100,1, 1000, 1000,0,0,  1,   3,   0,0,0,0,0,1,0,0,0,0,0,0,    0,"对话"),
(450000,9,2,0, 0,0,100,1, 2000, 2000,0,0,  1,   4,   0,0,0,0,0,1,0,0,0,0,0,0,    0,"对话"),
(450000,9,3,0, 0,0,100,1, 2000, 2000,0,0,  1,   5,   0,0,0,0,0,1,0,0,0,0,0,0,    0,"对话"),
(450000,9,4,0, 0,0,100,1, 2000, 2000,0,0, 15,1173,   0,0,0,0,0,18,120,0,0,0,0,0,    0,"对话"),
(450000,9,5,0, 0,0,100,1,  500,  500,0,0, 53,   1,4500,0,0,0,0,1,0,0,0,0,0,0,    0,"运行路点");

DELETE FROM `creature_text` WHERE `entry` = 4500;
INSERT INTO `creature_text` VALUES
(4500,0,0,"来吧，小兔崽子，让我看看你到底几斤几两重！",14,0,100,0,0,0,""),
(4500,1,0,"不！不打了！我认输了！我认输了！",14,0,100,0,0,0,""),
(4500,2,0,"莫格穆洛克捂着脸大哭起来。",16,0,100,0,0,0,""),
(4500,3,0,"黑龙军团让我感到恐惧，你还没有见识过他们真正的实力，奥妮克希亚也不过是黑龙军团的爪牙而已...",12,0,100,0,0,0,""),
(4500,4,0,"德拉兹辛比或许是对的，你们自信有面对恐惧的勇气，但是我真希望你们这份勇气能保留到面对恐惧以后...",12,0,100,0,0,0,""),
(4500,5,0,"莫格穆洛克叹了一口气，跑出了村子。",16,0,100,0,0,0,"");

DELETE FROM `waypoints` WHERE `entry` = 4500;
INSERT INTO `waypoints` VALUES
(4500,1,-3133.2465,-2912.6472,34.7517,"莫格穆洛克"),
(4500,2,-3140.9262,-2944.5727,33.8041,"莫格穆洛克"),
(4500,3,-3147.5505,-2978.9558,31.1914,"莫格穆洛克");

UPDATE `quest_template` SET `SpecialFlags` = 2 Where `Id` = 1173; 