--[[ Darkshore -- Carnivous the Breaker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function CarnivoustheBreaker_OnCombat(Unit, Event)
Unit:RegisterEvent("CarnivoustheBreaker_PierceArmor", 9000, 0)
Unit:RegisterEvent("CarnivoustheBreaker_Thrash", 5000, 0)
end

function CarnivoustheBreaker_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function CarnivoustheBreaker_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function CarnivoustheBreaker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CarnivoustheBreaker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CarnivoustheBreaker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2186, 1, "CarnivoustheBreaker_OnCombat")
RegisterUnitEvent(2186, 2, "CarnivoustheBreaker_OnLeaveCombat")
RegisterUnitEvent(2186, 3, "CarnivoustheBreaker_OnKilledTarget")
RegisterUnitEvent(2186, 4, "CarnivoustheBreaker_OnDied")