--[[ The Barrens -- Bristleback Thornweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function BristlebackThornweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlebackThornweaver_Thorns", 3000, 1)
Unit:RegisterEvent("BristlebackThornweaver_EntanglingRoots", 12000, 0)
end

function BristlebackThornweaver_Thorns(pUnit, Event) 
pUnit:CastSpell(782) 
end

function BristlebackThornweaver_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12747, pUnit:GetMainTank()) 
end

function BristlebackThornweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlebackThornweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlebackThornweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3261, 1, "BristlebackThornweaver_OnCombat")
RegisterUnitEvent(3261, 2, "BristlebackThornweaver_OnLeaveCombat")
RegisterUnitEvent(3261, 3, "BristlebackThornweaver_OnKilledTarget")
RegisterUnitEvent(3261, 4, "BristlebackThornweaver_OnDied")