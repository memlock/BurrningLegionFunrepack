--[[ Dragonblight -- Lieutenant Tazinni.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function LieutenantTazinni_OnCombat(Unit, Event)
Unit:RegisterEvent("LieutenantTazinni_DragonsBreath", 7000, 0)
Unit:RegisterEvent("LieutenantTazinni_FrostfireBolt", 8000, 0)
end

function LieutenantTazinni_DragonsBreath(pUnit, Event) 
pUnit:CastSpell(35250) 
end

function LieutenantTazinni_FrostfireBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51779, pUnit:GetMainTank()) 
end

function LieutenantTazinni_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LieutenantTazinni_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LieutenantTazinni_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26815, 1, "LieutenantTazinni_OnCombat")
RegisterUnitEvent(26815, 2, "LieutenantTazinni_OnLeaveCombat")
RegisterUnitEvent(26815, 3, "LieutenantTazinni_OnKilledTarget")
RegisterUnitEvent(26815, 4, "LieutenantTazinni_OnDied")