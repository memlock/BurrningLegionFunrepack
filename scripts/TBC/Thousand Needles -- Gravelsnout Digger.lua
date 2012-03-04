--[[ Thousand Needles -- Gravelsnout Digger.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GravelsnoutDigger_OnCombat(Unit, Event)
Unit:RegisterEvent("GravelsnoutDigger_SkullCrack", 8000, 0)
end

function GravelsnoutDigger_SkullCrack(pUnit, Event) 
pUnit:CastSpell(3551) 
end

function GravelsnoutDigger_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GravelsnoutDigger_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GravelsnoutDigger_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4113, 1, "GravelsnoutDigger_OnCombat")
RegisterUnitEvent(4113, 2, "GravelsnoutDigger_OnLeaveCombat")
RegisterUnitEvent(4113, 3, "GravelsnoutDigger_OnKilledTarget")
RegisterUnitEvent(4113, 4, "GravelsnoutDigger_OnDied")