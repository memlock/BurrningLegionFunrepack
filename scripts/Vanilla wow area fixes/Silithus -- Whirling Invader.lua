--[[ Silithus -- Whirling Invader.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function WhirlingInvader_OnCombat(Unit, Event)
Unit:RegisterEvent("WhirlingInvader_Whirlwind", 6000, 0)
end

function WhirlingInvader_Whirlwind(pUnit, Event) 
pUnit:CastSpell(17207) 
end

function WhirlingInvader_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WhirlingInvader_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WhirlingInvader_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14455, 1, "WhirlingInvader_OnCombat")
RegisterUnitEvent(14455, 2, "WhirlingInvader_OnLeaveCombat")
RegisterUnitEvent(14455, 3, "WhirlingInvader_OnKilledTarget")
RegisterUnitEvent(14455, 4, "WhirlingInvader_OnDied")