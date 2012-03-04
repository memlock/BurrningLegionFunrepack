--[[ Mulgore -- Galak Outrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]


function GalakOutrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("GalakOutrunner_Shot", 6000, 0)
end

function GalakOutrunner_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GalakOutrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GalakOutrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GalakOutrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2968, 1, "GalakOutrunner_OnCombat")
RegisterUnitEvent(2968, 2, "GalakOutrunner_OnLeaveCombat")
RegisterUnitEvent(2968, 3, "GalakOutrunner_OnKilledTarget")
RegisterUnitEvent(2968, 4, "GalakOutrunner_OnDied")