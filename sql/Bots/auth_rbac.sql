SET @NPCB_PERM := '1000';

DELETE FROM `rbac_permissions` WHERE `id` BETWEEN @NPCB_PERM AND @NPCB_PERM+8;
INSERT INTO `rbac_permissions` (`id`,`name`) VALUES
(@NPCB_PERM+0,'npcbot'),
(@NPCB_PERM+1,'npcbot add'),
(@NPCB_PERM+2,'npcbot remove'),
(@NPCB_PERM+3,'npcbot reset'),
(@NPCB_PERM+4,'npcbot command'),
(@NPCB_PERM+5,'npcbot distance'),
(@NPCB_PERM+6,'npcbot info'),
(@NPCB_PERM+7,'npcbot helper'),
(@NPCB_PERM+8,'npcbot revive');

DELETE FROM `rbac_linked_permissions` WHERE `linkedId` BETWEEN @NPCB_PERM AND @NPCB_PERM+8;
INSERT INTO `rbac_linked_permissions` (`id`,`linkedId`) VALUES
('195',@NPCB_PERM+0), -- player command .npcbot
('195',@NPCB_PERM+1), -- player command .npcbot add
('195',@NPCB_PERM+2), -- player command .npcbot remove
('195',@NPCB_PERM+3), -- player command .npcbot reset
('195',@NPCB_PERM+4), -- player command .npcbot command
('195',@NPCB_PERM+5), -- player command .npcbot distance
('195',@NPCB_PERM+6), -- player command .npcbot info
('195',@NPCB_PERM+7), -- player command .npcbot helper
('198',@NPCB_PERM+8); -- moderator command .npcbot revive
