-------------------[Credits]-------------------
-- Written by Lilpimp --
-- MMOwned.com --
--Edited for this repack by Avatar--
--------------------[Script]--------------------
function Teleporter_MainMenu(pUnit, player)
    local race=player:GetPlayerRace()
    if race==1 or race==3 or race==4 or race==7 or race==11 then
    pUnit:GossipCreateMenu(3544, player, 0)
   pUnit:GossipMenuAddItem(0, "Alliance Citys", 15, 0)
   pUnit:GossipMenuAddItem(0, "Profession Town", 590, 0)
   pUnit:GossipMenuAddItem(0, "Global Locations", 302, 0)
   pUnit:GossipMenuAddItem(7, "Azeroth Instance/Raids", 19, 0)
   pUnit:GossipMenuAddItem(7, "Outland Instance/Raids", 17, 0)
   pUnit:GossipMenuAddItem(7, "Northrend Instances/Raids", 620, 0)
   pUnit:GossipMenuAddItem(2, "Shattrath", 135, 0)
   pUnit:GossipMenuAddItem(2, "Dalaran", 601, 0)
   pUnit:GossipMenuAddItem(2, "Lordaeron City", 212, 0)
   pUnit:GossipMenuAddItem(0, "Custom Locations", 20000, 0)
   pUnit:GossipMenuAddItem(8, "Buff Me Up!", 900, 0)
   pUnit:GossipMenuAddItem(5, "Remove Ressurection Sickness", 901, 0)
   pUnit:GossipSendMenu(player)
else
   pUnit:GossipCreateMenu(3544, player, 0) 
   pUnit:GossipMenuAddItem(0, "Horde Citys", 16, 0)
   pUnit:GossipMenuAddItem(0, "Profession Town", 590, 0)
   pUnit:GossipMenuAddItem(0, "Global Locations", 302, 0)
   pUnit:GossipMenuAddItem(7, "Azeroth Instance/Raids", 19, 0)
   pUnit:GossipMenuAddItem(7, "Outland Instance/Raids", 17, 0)
   pUnit:GossipMenuAddItem(7, "Northrend Instances/Raids", 620, 0)
   pUnit:GossipMenuAddItem(2, "Shattrath", 135, 0)
   pUnit:GossipMenuAddItem(2, "Dalaran", 601, 0)
   pUnit:GossipMenuAddItem(2, "Lordaeron City", 212, 0)
   pUnit:GossipMenuAddItem(0, "Custom Locations", 20000, 0)
   pUnit:GossipMenuAddItem(8, "Buff Me Up!", 900, 0)
   pUnit:GossipMenuAddItem(5, "Remove Ressurection Sickness", 901, 0)
   pUnit:GossipSendMenu(player)
   end
end

function Teleporter_OnGossip_Talk(pUnit, event, player)
Teleporter_MainMenu(pUnit, player)
end

 function Teleporter_OnGossip_Select(pUnit, event, player, id, intid, code, pMisc)
 if(intid == 1) then 
 player:Teleport(609, 2357.979951, -5662.729980, 426.028015)
 pUnit:GossipComplete(player)
 end

if(intid == 590) then 
 player:Teleport(1, 7447.495605, -1694.264648, 194.930283)
 pUnit:GossipComplete(player)
 end

if(intid == 212) then 
 player:Teleport(572, 1083.790039, 1460.900024, 34.540001)
 pUnit:GossipComplete(player)
 end

if(intid == 16) then
pUnit:GossipCreateMenu(3543, player, 0) 
pUnit:GossipMenuAddItem(1, "Orgrimmar", 38, 0)
pUnit:GossipMenuAddItem(1, "Undercity", 39, 0)
pUnit:GossipMenuAddItem(1, "Thunder Bluff", 40, 0)
pUnit:GossipMenuAddItem(1, "Silvermoon City", 41, 0)
pUnit:GossipMenuAddItem(1, "Horde Mall", 481, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 20000) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(1, "Lv road", 11000, 0)
pUnit:GossipMenuAddItem(6, "World Mall", 12000, 0)
pUnit:GossipMenuAddItem(1, "Custom Instances", 13000, 0)
pUnit:GossipMenuAddItem(0, "Stair Events", 14000, 0)
pUnit:GossipMenuAddItem(0, "Maze Events", 15000, 0)
pUnit:GossipMenuAddItem(0, "Chess Event", 40000, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 13000) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Death Caves", 16000, 0)
pUnit:GossipMenuAddItem(5, "Alcz Island", 17000, 0)
pUnit:GossipMenuAddItem(5, "Scarlet Hands", 30000, 0)
pUnit:GossipMenuAddItem(5, "StormV Jail", 31000, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 14000) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(1, "Stairs of Eternity", 18000, 0)
pUnit:GossipMenuAddItem(1, "Stairs 1", 21000, 0)
pUnit:GossipMenuAddItem(1, "Stairs 2", 23000, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 15000) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(1, "Crazy Maze", 19000, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 11000) then
    player:Teleport(1, 4503.259766, -2208.580078, 1182.910034)
end

if(intid == 12000) then
    player:Teleport(1, -5595.390137, 822.955017, 91.666901)
end

if(intid == 16000) then
    player:Teleport(1, -10800.299805, 2198.949951, 1.457430)
end

if(intid == 17000) then
    player:Teleport(1, -2711.067871, -4667.222656, 10.164618)
end

if(intid == 19000) then
    player:Teleport(0, -7030.193359, -573.889771, 170.520203)
end

if(intid == 18000) then
    player:Teleport(1, 5398.236328, -3345.921143, 1655.985352)
end


if(intid == 21000) then
    player:Teleport(0, 3634.679932, -2864.051514, 177.073120)
end

if(intid == 23000) then
    player:Teleport(0, -14729.621094, -77.870697, 1.123279)
end

if(intid == 26000) then
    player:Teleport(0, -8159.068848, -369.864319, 249.310822)
end

if(intid == 27000) then
    player:Teleport(530, 4172.394043, 3056.035400, 336.739655)
end

if(intid == 28000) then
    player:Teleport(0, -5102.580078, -1668.040039, 497.884766)
end

if(intid == 29000) then
    player:Teleport(0, -5275.590332, -1540.557617, 499.515625)
end

if(intid == 30000) then
    player:Teleport(44, 79.1811, -0.793742, 18.6773)
end

if(intid == 31000) then
    player:Teleport(35, -1.06791, 51.3599, -27.5507)
end

if(intid == 40000) then
    player:Teleport(169, -3451.92, -2345.19, 126.837)
end

if(intid == 481) then
    player:Teleport(1, 1919.342529, -4153.794434, 40.410320)
end

if(intid == 38) then
    player:Teleport(1, 1371.068970, -4370.801758, 26.052483)
end
if(intid == 39) then
    player:Teleport(0, 2050.203125, 285.650604, 56.994549)
end
if(intid == 40) then
    player:Teleport(1, -1304.569946, 205.285004, 68.681396)
end
if(intid == 41) then
    player:Teleport(530, 9400.486328, -7278.376953, 14.206780)
end

if(intid == 15) then
pUnit:GossipCreateMenu(3543, player, 0) 
pUnit:GossipMenuAddItem(1, "Stormwind", 34, 0)
pUnit:GossipMenuAddItem(1, "Ironforge", 35, 0)
pUnit:GossipMenuAddItem(1, "Darnassus", 36, 0)
pUnit:GossipMenuAddItem(1, "The Exodar", 37, 0)
pUnit:GossipMenuAddItem(1, "Alliance Mall", 33, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid ==33) then
   player:Teleport(0, -8432.370117, 395.630005, 120.886002)
end

if(intid == 34) then
    player:Teleport(0, -8913.239, 554.648, 94.5018)
end
if(intid == 35) then
    player:Teleport(0, -4977.095215, -888.452942, 501.621216)
end
if(intid == 36) then
    player:Teleport(1, 9943.809570, 2275.350098, 1341.390015)
end
if(intid == 37) then
    player:Teleport(530, -3792.557861, -11691.3, -105.241)
end


if(intid == 17) then
pUnit:GossipCreateMenu(3543, player, 0) 
pUnit:GossipMenuAddItem(2, "Raids", 18, 0)
pUnit:GossipMenuAddItem(5, "Hellfire Ramparts", 52, 0)
pUnit:GossipMenuAddItem(5, "Blood Furnace", 53, 0)
pUnit:GossipMenuAddItem(5, "Shattered Halls", 54, 0)
pUnit:GossipMenuAddItem(5, "Underbog", 55, 0)
pUnit:GossipMenuAddItem(5, "Slave Pens", 56, 0)
pUnit:GossipMenuAddItem(5, "Mana Tombs", 57, 0)
pUnit:GossipMenuAddItem(5, "Sethekk Halls", 58, 0)
pUnit:GossipMenuAddItem(5, "Shadow Lab", 59, 0)
pUnit:GossipMenuAddItem(5, "Mechanar", 60, 0)
pUnit:GossipMenuAddItem(5, "Arcatraz", 61, 0)
pUnit:GossipMenuAddItem(5, "Serpentshrine caverns", 63, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 52) then
    player:Teleport(530, -360.670990, 3071.899902, -15.097700)
end
if(intid == 53) then
    player:Teleport(530, -303.506012, 3164.820068, 31.742500)
end
if(intid == 54) then
    player:Teleport(530, -311.083527, 3083.291748, -3.745923)
end
if(intid == 55) then
    player:Teleport(530, 777.088989, 6763.450195, -72.062561)
end
if(intid == 56) then
    player:Teleport(530, 719.507996, 6999.339844, -73.074303)
end
if(intid == 57) then
    player:Teleport(530, -3079.810059, 4943.040039, -101.046997)
end
if(intid == 58) then
    player:Teleport(530, -3362.219971, 4660.410156, -101.049004)
end
if(intid == 59) then
    player:Teleport(530, -3645.060059, 4943.620117, -101.047997)
end
if(intid == 60) then
    player:Teleport(530, 2862.409912, 1546.089966, 252.158691)
end
if(intid == 61) then
    player:Teleport(530, 3311.598145, 1332.745117, 505.557251)
end
if(intid == 63) then
    player:Teleport(530, 830.542908, 6865.445801, -63.785503)
end

if(intid == 18) then
pUnit:GossipCreateMenu(3543, player, 0) 
pUnit:GossipMenuAddItem(5, "Black Temple", 73, 0)
pUnit:GossipMenuAddItem(5, "Tempest Keep", 74, 0)
pUnit:GossipMenuAddItem(5, "Maghteridons Lair", 75, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 73) then
    player:Teleport(530, -3609.739990, 328.252014, 37.307701)
end
if(intid == 74) then
    player:Teleport(530, 3087.310059, 1373.790039, 184.643005)
end
if(intid == 75) then
    player:Teleport(530, -313.678986, 3088.350098, -116.501999)
end

if(intid == 19) then
pUnit:GossipCreateMenu(3543, player, 0) 
pUnit:GossipMenuAddItem(2, "Raids", 20, 0)
pUnit:GossipMenuAddItem(5, "Shadowfang Keep", 42, 0)
pUnit:GossipMenuAddItem(5, "Scarlet Monastery", 43, 0)
pUnit:GossipMenuAddItem(5, "Zul'Farrak", 44, 0)
pUnit:GossipMenuAddItem(5, "Scholomance", 45, 0)
pUnit:GossipMenuAddItem(5, "The Deadmines", 46, 0)
pUnit:GossipMenuAddItem(5, "Uldaman", 47, 0)
pUnit:GossipMenuAddItem(5, "Sunken temple", 48, 0)
pUnit:GossipMenuAddItem(5, "Lower Blackrock Depths", 49, 0)
pUnit:GossipMenuAddItem(5, "Dire Maul", 50, 0)
pUnit:GossipMenuAddItem(5, "Upper Blackrock Depths", 51, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 42) then
    player:Teleport(0, -234.495087, 1561.946411, 76.892143)
end
if(intid == 43) then
    player:Teleport(0, 2870.442627, -819.985229, 160.331085)
end
if(intid == 44) then
    player:Teleport(1, -6797.278809, -2903.917969, 9.953360)
end
if(intid == 45) then
    player:Teleport(0, 1267.468628, -2556.651367, 94.127983)
end
if(intid == 46) then
    player:Teleport(0, -11079.8, 1506.98, 42.9594)
end
if(intid == 47) then
    player:Teleport(70, -228.193, 46.1602, -45.0186)
end
if(intid == 48) then
    player:Teleport(0, -10349.1, -3849.67, -24.6078)
end
if(intid == 49) then
    player:Teleport(0, -7192.703125, -909.826538, 165.490250)
end
if(intid == 50) then
    player:Teleport(429, 254.588, -24.7395, -1.56062)
end
if(intid == 51) then
    player:Teleport(229, 73.5083, -215.044, 53.3869)
end

if(intid == 20) then
pUnit:GossipCreateMenu(3543, player, 0) 
pUnit:GossipMenuAddItem(5, "Onyxias Lair", 64, 0)
pUnit:GossipMenuAddItem(5, "Molten Core", 65, 0)
pUnit:GossipMenuAddItem(5, "Blackwing Lair", 66, 0)
pUnit:GossipMenuAddItem(5, "Zul'Gurub", 67, 0)
pUnit:GossipMenuAddItem(5, "Karazhan", 68, 0)
pUnit:GossipMenuAddItem(5, "Ruins of Ahn'Qiraj 20", 69, 0)
pUnit:GossipMenuAddItem(5, "Temple of Ahn'Qiraj 40", 70, 0)
pUnit:GossipMenuAddItem(5, "Zul'Aman", 72, 0)
pUnit:GossipMenuAddItem(5, "Isle of Quel' Danas", 11, 0)
pUnit:GossipMenuAddItem(5, "Hyjal", 888, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 11) then 
    player:Teleport(530, 12956.072266, -6943.814453, 9.968110)
end

if(intid == 64) then
    player:Teleport(1, -4706.542480, -3727.514648, 54.730026)
end
if(intid == 65) then
    player:Teleport(409, 1089.6, -470.19, -106.41)
end
if(intid == 66) then
    player:Teleport(469, -7665.55, -1102.49, 400.679)
end
if(intid == 67) then
    player:Teleport(0, -11919.073242, -1202.459374, 92.298744)
end
if(intid == 68) then
    player:Teleport(0, -11127.669922, -2000.085083, 47.492638)
end
if(intid == 69) then
    player:Teleport(1, -8394.730469, 1485.658447, 21.038563)
end
if(intid == 70) then
    player:Teleport(1, -8247.316406, 1970.156860, 129.071472)
end
if(intid == 72) then
    player:Teleport(530, 6850, -7950, 170)
end
if(intid == 888) then
    player:Teleport(1, -8177.5273, -4186.070801, -168.643433)
end

if(intid == 302) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(2, "Azeroth Locations", 145, 0)
pUnit:GossipMenuAddItem(2, "Outlands Locations", 531, 0)
pUnit:GossipMenuAddItem(2, "Northrend Locations", 600, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 145) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(2, "Kalimdor", 136, 0)
pUnit:GossipMenuAddItem(2, "Eastern Kingdom", 137, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 136) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Ashenvale", 700, 0)
pUnit:GossipMenuAddItem(5, "Azshara", 701, 0)
pUnit:GossipMenuAddItem(5, "Azuremyst Isle", 702, 0)
pUnit:GossipMenuAddItem(5, "Bloodmyst Isle", 703, 0)
pUnit:GossipMenuAddItem(5, "Darkshore", 704, 0)
pUnit:GossipMenuAddItem(5, "Desolace", 705, 0)
pUnit:GossipMenuAddItem(5, "Durotar", 706, 0)
pUnit:GossipMenuAddItem(5, "Dustwallow Marsh", 707, 0)
pUnit:GossipMenuAddItem(5, "Felwood", 708, 0)
pUnit:GossipMenuAddItem(5, "Feralas", 709, 0)
pUnit:GossipMenuAddItem(5, "Moonglade", 710, 0)
pUnit:GossipMenuAddItem(5, "Mulgore", 711, 0)
pUnit:GossipMenuAddItem(5, "Silithus", 712, 0)
pUnit:GossipMenuAddItem(2, "Page 2", 713, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 700) then
    player:Teleport(1, 1366.1154, -2256.9121, 89.9805)
end

if(intid == 701) then
    player:Teleport(1, 2794.6567, -3820.7402, 83.9876)
end

if(intid == 702) then
    player:Teleport(530, -4020.4799, -13783.2998, 73.9072)
end

if(intid == 703) then
    player:Teleport(530, -2721.6799, -12208.9003, 9.0881)
end

if(intid == 704) then
    player:Teleport(1, 4214.5517, 94.6777, 34.2611)
end

if(intid == 705) then
    player:Teleport(1, 266.2440, 1831.1944, 86.2293)
end

if(intid == 706) then
    player:Teleport(1, 112.5848, -4744.5537, 15.8076)
end

if(intid == 707) then
    player:Teleport(1, -3683.6269, -2544.6823, 61.9470)
end

if(intid == 708) then
    player:Teleport(1, 3620.8396, -1514.7908, 174.2075)
end

if(intid == 709) then
    player:Teleport(1, -4347.1621, -587.2303, 2.7642)
end

if(intid == 710) then
    player:Teleport(1, 7399.9453, -2184.0971, 526.1214)
end

if(intid == 711) then
    player:Teleport(1, -2346.9624, -707.149, -9.166)
end

if(intid == 712) then
    player:Teleport(1, -6301.7768, -357.8389, -0.7311)
end


if(intid == 713) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Stonetalon Mtns", 714, 0)
pUnit:GossipMenuAddItem(5, "Tanaris", 715, 0)
pUnit:GossipMenuAddItem(5, "Teldrassil", 716, 0)
pUnit:GossipMenuAddItem(5, "The Barrens", 717, 0)
pUnit:GossipMenuAddItem(5, "Thousand Needles", 718, 0)
pUnit:GossipMenuAddItem(5, "Un'Goro Crater", 719, 0)
pUnit:GossipMenuAddItem(5, "Winterspring", 720, 0)
pUnit:GossipMenuAddItem(2, "Page 1", 721, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 714) then
    player:Teleport(1, 94.1146, -74.7517, 19.1363)
end

if(intid == 715) then
    player:Teleport(1, 94.1146, -74.7517, 19.1363)
end

if(intid == 716) then
    player:Teleport(1, -6928.6640, -3735.3010, 54.0130)
end

if(intid == 717) then
    player:Teleport(1, -290.4556, -2678.8977, 92.9396)
end

if(intid == 718) then
    player:Teleport(1, -4739.5937, -1802.5876, -45.4367)
end

if(intid == 719) then
    player:Teleport(1, -8154.9887, -2079.0185, -124.0315)
end

if(intid == 720) then
    player:Teleport(1, 6864.8046, -2304.7463, 580.5039)
end


if(intid == 721) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Ashenvale", 700, 0)
pUnit:GossipMenuAddItem(5, "Azshara", 701, 0)
pUnit:GossipMenuAddItem(5, "Azuremyst Isle", 702, 0)
pUnit:GossipMenuAddItem(5, "Bloodmyst Isle", 703, 0)
pUnit:GossipMenuAddItem(5, "Darkshore", 704, 0)
pUnit:GossipMenuAddItem(5, "Desolace", 705, 0)
pUnit:GossipMenuAddItem(5, "Durotar", 706, 0)
pUnit:GossipMenuAddItem(5, "Dustwallow Marsh", 707, 0)
pUnit:GossipMenuAddItem(5, "Felwood", 708, 0)
pUnit:GossipMenuAddItem(5, "Feralas", 709, 0)
pUnit:GossipMenuAddItem(5, "Moonglade", 710, 0)
pUnit:GossipMenuAddItem(5, "Mulgore", 711, 0)
pUnit:GossipMenuAddItem(5, "Silithus", 712, 0)
pUnit:GossipMenuAddItem(2, "Page 2", 713, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 137) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Alterac Mtns", 722, 0)
pUnit:GossipMenuAddItem(5, "Arathi Highlands", 723, 0)
pUnit:GossipMenuAddItem(5, "Badlands", 724, 0)
pUnit:GossipMenuAddItem(5, "Blasted Lands", 725, 0)
pUnit:GossipMenuAddItem(5, "Burning Steppes", 726, 0)
pUnit:GossipMenuAddItem(5, "Deadwind Pass", 727, 0)
pUnit:GossipMenuAddItem(5, "Dun Morogh", 728, 0)
pUnit:GossipMenuAddItem(5, "Duskwood", 729, 0)
pUnit:GossipMenuAddItem(5, "Eastern Plaguelands", 730, 0)
pUnit:GossipMenuAddItem(5, "Elywnn Forest", 731, 0)
pUnit:GossipMenuAddItem(5, "Eversong Woods", 732, 0)
pUnit:GossipMenuAddItem(5, "Ghostlands", 733, 0)
pUnit:GossipMenuAddItem(5, "Hillsbrad Foothills", 734, 0)
pUnit:GossipMenuAddItem(2, "Page 2", 735, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end


if(intid == 722) then
    player:Teleport(0, 344.8762, -611.2338, 148.6080)
end

if(intid == 723) then
    player:Teleport(0, -856.2793, -1607.5512, 53.0391)
end

if(intid == 724) then
    player:Teleport(0, -6544.7827, -3078.6198, 267.8353)
end

if(intid == 725) then
    player:Teleport(0, -10912.1455, -2937.4934, 12.7035)
end

if(intid == 726) then
    player:Teleport(0, -8550.8603, -2559.7419, 133.1489)
end

if(intid == 727) then
    player:Teleport(0, -10434.3105, -1828.9581, 101.1548)
end

if(intid == 728) then
    player:Teleport(0, -5342.2421, -522.2236, 391.4935)
end

if(intid == 729) then
    player:Teleport(0, -10803.0966, -891.3734, 55.7209)
end

if(intid == 730) then
    player:Teleport(0, 1924.3857, -2692.2719, 61.4165)
end

if(intid == 731) then
    player:Teleport(0, -9205.7666, 209.3540, 70.7219)
end

if(intid == 732) then
    player:Teleport(530, 9095.4482, -6685.3725, 20.5868)
end

if(intid == 733) then
    player:Teleport(530, 7938.4790, -6856.7646, 59.1780)
end

if(intid == 734) then
    player:Teleport(0, -319.3767, -754.0145, 54.2098)
end

if(intid == 735) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Loch Modan", 736, 0)
pUnit:GossipMenuAddItem(5, "Redridge Mtns", 737, 0)
pUnit:GossipMenuAddItem(5, "Searing Gorge", 738, 0)
pUnit:GossipMenuAddItem(5, "Silverpine Forest", 739, 0)
pUnit:GossipMenuAddItem(5, "Stranglethorn Vale", 740, 0)
pUnit:GossipMenuAddItem(5, "Swamp of Sarrows", 741, 0)
pUnit:GossipMenuAddItem(5, "The Hinterlands", 742, 0)
pUnit:GossipMenuAddItem(5, "Tirisfal Glades", 743, 0)
pUnit:GossipMenuAddItem(5, "Western Plaguelands", 744, 0)
pUnit:GossipMenuAddItem(5, "Westfall", 745, 0)
pUnit:GossipMenuAddItem(5, "Wetlands", 746, 0)
pUnit:GossipMenuAddItem(2, "Page 1", 747, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 736) then
    player:Teleport(0, -5201.8598, -3136.5900, 298.7666)
end

if(intid == 737) then
    player:Teleport(0, -9193.7851, -2353.6098, 87.7648)
end

if(intid == 738) then
    player:Teleport(0, -7342.4663, -1091.8979, 277.0691)
end

if(intid == 739) then
    player:Teleport(0, 664.288940, 1303.7861, 82.9889)
end

if(intid == 740) then
    player:Teleport(0, -11708.6308, -213.8615, 39.5549)
end

if(intid == 741) then
    player:Teleport(0, -10493.9091, -2391.7707, 76.9919)
end

if(intid == 742) then
    player:Teleport(0, 179.4921, -2068.7617, 116.3315)
end

if(intid == 743) then
    player:Teleport(0, 1946.0373, 251.7409, 44.1699)
end

if(intid == 744) then
    player:Teleport(0, 1716.7626, -806.7587, 57.6930)
end

if(intid == 745) then
    player:Teleport(0, -9825.7880, 863.8468, 25.7381)
end

if(intid == 736) then
    player:Teleport(0, -4087.0834, -2642.9406, 39.7672)
end

if(intid == 747) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Alterac Mtns", 722, 0)
pUnit:GossipMenuAddItem(5, "Arathi Highlands", 723, 0)
pUnit:GossipMenuAddItem(5, "Badlands", 724, 0)
pUnit:GossipMenuAddItem(5, "Blasted Lands", 725, 0)
pUnit:GossipMenuAddItem(5, "Burning Steppes", 726, 0)
pUnit:GossipMenuAddItem(5, "Deadwind Pass", 727, 0)
pUnit:GossipMenuAddItem(5, "Dun Morogh", 728, 0)
pUnit:GossipMenuAddItem(5, "Duskwood", 729, 0)
pUnit:GossipMenuAddItem(5, "Eastern Plaguelands", 730, 0)
pUnit:GossipMenuAddItem(5, "Elywnn Forest", 731, 0)
pUnit:GossipMenuAddItem(5, "Eversong Woods", 732, 0)
pUnit:GossipMenuAddItem(5, "Ghostlands", 733, 0)
pUnit:GossipMenuAddItem(5, "Hillsbrad Foothills", 734, 0)
pUnit:GossipMenuAddItem(2, "Page 2", 735, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 531) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Blade's Edge Mountains", 530, 0)
pUnit:GossipMenuAddItem(5, "Hellfire Peninsula/The Dark Portal", 500, 0)
pUnit:GossipMenuAddItem(5, "Nagrand", 520, 0)
pUnit:GossipMenuAddItem(5, "Netherstorm", 540, 0)
pUnit:GossipMenuAddItem(5, "Shadowmoon Valley", 550, 0)
pUnit:GossipMenuAddItem(5, "Terokkar Forest", 510, 0)
pUnit:GossipMenuAddItem(5, "Zangarmarsh", 560, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if (intid == 135) then
player:Teleport(530, -1887.510010, 5359.379883, -12.427300)
end

if (intid == 500) then
player:Teleport(530, -248.431702, 939.013367, 84.379822)
end

if (intid == 510) then
player:Teleport(530, -1176.588989, 5336.273926, 29.897034)
end

if (intid == 520) then
player:Teleport(530, -526, 8440, 47.426472)
end

if (intid == 530) then
player:Teleport(530, 1114.010254, 7090.967285, 122.127274)
end

if (intid == 540) then
player:Teleport(530, 2315.689209, 2535.836670, 119.271622)
end

if (intid == 550) then
player:Teleport(530, -2847.810791, 3190.677246, 8.136728)
end

if (intid == 560) then
player:Teleport(530, 30.284981, 6983.303711, 148.666779)
end

if(intid == 600) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Borean Tundra [68-72]", 602, 0)
pUnit:GossipMenuAddItem(5, "Crystalsong Forest[74-76]", 603, 0)
pUnit:GossipMenuAddItem(5, "Dragonblight[71-74]", 604, 0)
pUnit:GossipMenuAddItem(5, "Grizzly Hills[73-75]", 605, 0)
pUnit:GossipMenuAddItem(5, "Howling Fjord[68-72]", 606, 0)
pUnit:GossipMenuAddItem(5, "Icecrown[77-80]", 607, 0)
pUnit:GossipMenuAddItem(5, "Sholazar Basin[75-79]", 608, 0)
pUnit:GossipMenuAddItem(5, "The Storm Peaks[76-80]", 609, 0)
pUnit:GossipMenuAddItem(5, "Wintergrasp[PVP]", 610, 0)
pUnit:GossipMenuAddItem(5, "Zul'Drak[74-77]", 611, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 601) then
player:Teleport(571, 5807.8920, 588.1856, 660.9390)
end


if(intid == 602) then
player:Teleport(571, 3160.7128, 4974.2856, 23.7720)
end


if(intid == 603) then
player:Teleport(571, 5292.6582, 150.4761, 181.6185)
end


if(intid == 604) then
player:Teleport(571, 5196.5292, 187.7377, 195.4812)
end


if(intid == 605) then
player:Teleport(571, 3759.4084, -3934.1347, 181.9007)
end


if(intid == 606) then
player:Teleport(571, 1150.1116, -4594.8374, 183.7915)
end


if(intid == 607) then
player:Teleport(571, 6411.6953, 1137.4199, 278.1251)
end


if(intid == 608) then
player:Teleport(571, 4693.2368, 5550.4287, 22.4131)
end


if(intid == 609) then
player:Teleport(571, 5750.9946, -369.3374, 208.7518)
end

if(intid == 610) then
player:Teleport(571, 4485.8344, 2826.4731, 394.3452)
end


if(intid == 611) then
player:Teleport(571, 5449.8715, -2044.0681, 248.2227)
end

if(intid == 620) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(2, "Raids", 621, 0)
pUnit:GossipMenuAddItem(5, "Utgarde Keep", 622, 0)
pUnit:GossipMenuAddItem(5, "Azjol-Nerub", 623, 0)
pUnit:GossipMenuAddItem(5, "The Nexus", 625, 0)
pUnit:GossipMenuAddItem(5, "Drak'tharon Keep", 626, 0)
pUnit:GossipMenuAddItem(5, "The Oculus", 627, 0)
pUnit:GossipMenuAddItem(5, "Utgarde Pinnacle", 628, 0)
pUnit:GossipMenuAddItem(5, "Halls of Lightning", 629, 0)
pUnit:GossipMenuAddItem(5, "Halls of Stone", 630, 0)
pUnit:GossipMenuAddItem(5, "Caverns of Time: Stratholme", 631, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 622) then
player:Teleport(571, 1221.322632, -4863.814941, 41.248299)
end

if(intid == 623) then
player:Teleport(571, 3701.362305, 2153.350830, 36.178722)
end

if(intid == 625) then
player:Teleport(571, 3869.806641, 6983.833984, 79.450546)
end

if(intid == 626) then
player:Teleport(571, 4778.303223, -2037.986572, 229.416977)
end

if(intid == 627) then
player:Teleport(571, 3880.103516, 6984.548828, 106.320435)
end

if(intid == 628) then
player:Teleport(571, 1251.779175, -4853.859375, 215.808105)
end

if(intid == 629) then
player:Teleport(571, 9129.422852, -1337.422852, 1061.373635)
end

if(intid == 630) then
player:Teleport(571, 8922.276367, -978.684509, 1039.279663)
end

if(intid == 631) then
player:Teleport(1, -8669.609375, -4396.958984, -207.080170)
end

if(intid == 621) then
pUnit:GossipCreateMenu(3543, player, 0)
pUnit:GossipMenuAddItem(5, "Naxxramas", 632, 0)
pUnit:GossipMenuAddItem(5, "Obsidian Sanctum", 633, 0)
pUnit:GossipMenuAddItem(5, "The Eye of Eternity", 634, 0)
pUnit:GossipMenuAddItem(2, "Go Back", 100, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 632) then
player:Teleport(571, 3666.149902, -1268.829956, 243.509003)
end

if(intid == 633) then
player:Teleport(571, 3456.954590, 262.589355, -113.760834)
end

if(intid == 634) then
player:Teleport(571, 3860.425537, 6989.365234, 152.042938)
end

if(intid == 311) then
 player:AddItem(92340,1)
 pUnit:GossipComplete(player)
 end

if(intid == 900) then 
 pUnit:FullCastSpellOnTarget(48173, player)
 pUnit:FullCastSpellOnTarget(63136, player)
 pUnit:FullCastSpellOnTarget(9885, player)
 pUnit:FullCastSpellOnTarget(59298, player)
 pUnit:FullCastSpellOnTarget(33081, player)
 pUnit:FullCastSpellOnTarget(33082, player)
 pUnit:FullCastSpellOnTarget(33077, player)
 pUnit:FullCastSpellOnTarget(33079, player)
 pUnit:FullCastSpellOnTarget(33080, player)
 pUnit:FullCastSpellOnTarget(33078, player)
 pUnit:GossipComplete(player)
 end

if(intid == 901) then
 player:LearnSpell(15007)
 player:UnlearnSpell(15007)
 end

if(intid == 100) then
    pUnit:GossipCreateMenu(3544, player, 0)
   pUnit:GossipMenuAddItem(0, "Global Locations", 302, 0)
   pUnit:GossipMenuAddItem(6, "Server Items", 310, 0)
   pUnit:GossipMenuAddItem(7, "Azeroth Instance/Raids", 19, 0)
   pUnit:GossipMenuAddItem(7, "Outland Instance/Raids", 17, 0)
   pUnit:GossipMenuAddItem(7, "Northrend Instances/Raids", 620, 0)
   pUnit:GossipMenuAddItem(2, "Shattrath", 135, 0)
   pUnit:GossipMenuAddItem(2, "Dalaran", 601, 0)
   pUnit:GossipMenuAddItem(2, "Lordaeron City", 212, 0)
   pUnit:GossipMenuAddItem(8, "Buff Me Up!", 900, 0)
   pUnit:GossipMenuAddItem(5, "Remove Ressurection Sickness", 901, 0)
   pUnit:GossipSendMenu(player)
   end
end

RegisterUnitGossipEvent(6500000, 1, "Teleporter_OnGossip_Talk") 
RegisterUnitGossipEvent(6500000, 2, "Teleporter_OnGossip_Select")
