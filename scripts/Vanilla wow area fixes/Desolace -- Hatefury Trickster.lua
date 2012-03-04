--[[ Desolace -- Hatefury Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryTrickster_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryTrickster_Poison", 8000, 1)
end

function HatefuryTrickster_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryTrickster_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetMainTank()) 
end

function HatefuryTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4671, 1, "HatefuryTrickster_OnCombat")
RegisterUnitEvent(4671, 2, "HatefuryTrickster_OnLeaveCombat")
RegisterUnitEvent(4671, 3, "HatefuryTrickster_OnKilledTarget")
RegisterUnitEvent(4671, 4, "HatefuryTrickster_OnDied")