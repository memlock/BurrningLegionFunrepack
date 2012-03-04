--[[ Dragonblight -- Frenzied Gargoyle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FrenziedGargoyle_OnCombat(Unit, Event)
Unit:RegisterEvent("FrenziedGargoyle_GargoyleStrike", 6500, 0)
end

function FrenziedGargoyle_GargoyleStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31664, pUnit:GetMainTank()) 
end

function FrenziedGargoyle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrenziedGargoyle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrenziedGargoyle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27691, 1, "FrenziedGargoyle_OnCombat")
RegisterUnitEvent(27691, 2, "FrenziedGargoyle_OnLeaveCombat")
RegisterUnitEvent(27691, 3, "FrenziedGargoyle_OnKilledTarget")
RegisterUnitEvent(27691, 4, "FrenziedGargoyle_OnDied")