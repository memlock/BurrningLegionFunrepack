--[[ Dragonblight -- Fordragon Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function FordragonSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("FordragonSentinel_GlaiveThrow", 8000, 0)
end

function FordragonSentinel_GlaiveThrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49481, pUnit:GetMainTank()) 
end

function FordragonSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FordragonSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FordragonSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27576, 1, "FordragonSentinel_OnCombat")
RegisterUnitEvent(27576, 2, "FordragonSentinel_OnLeaveCombat")
RegisterUnitEvent(27576, 3, "FordragonSentinel_OnKilledTarget")
RegisterUnitEvent(27576, 4, "FordragonSentinel_OnDied")