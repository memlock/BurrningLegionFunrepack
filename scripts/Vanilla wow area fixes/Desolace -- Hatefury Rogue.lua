--[[ Desolace -- Hatefury Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryRogue_Enrage", 10000, 1)
end

function HatefuryRogue_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4670, 1, "HatefuryRogue_OnCombat")
RegisterUnitEvent(4670, 2, "HatefuryRogue_OnLeaveCombat")
RegisterUnitEvent(4670, 3, "HatefuryRogue_OnKilledTarget")
RegisterUnitEvent(4670, 4, "HatefuryRogue_OnDied")