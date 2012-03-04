--[[ Tanaris -- Wastewander Assassin.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderAssassin_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderAssassin_Execute", 5000, 0)
end

function WastewanderAssassin_Execute(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7160, pUnit:GetMainTank()) 
end

function WastewanderAssassin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderAssassin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderAssassin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5623, 1, "WastewanderAssassin_OnCombat")
RegisterUnitEvent(5623, 2, "WastewanderAssassin_OnLeaveCombat")
RegisterUnitEvent(5623, 3, "WastewanderAssassin_OnKilledTarget")
RegisterUnitEvent(5623, 4, "WastewanderAssassin_OnDied")