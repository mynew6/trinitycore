DELETE FROM `smart_scripts` WHERE `entryorguid` = 9456;

INSERT INTO `smart_scripts` VALUES
(9456,0,0,0, 0,0,100,0,0,1000,4000,6000,11,11976,0,0,0,0,0,2,0,0,0,0,0,0,0,"Warlord Krom'zar - In Combat - Cast 'Strike'"),
(9456,0,1,0, 6,0,100,1,0,   0,   0,   0,11,13965,2,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Krom'zar - On Just Died - Cast 'Create Krom'zar's Banner'"),
(9456,0,2,0,11,0,100,0,0,   0,   0,   0,89,    5,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Krom'zar - On Respawn - Start Random Movement"),
(9456,0,3,0,11,0,100,0,0,   0,   0,   0, 1,    0,0,0,0,0,0,1,0,0,0,0,0,0,0,"Warlord Krom'zar - On Respawn - Say Line 0");

