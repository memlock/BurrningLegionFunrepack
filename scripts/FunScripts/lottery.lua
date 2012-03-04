function On_Gossip(unit, event, player)
local NPCID = 198764
local ITEMID = 32569
unit:RemoveEvents()
if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("Sorry, you have to leave combat first!")
else  
unit:GossipCreateMenu(100, player, 0)
unit:GossipMenuAddItem(5, "Bet 1 Coin", 1, 0)
unit:GossipMenuAddItem(5, "Bet 2 Coins", 2, 0) 
unit:GossipSendMenu(player)
end
end

function Gossip_Submenus(unit, event, player, id, intid, code)

if (intid == 7) then
unit:GossipCreateMenu(100, player, 0)
unit:GossipMenuAddItem(5, "[Bet 1 Coin]", 1, 0)
unit:GossipMenuAddItem(5, "[Bet 2 Coins]", 2, 0) 
unit:GossipSendMenu(player)
end

if (intid == 1) then
if (player:GetItemCount(ITEMID) < 1) then
player:SendAreaTriggerMessage("You don't have enough coins to bet!")
else
unit:GossipMenuAddItem(5, "You have a 50% chance of winning, continue?", 80, 0)
unit:GossipMenuAddItem(4, "Yes, I'll do it", 5, 0)
unit:GossipMenuAddItem(4, "No, I'd rather not", 7, 0)
unit:GossipSendMenu(player)
end
end

if (intid == 5) then
Choice=math.random(1, 2)
if Choice==1 then
player:AddItem(ITEMID, 1)
end
if Choice==2 then
player:RemoveItem(ITEMID, 1)
end
end

if (intid == 80) then
unit:GossipComplete(player)
end
end

if (intid == 2) then
if (player:GetItemCount(ITEMID) < 2) then
player:SendAreaTriggerMessage("You do not have enough coins to bet!")
else
unit:GossipMenuAddItem(5, "You have a 50% chance of winning, continue?", 80, 0)
unit:GossipMenuAddItem(4, "Yes, make haste", 6, 0)
unit:GossipMenuAddItem(4, "No, take me back", 7, 0)
unit:GossipSendMenu(player)
end
end

if (intid == 6) then
Choice=math.random(1, 2)
if Choice==1 then
player:AddItem(ITEMID, 2)
end
if Choice==2 then
player:RemoveItem(ITEMID, 2)
end
end

RegisterUnitGossipEvent(198764, 1, "On_Gossip")
RegisterUnitGossipEvent(198764, 2, "Gossip_Submenus")
