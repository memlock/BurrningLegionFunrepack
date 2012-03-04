local itemid = 99546
function Item_Trigger(item, event, player)
Item_menu(item, player)
end
function Item_menu(item, player)

if (player:IsInCombat() == true) then
player:SendAreaTriggerMessage("No Way! You are in combat! M8")
else
item:GossipCreateMenu(3543, player, 0)
item:GossipMenuAddItem(4, "Mount me on a cool Flying Mount!", 2, 0)
item:GossipMenuAddItem(4, "Dismount", 3, 0)
item:GossipSendMenu(player)
end
end
function OnSelect(item, event, player, id, intid, code)

if (intid == 2) then
Player:SetFlying()
Player:ModifyRunSpeed(21)
player:SetModel(22841)
end
if (intid == 3) then
player:SetMovementType(256)
player:ModifyRunSpeed(7.5)
player:SetModel(0)
end
end

RegisterItemGossipEvent(99546,1,"Item_Trigger")
RegisterItemGossipEvent(99546,2,"OnSelect")
