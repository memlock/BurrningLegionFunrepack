--[[ Dragonblight -- Coldwind Waste Huntress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ColdwindWasteHuntress_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdwindWasteHuntress_EyePeck", 6000, 0)
end

function ColdwindWasteHuntress_EyePeck(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49865, pUnit:GetMainTank()) 
end

function ColdwindWasteHuntress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdwindWasteHuntress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdwindWasteHuntress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26575, 1, "ColdwindWasteHuntress_OnCombat")
RegisterUnitEvent(26575, 2, "ColdwindWasteHuntress_OnLeaveCombat")
RegisterUnitEvent(26575, 3, "ColdwindWasteHuntress_OnKilledTarget")
RegisterUnitEvent(26575, 4, "ColdwindWasteHuntress_OnDied")