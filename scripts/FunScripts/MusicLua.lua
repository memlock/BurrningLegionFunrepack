function Music_OnGossipTalk(pUnit, event, player, pMisc)
pUnit:GossipCreateMenu(100, player, 1)
pUnit:GossipMenuAddItem(0, "Power of the Horde!", 1, 0)
pUnit:GossipMenuAddItem(0, "Religious Music", 2, 0)
pUnit:GossipMenuAddItem(0, "War Drums", 3, 0)
pUnit:GossipMenuAddItem(0, "MURLOC!!!", 4, 0)
pUnit:GossipMenuAddItem(0, "Wooot? Illidan??", 5, 0)
pUnit:GossipMenuAddItem(1,"Play Silvermoon City", 6, 0)
pUnit:GossipMenuAddItem(1,"Play Drama Music", 7, 0)
pUnit:GossipMenuAddItem(1,"Play Dwarf Music", 8, 0)
pUnit:GossipMenuAddItem(1,"Play Stormwind City", 9, 0)
pUnit:GossipMenuAddItem(1,"Play Irish Ditty", 10, 0)
pUnit:GossipMenuAddItem(1,"Play Horde Tavern", 11, 0)
pUnit:GossipMenuAddItem(1,"Play Alliance Tavern", 12, 0)
pUnit:GossipMenuAddItem(1,"Play Anguish Walk", 13, 0)
pUnit:GossipMenuAddItem(1,"Play Vigil Walk", 14, 0)
pUnit:GossipMenuAddItem(1,"Play Dwarf Brewfest", 15, 0)
pUnit:GossipMenuAddItem(1,"Play Nagrand", 16, 0)
pUnit:GossipSendMenu(player)
end


function Music_OnGossipSelect(pUnit, event, player, id, intid, code, pMisc)
if (intid == 1) then
pUnit:SendChatMessage(14, 0, "LETS ROCK!")
pUnit:PlaySoundToSet(11803)
pUnit:GossipComplete(player)
end

if (intid == 2) then
pUnit:SendChatMessage(12, 0, "Relax and listen...")
pUnit:PlaySoundToSet(11699)
pUnit:GossipComplete(player)
end

if (intid == 3) then
pUnit:PlaySoundToSet(11704)
pUnit:GossipComplete(player)
end

if (intid == 4) then
pUnit:SendChatMessage(12, 0, "Rgrglrgrlgrl")
pUnit:PlaySoundToSet(11802)
pUnit:GossipComplete(player)
end

if (intid == 5) then
pUnit:SendChatMessage(14, 0, "You are not prepared!")
pUnit:PlaySoundToSet(11466)
pUnit:GossipComplete(player)
end

if(intid == 6) then
player:PlaySoundToSet(9801)
pUnit:SendChatMessage(12, 0, "Now Playing: Silvermoon City")
player:GossipComplete(player)
end

if(intid == 7) then
player:PlaySoundToSet(11706)
pUnit:SendChatMessage(12, 0, "Now Playing: Drama Music")
player:GossipComplete(player)
end

if(intid == 8) then
player:PlaySoundToSet(11810)
pUnit:SendChatMessage(12, 0, "Now Playing: Dwarf Music")
player:GossipComplete(player)
end

if(intid == 9) then
player:PlaySoundToSet(2532)
pUnit:SendChatMessage(12, 0, "Now Playing: Stormwind City")
player:GossipComplete(player)
end

if(intid == 10) then
player:PlaySoundToSet(11805)
pUnit:SendChatMessage(12, 0, "Now Playing: Irish Ditty")
player:GossipComplete(player)
end

if(intid == 11) then
player:PlaySoundToSet(5234)
pUnit:SendChatMessage(12, 0, "Now Playing: Horde Tavern")
player:GossipComplete(player)
end

if(intid == 12) then
player:PlaySoundToSet(4516)
pUnit:SendChatMessage(12, 0, "Now Playing: Alliance Tavern")
player:GossipComplete(player)
end

if(intid == 13) then 
player:PlaySoundToSet(11700)
pUnit:SendChatMessage(12, 0, "Now Playing:  Anguish Walk")
player:GossipComplete(player)
end

if(intid == 14) then
player:PlaySoundToSet(11702)
pUnit:SendChatMessage(12, 0, "Now Playing:  Vigil Walk")
player:GossipComplete(player)
end

if(intid == 15) then
player:PlaySoundToSet(11810)
pUnit:SendChatMessage(12, 0, "Now Playing:  Dwarf Brewfest ")
player:GossipComplete(player)
end

if(intid == 16) then
player:PlaySoundToSet(10849)
pUnit:SendChatMessage(12, 0, "Now Playing: Nagrand")
player:GossipComplete(player)
end
end

RegisterUnitGossipEvent(996230, 1, "Music_OnGossipTalk")
RegisterUnitGossipEvent(996230, 2, "Music_OnGossipSelect")
