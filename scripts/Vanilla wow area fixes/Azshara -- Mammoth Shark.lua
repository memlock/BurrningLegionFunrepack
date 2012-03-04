--[[ Azshara -- Mammoth Shark.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MammothShark_OnCombat(Unit, Event)
Unit:RegisterEvent("MammothShark_Thrash", 5000, 0)
end

function MammothShark_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function MammothShark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MammothShark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MammothShark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12125, 1, "MammothShark_OnCombat")
RegisterUnitEvent(12125, 2, "MammothShark_OnLeaveCombat")
RegisterUnitEvent(12125, 3, "MammothShark_OnKilledTarget")
RegisterUnitEvent(12125, 4, "MammothShark_OnDied")