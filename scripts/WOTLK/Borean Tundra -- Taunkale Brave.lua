--[[ Borean Tundra -- Taunkale Brave.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function TaunkaleBrave_OnCombat(Unit, Event)
Unit:RegisterEvent("TaunkaleBrave_GroundSlam", 8000, 0)
end

function TaunkaleBrave_GroundSlam(pUnit, Event) 
pUnit:CastSpell(52058) 
end

function TaunkaleBrave_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TaunkaleBrave_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TaunkaleBrave_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26157, 1, "TaunkaleBrave_OnCombat")
RegisterUnitEvent(26157, 2, "TaunkaleBrave_OnLeaveCombat")
RegisterUnitEvent(26157, 3, "TaunkaleBrave_OnKilledTarget")
RegisterUnitEvent(26157, 4, "TaunkaleBrave_OnDied")