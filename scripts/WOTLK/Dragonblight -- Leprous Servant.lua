--[[ Dragonblight -- Leprous Servant.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LeprousServant_OnCombat(Unit, Event)
Unit:RegisterEvent("LeprousServant_LeprousTouch", 8000, 0)
end

function LeprousServant_LeprousTouch(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51315, pUnit:GetMainTank()) 
end

function LeprousServant_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LeprousServant_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LeprousServant_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27800, 1, "LeprousServant_OnCombat")
RegisterUnitEvent(27800, 2, "LeprousServant_OnLeaveCombat")
RegisterUnitEvent(27800, 3, "LeprousServant_OnKilledTarget")
RegisterUnitEvent(27800, 4, "LeprousServant_OnDied")