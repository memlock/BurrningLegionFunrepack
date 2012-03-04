--[[ Dragonblight -- Necrolord Horus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function NecrolordHorus_OnCombat(Unit, Event)
Unit:RegisterEvent("NecrolordHorus_CurseofImpotence", 4000, 1)
Unit:RegisterEvent("NecrolordHorus_ShadowBolt", 7000, 0)
end

function NecrolordHorus_CurseofImpotence(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51340, pUnit:GetMainTank()) 
end

function NecrolordHorus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20298, pUnit:GetMainTank()) 
end

function NecrolordHorus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NecrolordHorus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NecrolordHorus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27805, 1, "NecrolordHorus_OnCombat")
RegisterUnitEvent(27805, 2, "NecrolordHorus_OnLeaveCombat")
RegisterUnitEvent(27805, 3, "NecrolordHorus_OnKilledTarget")
RegisterUnitEvent(27805, 4, "NecrolordHorus_OnDied")