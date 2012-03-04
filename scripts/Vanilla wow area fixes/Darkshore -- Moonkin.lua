--[[ Darkshore -- Moonkin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function Moonkin_OnCombat(Unit, Event)
Unit:RegisterEvent("Moonkin_Thrash", 6000, 0)
end

function Moonkin_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function Moonkin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Moonkin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Moonkin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10158, 1, "Moonkin_OnCombat")
RegisterUnitEvent(10158, 2, "Moonkin_OnLeaveCombat")
RegisterUnitEvent(10158, 3, "Moonkin_OnKilledTarget")
RegisterUnitEvent(10158, 4, "Moonkin_OnDied")