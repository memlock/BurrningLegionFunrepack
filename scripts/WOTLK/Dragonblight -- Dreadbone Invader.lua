--[[ Dragonblight -- Dreadbone Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function DreadboneInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("DreadboneInvader_Soulthirst", 10000, 0)
end

function DreadboneInvader_Soulthirst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51290, pUnit:GetMainTank()) 
end

function DreadboneInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DreadboneInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DreadboneInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27286, 1, "DreadboneInvader_OnCombat")
RegisterUnitEvent(27286, 2, "DreadboneInvader_OnLeaveCombat")
RegisterUnitEvent(27286, 3, "DreadboneInvader_OnKilledTarget")
RegisterUnitEvent(27286, 4, "DreadboneInvader_OnDied")