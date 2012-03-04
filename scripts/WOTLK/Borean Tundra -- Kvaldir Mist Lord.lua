--[[ Borean Tundra -- Kvaldir Mist Lord.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function KvaldirMistLord_OnCombat(Unit, Event)
Unit:RegisterEvent("KvaldirMistLord_WaveCrash", 8000, 0)
end

function KvaldirMistLord_WaveCrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49922, pUnit:GetMainTank()) 
end

function KvaldirMistLord_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KvaldirMistLord_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KvaldirMistLord_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25496, 1, "KvaldirMistLord_OnCombat")
RegisterUnitEvent(25496, 2, "KvaldirMistLord_OnLeaveCombat")
RegisterUnitEvent(25496, 3, "KvaldirMistLord_OnKilledTarget")
RegisterUnitEvent(25496, 4, "KvaldirMistLord_OnDied")