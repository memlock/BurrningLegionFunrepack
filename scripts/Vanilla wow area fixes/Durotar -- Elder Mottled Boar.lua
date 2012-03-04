--[[ Durotar -- Elder Mottled Boar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function ElderMottledBoar_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderMottledBoar_BoarCharge", 6000, 0)
end

function ElderMottledBoar_BoarCharge(pUnit, Event) 
pUnit:CastSpell(3385) 
end

function ElderMottledBoar_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderMottledBoar_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderMottledBoar_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3100, 1, "ElderMottledBoar_OnCombat")
RegisterUnitEvent(3100, 2, "ElderMottledBoar_OnLeaveCombat")
RegisterUnitEvent(3100, 3, "ElderMottledBoar_OnKilledTarget")
RegisterUnitEvent(3100, 4, "ElderMottledBoar_OnDied")