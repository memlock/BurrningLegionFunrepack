--[[ Darkshore -- Xabraxxis.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function Xabraxxis_OnCombat(Unit, Event)
Unit:RegisterEvent("Xabraxxis_CurseofWeakness", 4000, 1)
Unit:RegisterEvent("Xabraxxis_Enrage", 10000, 1)
Unit:RegisterEvent("Xabraxxis_ShadowWordPain", 11390, 0)
end

function Xabraxxis_CurseofWeakness(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11980, pUnit:GetMainTank()) 
end

function Xabraxxis_Enrage(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8599, pUnit:GetMainTank()) 
end

function Xabraxxis_ShadowWordPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11639, pUnit:GetMainTank()) 
end

function Xabraxxis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Xabraxxis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Xabraxxis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10373, 1, "Xabraxxis_OnCombat")
RegisterUnitEvent(10373, 2, "Xabraxxis_OnLeaveCombat")
RegisterUnitEvent(10373, 3, "Xabraxxis_OnKilledTarget")
RegisterUnitEvent(10373, 4, "Xabraxxis_OnDied")