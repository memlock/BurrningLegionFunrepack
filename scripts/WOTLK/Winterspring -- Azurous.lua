--[[ Winterspring -- Azurous.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 18th, 2008. ]]

function Azurous_OnCombat(Unit, Event)
Unit:RegisterEvent("Azurous_Breath", 8000, 0)
end

function Azurous_Breath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16099, pUnit:GetMainTank()) 
end

function Azurous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Azurous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Azurous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10202, 1, "Azurous_OnCombat")
RegisterUnitEvent(10202, 2, "Azurous_OnLeaveCombat")
RegisterUnitEvent(10202, 3, "Azurous_OnKilledTarget")
RegisterUnitEvent(10202, 4, "Azurous_OnDied")