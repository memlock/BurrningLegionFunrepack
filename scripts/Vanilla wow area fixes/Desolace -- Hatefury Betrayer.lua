--[[ Desolace -- Hatefury Betrayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryBetrayer_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryBetrayer_Enrage", 10000, 1)
end

function HatefuryBetrayer_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryBetrayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryBetrayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryBetrayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4673, 1, "HatefuryBetrayer_OnCombat")
RegisterUnitEvent(4673, 2, "HatefuryBetrayer_OnLeaveCombat")
RegisterUnitEvent(4673, 3, "HatefuryBetrayer_OnKilledTarget")
RegisterUnitEvent(4673, 4, "HatefuryBetrayer_OnDied")