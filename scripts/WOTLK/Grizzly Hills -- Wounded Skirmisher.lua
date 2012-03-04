--[[ Grizzly Hills -- Wounded Skirmisher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function WoundedSkirmisher_OnCombat(Unit, Event)
Unit:RegisterEvent("WoundedSkirmisher_Cleave", 9000, 0)
Unit:RegisterEvent("WoundedSkirmisher_Hamstring", 10000, 0)
Unit:RegisterEvent("WoundedSkirmisher_MortalStrike", 7000, 0)
end

function WoundedSkirmisher_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function WoundedSkirmisher_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WoundedSkirmisher_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function WoundedSkirmisher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WoundedSkirmisher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WoundedSkirmisher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27463, 1, "WoundedSkirmisher_OnCombat")
RegisterUnitEvent(27463, 2, "WoundedSkirmisher_OnLeaveCombat")
RegisterUnitEvent(27463, 3, "WoundedSkirmisher_OnKilledTarget")
RegisterUnitEvent(27463, 4, "WoundedSkirmisher_OnDied")