--[[ Dragonblight -- Overseer Deathgaze.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function OverseerDeathgaze_OnCombat(Unit, Event)
Unit:RegisterEvent("OverseerDeathgaze_ConversionBeam", 9100, 0)
Unit:RegisterEvent("OverseerDeathgaze_ShadowBolt", 6000, 0)
end

function OverseerDeathgaze_ConversionBeam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50659, pUnit:GetMainTank()) 
end

function OverseerDeathgaze_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12739, pUnit:GetMainTank()) 
end

function OverseerDeathgaze_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OverseerDeathgaze_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OverseerDeathgaze_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27122, 1, "OverseerDeathgaze_OnCombat")
RegisterUnitEvent(27122, 2, "OverseerDeathgaze_OnLeaveCombat")
RegisterUnitEvent(27122, 3, "OverseerDeathgaze_OnKilledTarget")
RegisterUnitEvent(27122, 4, "OverseerDeathgaze_OnDied")