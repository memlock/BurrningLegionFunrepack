--[[ Azshara -- Makrinni Razorclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function MakrinniRazorclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MakrinniRazorclaw_SunderArmor", 5000, 0)
end

function MakrinniRazorclaw_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13444, pUnit:GetMainTank()) 
end

function MakrinniRazorclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakrinniRazorclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakrinniRazorclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6350, 1, "MakrinniRazorclaw_OnCombat")
RegisterUnitEvent(6350, 2, "MakrinniRazorclaw_OnLeaveCombat")
RegisterUnitEvent(6350, 3, "MakrinniRazorclaw_OnKilledTarget")
RegisterUnitEvent(6350, 4, "MakrinniRazorclaw_OnDied")