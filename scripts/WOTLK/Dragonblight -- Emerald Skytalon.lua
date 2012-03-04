--[[ Dragonblight -- Emerald Skytalon.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function EmeraldSkytalon_OnCombat(Unit, Event)
Unit:RegisterEvent("EmeraldSkytalon_Swoop", 8000, 0)
Unit:RegisterEvent("EmeraldSkytalon_TalonStrike", 6000, 0)
end

function EmeraldSkytalon_Swoop(pUnit, Event) 
pUnit:CastSpell(51919) 
end

function EmeraldSkytalon_TalonStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32909, pUnit:GetMainTank()) 
end

function EmeraldSkytalon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EmeraldSkytalon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EmeraldSkytalon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27244, 1, "EmeraldSkytalon_OnCombat")
RegisterUnitEvent(27244, 2, "EmeraldSkytalon_OnLeaveCombat")
RegisterUnitEvent(27244, 3, "EmeraldSkytalon_OnKilledTarget")
RegisterUnitEvent(27244, 4, "EmeraldSkytalon_OnDied")