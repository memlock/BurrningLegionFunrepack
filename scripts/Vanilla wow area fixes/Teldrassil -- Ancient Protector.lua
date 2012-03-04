--[[ Teldrassil -- Ancient Protector.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function AncientProtector_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientProtector_EntanglingRoots", 10000, 0)
Unit:RegisterEvent("AncientProtector_WarStomp", 6000, 0)
end

function AncientProtector_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11922, pUnit:GetRandomPlayer(0)) 
end

function AncientProtector_WarStomp(pUnit, Event) 
pUnit:CastSpell(45) 
end

function AncientProtector_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientProtector_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientProtector_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2041, 1, "AncientProtector_OnCombat")
RegisterUnitEvent(2041, 2, "AncientProtector_OnLeaveCombat")
RegisterUnitEvent(2041, 3, "AncientProtector_OnKilledTarget")
RegisterUnitEvent(2041, 4, "AncientProtector_OnDied")