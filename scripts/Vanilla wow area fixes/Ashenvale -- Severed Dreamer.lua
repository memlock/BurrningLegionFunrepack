--[[ Ashenvale -- Severed Dreamer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SeveredDreamer_OnCombat(Unit, Event)
Unit:RegisterEvent("SeveredDreamer_SummonIllusionaryNightmare", 1000, 1)
end

function SeveredDreamer_SummonIllusionaryNightmare(pUnit, Event) 
pUnit:CastSpell(6905) 
end

function SeveredDreamer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SeveredDreamer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SeveredDreamer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3802, 1, "SeveredDreamer_OnCombat")
RegisterUnitEvent(3802, 2, "SeveredDreamer_OnLeaveCombat")
RegisterUnitEvent(3802, 3, "SeveredDreamer_OnKilledTarget")
RegisterUnitEvent(3802, 4, "SeveredDreamer_OnDied")