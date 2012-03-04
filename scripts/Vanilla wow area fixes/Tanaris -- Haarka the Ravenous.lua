--[[ Tanaris -- Haarka the Ravenous.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HaarkatheRavenous_OnCombat(Unit, Event)
Unit:RegisterEvent("HaarkatheRavenous_SunderArmor", 10000, 0)
Unit:RegisterEvent("HaarkatheRavenous_Thrash", 5000, 0)
end

function HaarkatheRavenous_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21081, pUnit:GetMainTank()) 
end

function HaarkatheRavenous_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function HaarkatheRavenous_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaarkatheRavenous_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaarkatheRavenous_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8205, 1, "HaarkatheRavenous_OnCombat")
RegisterUnitEvent(8205, 2, "HaarkatheRavenous_OnLeaveCombat")
RegisterUnitEvent(8205, 3, "HaarkatheRavenous_OnKilledTarget")
RegisterUnitEvent(8205, 4, "HaarkatheRavenous_OnDied")