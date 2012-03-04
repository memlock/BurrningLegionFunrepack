--[[ Silithus -- Twilight Keeper Havunth.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TwilightKeeperHavunth_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightKeeperHavunth_FireBlast", 6000, 0)
Unit:RegisterEvent("TwilightKeeperHavunth_FireNova", 8000, 0)
end

function TwilightKeeperHavunth_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13339, pUnit:GetMainTank()) 
end

function TwilightKeeperHavunth_FireNova(pUnit, Event) 
pUnit:CastSpell(17366) 
end

function TwilightKeeperHavunth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightKeeperHavunth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightKeeperHavunth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11804, 1, "TwilightKeeperHavunth_OnCombat")
RegisterUnitEvent(11804, 2, "TwilightKeeperHavunth_OnLeaveCombat")
RegisterUnitEvent(11804, 3, "TwilightKeeperHavunth_OnKilledTarget")
RegisterUnitEvent(11804, 4, "TwilightKeeperHavunth_OnDied")