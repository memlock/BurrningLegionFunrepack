--[[ Grizzly Hills -- Frostpaw Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function FrostpawShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("FrostpawShaman_ChainLightning", 6000, 0)
Unit:RegisterEvent("FrostpawShaman_LesserHealingWave", 13000, 0)
end

function FrostpawShaman_ChainLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12058, pUnit:GetMainTank()) 
end

function FrostpawShaman_LesserHealingWave(pUnit, Event) 
pUnit:CastSpell(25420) 
end

function FrostpawShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrostpawShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrostpawShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26428, 1, "FrostpawShaman_OnCombat")
RegisterUnitEvent(26428, 2, "FrostpawShaman_OnLeaveCombat")
RegisterUnitEvent(26428, 3, "FrostpawShaman_OnKilledTarget")
RegisterUnitEvent(26428, 4, "FrostpawShaman_OnDied")