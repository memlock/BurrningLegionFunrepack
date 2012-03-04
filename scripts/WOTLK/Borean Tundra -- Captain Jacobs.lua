--[[ Borean Tundra -- Captain Jacobs.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function CaptainJacobs_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainJacobs_BladeFlurry", 10000, 0)
Unit:RegisterEvent("CaptainJacobs_MortalStrike", 8000, 0)
end

function CaptainJacobs_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(33735) 
end

function CaptainJacobs_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function CaptainJacobs_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainJacobs_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainJacobs_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26252, 1, "CaptainJacobs_OnCombat")
RegisterUnitEvent(26252, 2, "CaptainJacobs_OnLeaveCombat")
RegisterUnitEvent(26252, 3, "CaptainJacobs_OnKilledTarget")
RegisterUnitEvent(26252, 4, "CaptainJacobs_OnDied")