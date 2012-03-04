--[[ Grizzly Hills -- Guardian Serpent.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GuardianSerpent_OnCombat(Unit, Event)
Unit:RegisterEvent("GuardianSerpent_TailLash", 6000, 0)
end

function GuardianSerpent_TailLash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34811, pUnit:GetMainTank()) 
end

function GuardianSerpent_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GuardianSerpent_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GuardianSerpent_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26806, 1, "GuardianSerpent_OnCombat")
RegisterUnitEvent(26806, 2, "GuardianSerpent_OnLeaveCombat")
RegisterUnitEvent(26806, 3, "GuardianSerpent_OnKilledTarget")
RegisterUnitEvent(26806, 4, "GuardianSerpent_OnDied")