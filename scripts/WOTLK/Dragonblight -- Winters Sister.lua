--[[ Dragonblight -- Winters Sister.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function WintersSister_OnCombat(Unit, Event)
Unit:RegisterEvent("WintersSister_FrostShock", 6000, 0)
end

function WintersSister_FrostShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12548, pUnit:GetMainTank()) 
end

function WintersSister_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WintersSister_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WintersSister_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26456, 1, "WintersSister_OnCombat")
RegisterUnitEvent(26456, 2, "WintersSister_OnLeaveCombat")
RegisterUnitEvent(26456, 3, "WintersSister_OnKilledTarget")
RegisterUnitEvent(26456, 4, "WintersSister_OnDied")