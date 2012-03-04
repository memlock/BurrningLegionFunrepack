--[[ Grizzly Hills -- Conquest Hold Skirmisher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquestHoldSkirmisher_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquestHoldSkirmisher_Cleave", 8000, 0)
Unit:RegisterEvent("ConquestHoldSkirmisher_Hamstring", 10000, 0)
Unit:RegisterEvent("ConquestHoldSkirmisher_MortalStrike", 7000, 0)
end

function ConquestHoldSkirmisher_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function ConquestHoldSkirmisher_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function ConquestHoldSkirmisher_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function ConquestHoldSkirmisher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquestHoldSkirmisher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquestHoldSkirmisher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27456, 1, "ConquestHoldSkirmisher_OnCombat")
RegisterUnitEvent(27456, 2, "ConquestHoldSkirmisher_OnLeaveCombat")
RegisterUnitEvent(27456, 3, "ConquestHoldSkirmisher_OnKilledTarget")
RegisterUnitEvent(27456, 4, "ConquestHoldSkirmisher_OnDied")