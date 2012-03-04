--[[ Bloodmyst Isle -- Axxarien Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AxxarienHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienHellcaller_RainOfFire", 10000, 0)
end

function AxxarienHellcaller_RainOfFire(pUnit, Event) 
pUnit:CastSpell(11990) 
end

function AxxarienHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17342, 1, "AxxarienHellcaller_OnCombat")
RegisterUnitEvent(17342, 2, "AxxarienHellcaller_OnLeaveCombat")
RegisterUnitEvent(17342, 3, "AxxarienHellcaller_OnKilledTarget")
RegisterUnitEvent(17342, 4, "AxxarienHellcaller_OnDied")