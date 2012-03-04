--[[ Durotar -- Dire Mottled Boar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DireMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("DireMottledBoar_BoarCharge", 6000, 0)
end

function DireMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function DireMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DireMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DireMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3099, 1, "DireMottledBoar_OnCombat")
RegisterUnitEvent(3099, 2, "DireMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3099, 3, "DireMottledBoar_OnKilledTarget")
RegisterUnitEvent(3099, 4, "DireMottledBoar_OnDied")