--[[ The Barrens -- Razormane Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function RazormaneHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("RazormaneHunter_Shoot", 6000, 0)
Unit:RegisterEvent("RazormaneHunter_RazormaneWolf", 3000, 1)
end

function RazormaneHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function RazormaneHunter_RazormaneWolf(pUnit, Event) 
pUnit:CastSpell(6479) 
end

function RazormaneHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RazormaneHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RazormaneHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3265, 1, "RazormaneHunter_OnCombat")
RegisterUnitEvent(3265, 2, "RazormaneHunter_OnLeaveCombat")
RegisterUnitEvent(3265, 3, "RazormaneHunter_OnKilledTarget")
RegisterUnitEvent(3265, 4, "RazormaneHunter_OnDied")