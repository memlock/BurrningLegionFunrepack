function On_Gossip(unit, event, player)
unit:GossipCreateMenu(3544, player, 0)
unit:GossipMenuAddItem(2, "Hidden Places", 1, 0)
unit:GossipMenuAddItem(2, "Hidden Places 2", 3, 0)
unit:GossipMenuAddItem(2, "(F) = Favorite", 2, 0)
unit:GossipSendMenu(player)
end

function Gossip_Submenus(unit, event, player, id, intid, code)

if(intid == 999) then
unit:GossipCreateMenu(3543, player, 0)
unit:GossipMenuAddItem(2, "Hidden Places", 1, 0)
unit:GossipMenuAddItem(2, "Hidden Places 2", 3, 0)
unit:GossipMenuAddItem(2, "(F) = Favorite", 2, 0)
unit:GossipSendMenu(player)
end

if(intid == 1) then
unit:GossipCreateMenu(3543, player, 0) 
unit:GossipMenuAddItem(1, "South Seas", 34, 0)
unit:GossipMenuAddItem(1, "Hidden Camp", 35, 0)
unit:GossipMenuAddItem(1, "Stonetalon Mountains", 36, 0)
unit:GossipMenuAddItem(1, "Some Stone", 37, 0)
unit:GossipMenuAddItem(1, "Unknown", 38, 0)
unit:GossipMenuAddItem(1, "Old Hillsbrad", 39, 0)
unit:GossipMenuAddItem(1, "Airport", 40, 0)
unit:GossipMenuAddItem(1, "Better Darkshore", 41, 0)
unit:GossipMenuAddItem(1, "On Top Dun Morogh", 42, 0)
unit:GossipMenuAddItem(1, "Old IF", 43, 0)
unit:GossipMenuAddItem(1, "Castle, Docks, & Flying Fish!", 44, 0)
unit:GossipMenuAddItem(1, "Mulgore", 45, 0)
unit:GossipMenuAddItem(1, "No Name!", 46, 0)
unit:GossipMenuAddItem(1, "Blackchar Cave", 47, 0)
unit:GossipMenuAddItem(0, "Back", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 3) then
unit:GossipCreateMenu(3543, player, 0)
unit:GossipMenuAddItem(1, "Alter", 16, 0)
unit:GossipMenuAddItem(1, "Wetlands Farm", 17, 0)
unit:GossipMenuAddItem(1, "Highest Spot In World", 18, 0)
unit:GossipMenuAddItem(1, "Ferals", 19, 0)
unit:GossipMenuAddItem(1, "Dire Maul", 20, 0)
unit:GossipMenuAddItem(1, "Crypt", 48, 0)
unit:GossipMenuAddItem(1, "Nice Open Land", 21, 0)
unit:GossipMenuAddItem(1, "Hyjal", 22, 0)
unit:GossipMenuAddItem(1, "Water Under Water?", 23, 0)
unit:GossipMenuAddItem(1, "The Marsh", 29, 0)
unit:GossipMenuAddItem(1, "Good Place For LvL Road", 27, 0)
unit:GossipMenuAddItem(1, "Unfinished Region", 30, 0)
unit:GossipMenuAddItem(1, "Texture Meet", 31, 0)
unit:GossipMenuAddItem(1, "Quel'Thalas Tower", 32, 0)
unit:GossipMenuAddItem(0, "Back", 999, 0)
unit:GossipSendMenu(player)
end

if(intid== 2) then
unit:GossipCreateMenu(3543, player, 0)
unit:GossipMenuAddItem(1, "(F)Cave", 24, 0)
unit:GossipMenuAddItem(1, "(F)Carnival", 25, 0)
unit:GossipMenuAddItem(1, "(F)Shack", 28, 0)
unit:GossipMenuAddItem(1, "(F)Good Place For Mall", 26, 0)
unit:GossipMenuAddItem(1, "(F)Custom Town", 33, 0)
unit:GossipMenuAddItem(1, "(F)Custom Town 2", 15, 0)
unit:GossipMenuAddItem(1, "(F)Alliance Jail", 14, 0)
unit:GossipMenuAddItem(1, "(F)Horde Jail", 13, 0)
unit:GossipMenuAddItem(0, "Back", 999, 0)
unit:GossipSendMenu(player)
end

if(intid == 34) then
    player:Teleport(1, -11812.622070, -4742.063477, 6.393911)
end
if(intid == 35) then
    player:Teleport(0, -6177.947754, -761.462769, 423.045898)
end
if(intid == 36) then
    player:Teleport(1, 1806.056152, 1437.497681, 167.147919)
end
if(intid == 37) then
    player:Teleport(1, 2814.080322, 2248.703125, 215.486191)
end
if(intid == 38) then
    player:Teleport(36, -1939.969604, 443.571930, 59.377697)
end
if(intid == 39) then
    player:Teleport(560, 2635.961914, -278.525665, 149.280167)
end
if(intid == 40) then
    player:Teleport(0, -4653, -1688, 504)
end
if(intid == 41) then
    player:Teleport(1, 7477.748047, -1573.777710, 198.481674)
end
if(intid == 42) then
    player:Teleport(0, -4795.883301, -1000.524048, 895.791626)
end
if(intid == 43) then
    player:Teleport(0, -4815.312500, -971.277771, 464.708954)
end
if(intid == 44) then
    player:Teleport(560, 3602.619873, 2287.018799, 59.256119)
end
if(intid == 45) then
    player:Teleport(1, -2204.196289, 423.247314, 173.272491)
end
if(intid == 46) then
    player:Teleport(1, -9140.728516, 1594.322510, 20.035799)
end
if(intid == 47) then
    player:Teleport(0, -7347, -642, 294.586121)
end
if(intid == 48) then
    player:Teleport(0, -11069, -1795, 53.731037)
end
if(intid == 16) then
    player:Teleport(560, 3672.952881, -214.583542, 80.487816)
end
if(intid == 17) then
    player:Teleport(0, -4008.987549, -1280.995850, 146.769638)
end
if(intid == 18) then
    player:Teleport(1, 5128.426758, -3800.285156, 1970.802490)
end
if(intid == 19) then
    player:Teleport(1, -2797.171387, 1023.446533, 63.361565)
end
if(intid == 20) then
    player:Teleport(1, -3390.920654, 1114.148193, 137.641739)
end
if(intid == 21) then
    player:Teleport(0, -5582, 887, 393)
end
if(intid == 22) then
    player:Teleport(1, 4674, -3638, 966)
end
if(intid == 23) then
    player:Teleport(1, -12205, 3061, -22)
end
if(intid == 24) then
    player:Teleport(1, 4849, -1775, 1163)
end
if(intid == 25) then
    player:Teleport(1, -6310, -3952, -58)
end
if(intid == 26) then
    player:Teleport(37, -598, -227, 355)
end
if(intid == 27) then
    player:Teleport(0, -8119, -9, 172)
end
if(intid == 28) then
    player:Teleport(0, -8261, -199, 270)
end
if(intid == 29) then
    player:Teleport(0, -11122, -3790, 38)
end
if(intid == 30) then
    player:Teleport(0, 2231.971191, 2242.839111, 99.736877)
end
if(intid == 31) then
    player:Teleport(0, -13010.2, -1617.82, 143.272476)
end
if(intid == 32) then
    player:Teleport(0, 4299.212402, -2761.831299, 16.694981)
end
if(intid == 33) then
    player:Teleport(1, -10736.7, 2445, 7.531)
end
if(intid == 15) then
    player:Teleport(0, -1850.22, -4149.4, 9.76771)
end
if(intid == 14) then
    player:Teleport(35, -98, 149, -40)
end
if(intid == 13) then
    player:Teleport(0, -11139, -1742, -29)
end
end

RegisterUnitGossipEvent(208288, 1, "On_Gossip")
RegisterUnitGossipEvent(208288, 2, "Gossip_Submenus")