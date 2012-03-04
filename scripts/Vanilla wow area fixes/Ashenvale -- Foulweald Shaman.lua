--[[ Ashenvale -- Foulweald Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function FoulwealdShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("FoulwealdShaman_StrengthofEarthTotem", 2000, 1)
end

function FoulwealdShaman_StrengthofEarthTotem(pUnit, Event) 
pUnit:CastSpell(8160) 
end

function FoulwealdShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FoulwealdShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FoulwealdShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3748, 1, "FoulwealdShaman_OnCombat")
RegisterUnitEvent(3748, 2, "FoulwealdShaman_OnLeaveCombat")
RegisterUnitEvent(3748, 3, "FoulwealdShaman_OnKilledTarget")
RegisterUnitEvent(3748, 4, "FoulwealdShaman_OnDied")