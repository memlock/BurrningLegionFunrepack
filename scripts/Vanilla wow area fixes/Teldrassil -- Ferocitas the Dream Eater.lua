--[[ Teldrassil -- Ferocitas the Dream Eater.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FerocitastheDreamEater_OnCombat(Unit, Event)
Unit:RegisterEvent("FerocitastheDreamEater_Thrash", 5000, 0)
end

function FerocitastheDreamEater_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function FerocitastheDreamEater_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FerocitastheDreamEater_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FerocitastheDreamEater_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7234, 1, "FerocitastheDreamEater_OnCombat")
RegisterUnitEvent(7234, 2, "FerocitastheDreamEater_OnLeaveCombat")
RegisterUnitEvent(7234, 3, "FerocitastheDreamEater_OnKilledTarget")
RegisterUnitEvent(7234, 4, "FerocitastheDreamEater_OnDied")