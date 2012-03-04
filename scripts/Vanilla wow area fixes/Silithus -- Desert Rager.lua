--[[ Silithus -- Desert Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function DesertRager_OnCombat(Unit, Event)
Unit:RegisterEvent("DesertRager_EarthShock", 8000, 0)
Unit:RegisterEvent("DesertRager_Enrage", 12000, 1)
end

function DesertRager_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13728, pUnit:GetMainTank()) 
end

function DesertRager_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function DesertRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DesertRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DesertRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11747, 1, "DesertRager_OnCombat")
RegisterUnitEvent(11747, 2, "DesertRager_OnLeaveCombat")
RegisterUnitEvent(11747, 3, "DesertRager_OnKilledTarget")
RegisterUnitEvent(11747, 4, "DesertRager_OnDied")