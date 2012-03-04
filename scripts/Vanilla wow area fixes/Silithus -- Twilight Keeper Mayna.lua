--[[ Silithus -- Twilight Keeper Mayna.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightKeeperMayna_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightKeeperMayna_ShadowWordPain", 2000, 2)
Unit:RegisterEvent("TwilightKeeperMayna_MindFlay", 6000, 0)
Unit:RegisterEvent("TwilightKeeperMayna_PsychicScream", 10000, 0)
end

function TwilightKeeperMayna_ShadowWordPain(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15654, pUnit:GetMainTank()) 
end

function TwilightKeeperMayna_MindFlay(pUnit, Event) 
pUnit:FullCastSpellOnTarget(17165, pUnit:GetMainTank()) 
end

function TwilightKeeperMayna_PsychicScream(pUnit, Event) 
pUnit:FullCastSpellOnTarget(22884, pUnit:GetMainTank()) 
end

function TwilightKeeperMayna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightKeeperMayna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightKeeperMayna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(15200, 1, "TwilightKeeperMayna_OnCombat")
RegisterUnitEvent(15200, 2, "TwilightKeeperMayna_OnLeaveCombat")
RegisterUnitEvent(15200, 3, "TwilightKeeperMayna_OnKilledTarget")
RegisterUnitEvent(15200, 4, "TwilightKeeperMayna_OnDied")