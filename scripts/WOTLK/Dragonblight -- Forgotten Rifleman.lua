--[[ Dragonblight -- Forgotten Rifleman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function ForgottenRifleman_OnCombat(Unit, Event)
Unit:RegisterEvent("ForgottenRifleman_ConcussiveShot", 7000, 0)
Unit:RegisterEvent("ForgottenRifleman_Shoot", 5000, 0)
end

function ForgottenRifleman_ConcussiveShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17174, pUnit:GetMainTank()) 
end

function ForgottenRifleman_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15547, pUnit:GetMainTank()) 
end

function ForgottenRifleman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ForgottenRifleman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ForgottenRifleman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27225, 1, "ForgottenRifleman_OnCombat")
RegisterUnitEvent(27225, 2, "ForgottenRifleman_OnLeaveCombat")
RegisterUnitEvent(27225, 3, "ForgottenRifleman_OnKilledTarget")
RegisterUnitEvent(27225, 4, "ForgottenRifleman_OnDied")