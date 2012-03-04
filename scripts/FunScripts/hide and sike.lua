function On_Gossip (pUnit, event, player)
pUnit:GossipCreateMenu(100, player, 0)
pUnit:GossipMenuAddItem(9, "Claim Your Prize!", 1, 0)
pUnit:GossipSendMenu(player)
end

function Gossip_Submenus(pUnit, event, player, id, intid, code)
if(intid == 1) then
pUnit:GossipCreateMenu(101, player, 0)
pUnit:GossipMenuAddItem(9, "ITEM_NAME", 2, 0)
pUnit:GossipMenuAddItem(9, "ITEM_NAME", 3, 0)
pUnit:GossipMenuAddItem(9, "ITEM_NAME", 4, 0)
pUnit:GossipSendMenu(player)
end

if(intid == 2) then
pUnit:SendChatMessage(14, 0, "I have been found! The event is over!")
player:AddItem(ITEMID, 1)
pUnit:Despawn(0, 0)
end

if(intid == 3) then
pUnit:SendChatMessage(14, 0, "I have been found! The event is over!")
player:AddItem(ITEMID, 1)
pUnit:Despawn(0, 0)
end

if(intid == 4) then
pUnit:SendChatMessage(14, 0, "I have been found! The event is over!")
player:AddItem(ITEMID, 1)
pUnit:Despawn(0, 0)
end
end

RegisterUnitGossipEvent(1000800, 1, "On_Gossip")
RegisterUnitGossipEvent(1000800, 2, "Gossip_Submenus") 