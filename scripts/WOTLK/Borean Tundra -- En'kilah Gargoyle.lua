--[[ Borean Tundra -- En'kilah Gargoyle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function EnkilahGargoyle_OnCombat(Unit, Event)
Unit:RegisterEvent("EnkilahGargoyle_GargoyleStrike", 6000, 0)
end

function EnkilahGargoyle_GargoyleStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16564, pUnit:GetMainTank()) 
end

function EnkilahGargoyle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EnkilahGargoyle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EnkilahGargoyle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25387, 1, "EnkilahGargoyle_OnCombat")
RegisterUnitEvent(25387, 2, "EnkilahGargoyle_OnLeaveCombat")
RegisterUnitEvent(25387, 3, "EnkilahGargoyle_OnKilledTarget")
RegisterUnitEvent(25387, 4, "EnkilahGargoyle_OnDied")