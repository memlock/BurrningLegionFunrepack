--[[ Desolace -- Hatefury Felsworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryFelsworn_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryFelsworn_Enrage", 10000, 1)
end

function HatefuryFelsworn_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryFelsworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryFelsworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryFelsworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4672, 1, "HatefuryFelsworn_OnCombat")
RegisterUnitEvent(4672, 2, "HatefuryFelsworn_OnLeaveCombat")
RegisterUnitEvent(4672, 3, "HatefuryFelsworn_OnKilledTarget")
RegisterUnitEvent(4672, 4, "HatefuryFelsworn_OnDied")