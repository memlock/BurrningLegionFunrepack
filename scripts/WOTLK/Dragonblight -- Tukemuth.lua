--[[ Dragonblight -- Tukemuth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function Tukemuth_OnCombat(Unit, Event)
Unit:RegisterEvent("Tukemuth_Trample", 10000, 0)
Unit:RegisterEvent("Tukemuth_TuskStrike", 8000, 0)
end

function Tukemuth_Trample(pUnit, Event) 
pUnit:CastSpell(57066) 
end

function Tukemuth_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function Tukemuth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tukemuth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tukemuth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32400, 1, "Tukemuth_OnCombat")
RegisterUnitEvent(32400, 2, "Tukemuth_OnLeaveCombat")
RegisterUnitEvent(32400, 3, "Tukemuth_OnKilledTarget")
RegisterUnitEvent(32400, 4, "Tukemuth_OnDied")