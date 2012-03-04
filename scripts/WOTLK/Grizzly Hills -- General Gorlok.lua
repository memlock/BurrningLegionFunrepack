--[[ Grizzly Hills -- General Gorlok.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function GeneralGorlok_OnCombat(Unit, Event)
Unit:RegisterEvent("GeneralGorlok_BerserkerCharge", 6000, 0)
Unit:RegisterEvent("GeneralGorlok_MortalStrike", 8000, 0)
end

function GeneralGorlok_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16636, pUnit:GetMainTank()) 
end

function GeneralGorlok_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function GeneralGorlok_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GeneralGorlok_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GeneralGorlok_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27708, 1, "GeneralGorlok_OnCombat")
RegisterUnitEvent(27708, 2, "GeneralGorlok_OnLeaveCombat")
RegisterUnitEvent(27708, 3, "GeneralGorlok_OnKilledTarget")
RegisterUnitEvent(27708, 4, "GeneralGorlok_OnDied")