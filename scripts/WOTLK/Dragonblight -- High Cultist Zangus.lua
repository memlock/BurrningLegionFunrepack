--[[ Dragonblight -- High Cultist Zangus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function HighCultistZangus_OnCombat(Unit, Event)
Unit:RegisterEvent("HighCultistZangus_ShadowBolt", 7000, 0)
Unit:RegisterEvent("HighCultistZangus_Zeal", 2000, 1)
end

function HighCultistZangus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function HighCultistZangus_Zeal(pUnit, Event) 
pUnit:CastSpell(51605) 
end

function HighCultistZangus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HighCultistZangus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HighCultistZangus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26655, 1, "HighCultistZangus_OnCombat")
RegisterUnitEvent(26655, 2, "HighCultistZangus_OnLeaveCombat")
RegisterUnitEvent(26655, 3, "HighCultistZangus_OnKilledTarget")
RegisterUnitEvent(26655, 4, "HighCultistZangus_OnDied")