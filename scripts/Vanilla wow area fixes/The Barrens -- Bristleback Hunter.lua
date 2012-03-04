--[[ The Barrens -- Bristleback Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackHunter_Shoot", 5000, 0)
Unit:RegisterEvent("BristlebackHunter_PoisonedShot", 1000, 1)
end

function BristlebackHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function BristlebackHunter_PoisonedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8806, pUnit:GetMainTank()) 
end

function BristlebackHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3258, 1, "BristlebackHunter_OnCombat")
RegisterUnitEvent(3258, 2, "BristlebackHunter_OnLeaveCombat")
RegisterUnitEvent(3258, 3, "BristlebackHunter_OnKilledTarget")
RegisterUnitEvent(3258, 4, "BristlebackHunter_OnDied")