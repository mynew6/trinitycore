update creature_template set minlevel=1 where creature_template.entry>70000 and creature_template.entry<80000;


-- ��ֹTC�޸� ��¼ԭ����

-- ԭ��ֵ2191
UPDATE `item_template` SET `RandomProperty`= 998 WHERE `entry` = 1259;
-- ԭ��ֵ103
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26173;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26174;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26175;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26180;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26235;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26368;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 45630;
-- ԭ��ֵ105
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26324;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26372;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26792;
-- ԭ��ֵ102
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26464;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26465;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26548;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26655;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26738;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 26843;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 27196;
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 27218;
-- ԭ��ֵ121
UPDATE `item_template` SET `RandomSuffix`= 998 WHERE `entry` = 27965;
-- ԭ��ֵ3
UPDATE `item_template` SET `subclass`= 0 WHERE `entry` = 33604;
-- ԭ��ֵ6
UPDATE `item_template` SET `spelltrigger_3`= 0 WHERE `entry` = 44851;
-- SPELL_2409
UPDATE `item_template` SET `spellid_1`= 0 WHERE `entry` = 2599;
-- SPELL_96148
UPDATE `item_template` SET `spellid_2`= 0 WHERE `entry` = 32113;
UPDATE `item_template` SET `spellid_2`= 0 WHERE `entry` = 32118;
UPDATE `item_template` SET `spellid_2`= 0 WHERE `entry` = 32128;
-- SPELL_89496
UPDATE `item_template` SET `spellid_1`= 0 WHERE `entry` = 40727;

-- ս��ָ�ӹ�
UPDATE `creature_template` SET `npcflag`= 1048576 WHERE `entry` = 17506;
UPDATE `creature_template` SET `npcflag`= 1048576 WHERE `entry` = 17507;
UPDATE `creature_template` SET `npcflag`= 1048576 WHERE `entry` = 16711;

-- ս��ָ�ӹ٣��ݶ�30��
Delete From `battlemaster_entry` Where `entry` = 34955;
Delete From `battlemaster_entry` Where `entry` = 35008;
Insert into `battlemaster_entry` Values
(34955,30),
(35008,30);

