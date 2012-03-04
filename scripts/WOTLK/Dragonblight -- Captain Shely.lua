--[[ Dragonblight -- Captain Shely.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CaptainShely_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainShely_RunThrough", 5000, 1)
end

function CaptainShely_RunThrough(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50853, pUnit:GetMainTank()) 
end

function CaptainShely_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainShely_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainShely_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27232, 1, "CaptainShely_OnCombat")
RegisterUnitEvent(27232, 2, "CaptainShely_OnLeaveCombat")
RegisterUnitEvent(27232, 3, "CaptainShely_OnKilledTarget")
RegisterUnitEvent(27232, 4, "CaptainShely_OnDied")