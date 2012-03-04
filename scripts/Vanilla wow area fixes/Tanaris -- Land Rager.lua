--[[ Tanaris -- Land Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function LandRager_OnCombat(Unit, Event)
Unit:RegisterEvent("LandRager_Enrage", 120000, 0)
end

function LandRager_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function LandRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LandRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LandRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5465, 1, "LandRager_OnCombat")
RegisterUnitEvent(5465, 2, "LandRager_OnLeaveCombat")
RegisterUnitEvent(5465, 3, "LandRager_OnKilledTarget")
RegisterUnitEvent(5465, 4, "LandRager_OnDied")