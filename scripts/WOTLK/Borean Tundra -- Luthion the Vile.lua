--[[ Borean Tundra -- Luthion the Vile.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function LuthiontheVile_OnCombat(Unit, Event)
Unit:RegisterEvent("LuthiontheVile_BloodPresence", 4000, 1)
Unit:RegisterEvent("LuthiontheVile_PlagueStrike", 9000, 0)
end

function LuthiontheVile_BloodPresence(pUnit, Event) 
pUnit:CastSpell(50689) 
end

function LuthiontheVile_PlagueStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50688, pUnit:GetMainTank()) 
end

function LuthiontheVile_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LuthiontheVile_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LuthiontheVile_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27860, 1, "LuthiontheVile_OnCombat")
RegisterUnitEvent(27860, 2, "LuthiontheVile_OnLeaveCombat")
RegisterUnitEvent(27860, 3, "LuthiontheVile_OnKilledTarget")
RegisterUnitEvent(27860, 4, "LuthiontheVile_OnDied")