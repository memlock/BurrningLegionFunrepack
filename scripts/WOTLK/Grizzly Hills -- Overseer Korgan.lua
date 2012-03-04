--[[ Grizzly Hills -- Overseer Korgan.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function OverseerKorgan_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerKorgan_CallLightning", 6000, 0)
Unit:RegisterEvent("OverseerKorgan_RevitalizingRune", 10000, 0)
end

function OverseerKorgan_CallLightning(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32018, pUnit:GetMainTank()) 
end

function OverseerKorgan_RevitalizingRune(pUnit, Event) 
pUnit:CastSpell(52714) 
end

function OverseerKorgan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerKorgan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerKorgan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26921, 1, "OverseerKorgan_OnCombat")
RegisterUnitEvent(26921, 2, "OverseerKorgan_OnLeaveCombat")
RegisterUnitEvent(26921, 3, "OverseerKorgan_OnKilledTarget")
RegisterUnitEvent(26921, 4, "OverseerKorgan_OnDied")