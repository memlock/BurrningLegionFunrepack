--[[ Howling Fjord -- Bjomolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Bjomolf_OnCombat(Unit, Event)
Unit:RegisterEvent("Bjomolf_GnawBone", 8000, 0)
end

function Bjomolf_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Bjomolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bjomolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bjomolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24516, 1, "Bjomolf_OnCombat")
RegisterUnitEvent(24516, 2, "Bjomolf_OnLeaveCombat")
RegisterUnitEvent(24516, 3, "Bjomolf_OnKilledTarget")
RegisterUnitEvent(24516, 4, "Bjomolf_OnDied")