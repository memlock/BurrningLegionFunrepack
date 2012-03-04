--[[ Dragonblight -- Stars Rest Sentinel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function StarsRestSentinel_OnCombat(Unit, Event)
Unit:RegisterEvent("StarsRestSentinel_FrostArrow", 8000, 0)
Unit:RegisterEvent("StarsRestSentinel_Shoot", 6000, 0)
end

function StarsRestSentinel_FrostArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47059, pUnit:GetMainTank()) 
end

function StarsRestSentinel_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23337, pUnit:GetMainTank()) 
end

function StarsRestSentinel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StarsRestSentinel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StarsRestSentinel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26448, 1, "StarsRestSentinel_OnCombat")
RegisterUnitEvent(26448, 2, "StarsRestSentinel_OnLeaveCombat")
RegisterUnitEvent(26448, 3, "StarsRestSentinel_OnKilledTarget")
RegisterUnitEvent(26448, 4, "StarsRestSentinel_OnDied")