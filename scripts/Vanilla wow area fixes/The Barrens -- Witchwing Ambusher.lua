--[[ The Barrens -- Witchwing Ambusher.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function WitchwingAmbusher_OnCombat(Unit, Event)
Unit:RegisterEvent("WitchwingAmbusher_ExploitWeakness", 5000, 0)
end

function WitchwingAmbusher_ExploitWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6595, pUnit:GetMainTank()) 
end

function WitchwingAmbusher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WitchwingAmbusher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WitchwingAmbusher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3279, 1, "WitchwingAmbusher_OnCombat")
RegisterUnitEvent(3279, 2, "WitchwingAmbusher_OnLeaveCombat")
RegisterUnitEvent(3279, 3, "WitchwingAmbusher_OnKilledTarget")
RegisterUnitEvent(3279, 4, "WitchwingAmbusher_OnDied")