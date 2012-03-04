--[[ Tanaris -- Soriid the Devourer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SoriidtheDevourer_OnCombat(Unit, Event)
Unit:RegisterEvent("SoriidtheDevourer_PierceArmor", 25000, 0)
Unit:RegisterEvent("SoriidtheDevourer_Rend", 20000, 0)
end

function SoriidtheDevourer_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12097, pUnit:GetMainTank()) 
end

function SoriidtheDevourer_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function SoriidtheDevourer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SoriidtheDevourer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SoriidtheDevourer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8204, 1, "SoriidtheDevourer_OnCombat")
RegisterUnitEvent(8204, 2, "SoriidtheDevourer_OnLeaveCombat")
RegisterUnitEvent(8204, 3, "SoriidtheDevourer_OnKilledTarget")
RegisterUnitEvent(8204, 4, "SoriidtheDevourer_OnDied")