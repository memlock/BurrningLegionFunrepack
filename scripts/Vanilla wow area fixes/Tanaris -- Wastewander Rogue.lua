--[[ Tanaris -- Wastewander Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function WastewanderRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("WastewanderRogue_Backstab", 5000, 0)
end

function WastewanderRogue_Backstab(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8721, pUnit:GetMainTank()) 
end

function WastewanderRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WastewanderRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WastewanderRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5615, 1, "WastewanderRogue_OnCombat")
RegisterUnitEvent(5615, 2, "WastewanderRogue_OnLeaveCombat")
RegisterUnitEvent(5615, 3, "WastewanderRogue_OnKilledTarget")
RegisterUnitEvent(5615, 4, "WastewanderRogue_OnDied")