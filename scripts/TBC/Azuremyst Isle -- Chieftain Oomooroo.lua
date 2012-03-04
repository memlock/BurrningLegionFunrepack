--[[ Azuremyst Isle -- Chieftain Oomooroo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function ChieftainOomooroo_OnCombat(Unit, Event)
Unit:RegisterEvent("ChieftainOomooroo_Enrage", 10000, 1)
Unit:RegisterEvent("ChieftainOomooroo_Strike", 6000, 0)
end

function ChieftainOomooroo_Enrage(pUnit, Event) 
pUnit:CastSpell(18501) 
end

function ChieftainOomooroo_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13446, pUnit:GetMainTank()) 
end

function ChieftainOomooroo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChieftainOomooroo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChieftainOomooroo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17448, 1, "ChieftainOomooroo_OnCombat")
RegisterUnitEvent(17448, 2, "ChieftainOomooroo_OnLeaveCombat")
RegisterUnitEvent(17448, 3, "ChieftainOomooroo_OnKilledTarget")
RegisterUnitEvent(17448, 4, "ChieftainOomooroo_OnDied")