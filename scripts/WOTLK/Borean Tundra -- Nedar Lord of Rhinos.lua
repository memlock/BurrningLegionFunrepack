--[[ Borean Tundra -- Nedar Lord of Rhinos.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NedarLordofRhinos_OnCombat(Unit, Event)
Unit:RegisterEvent("NedarLordofRhinos_Shoot", 6000, 0)
end

function NedarLordofRhinos_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(41440, pUnit:GetMainTank()) 
end

function NedarLordofRhinos_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NedarLordofRhinos_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NedarLordofRhinos_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25801, 1, "NedarLordofRhinos_OnCombat")
RegisterUnitEvent(25801, 2, "NedarLordofRhinos_OnLeaveCombat")
RegisterUnitEvent(25801, 3, "NedarLordofRhinos_OnKilledTarget")
RegisterUnitEvent(25801, 4, "NedarLordofRhinos_OnDied")