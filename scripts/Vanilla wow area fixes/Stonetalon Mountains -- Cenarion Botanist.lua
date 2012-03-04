--[[ Stonetalon Mountains -- Cenarion Botanist.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function CenarionBotanist_OnCombat(Unit, Event)
Unit:RegisterEvent("CenarionBotanist_Rejuvenation", 10000, 0)
Unit:RegisterEvent("CenarionBotanist_Wrath", 7000, 0)
end

function CenarionBotanist_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(1430) 
end

function CenarionBotanist_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function CenarionBotanist_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CenarionBotanist_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CenarionBotanist_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4051, 1, "CenarionBotanist_OnCombat")
RegisterUnitEvent(4051, 2, "CenarionBotanist_OnLeaveCombat")
RegisterUnitEvent(4051, 3, "CenarionBotanist_OnKilledTarget")
RegisterUnitEvent(4051, 4, "CenarionBotanist_OnDied")