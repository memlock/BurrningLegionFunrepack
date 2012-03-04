--[[ Bloodmyst Isle -- Axxarien Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 28th, 2008. ]]

function AxxarienShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("AxxarienShadowstalker_Corruption", 8000, 0)
end

function AxxarienShadowstalker_Corruption(pUnit, Event) 
pUnit:FullCastSpellOnTarget(21068, pUnit:GetMainTank()) 
end

function AxxarienShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AxxarienShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AxxarienShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17340, 1, "AxxarienShadowstalker_OnCombat")
RegisterUnitEvent(17340, 2, "AxxarienShadowstalker_OnLeaveCombat")
RegisterUnitEvent(17340, 3, "AxxarienShadowstalker_OnKilledTarget")
RegisterUnitEvent(17340, 4, "AxxarienShadowstalker_OnDied")