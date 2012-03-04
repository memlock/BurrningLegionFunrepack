--[[ Stonetalon Mountains -- Sentinel Amarassan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SentinelAmarassan_OnCombat(Unit, Event)
Unit:RegisterEvent("SentinelAmarassan_Wrath", 5000, 2)
Unit:RegisterEvent("SentinelAmarassan_CatForm", 12000, 1)
Unit:RegisterEvent("SentinelAmarassan_TigersFury", 14000, 1)
end

function SentinelAmarassan_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SentinelAmarassan_CatForm(pUnit, Event) 
pUnit:CastSpell(5759) 
end

function SentinelAmarassan_TigersFury(pUnit, Event) 
pUnit:CastSpell(5217) 
end

function SentinelAmarassan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SentinelAmarassan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SentinelAmarassan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5916, 1, "SentinelAmarassan_OnCombat")
RegisterUnitEvent(5916, 2, "SentinelAmarassan_OnLeaveCombat")
RegisterUnitEvent(5916, 3, "SentinelAmarassan_OnKilledTarget")
RegisterUnitEvent(5916, 4, "SentinelAmarassan_OnDied")