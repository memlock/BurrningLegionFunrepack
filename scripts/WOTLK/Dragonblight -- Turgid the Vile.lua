--[[ Dragonblight -- Turgid the Vile.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function TurgidtheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("TurgidtheVile_ScourgeHook", 6000, 0)
Unit:RegisterEvent("TurgidtheVile_VileVommit", 8000, 0)
end

function TurgidtheVile_ScourgeHook(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50335, pUnit:GetMainTank()) 
end

function TurgidtheVile_VileVommit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51356, pUnit:GetMainTank()) 
end

function TurgidtheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TurgidtheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TurgidtheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27808, 1, "TurgidtheVile_OnCombat")
RegisterUnitEvent(27808, 2, "TurgidtheVile_OnLeaveCombat")
RegisterUnitEvent(27808, 3, "TurgidtheVile_OnKilledTarget")
RegisterUnitEvent(27808, 4, "TurgidtheVile_OnDied")