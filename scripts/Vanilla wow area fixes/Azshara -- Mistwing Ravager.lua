--[[ Azshara -- Mistwing Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MistwingRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("MistwingRavager_PoisonedShot", 10000, 0)
end

function MistwingRavager_PoisonedShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8806, pUnit:GetMainTank()) 
end

function MistwingRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MistwingRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MistwingRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8764, 1, "MistwingRavager_OnCombat")
RegisterUnitEvent(8764, 2, "MistwingRavager_OnLeaveCombat")
RegisterUnitEvent(8764, 3, "MistwingRavager_OnKilledTarget")
RegisterUnitEvent(8764, 4, "MistwingRavager_OnDied")