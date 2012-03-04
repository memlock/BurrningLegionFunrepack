--[[ Durotar -- Makrura Snapclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function MakruraSnapclaw_OnCombat(Unit, Event)
Unit:RegisterEvent("MarkuraSnapclaw_Claw",8000,0)
end

function MarkuraSnapclaw_Claw(pUnit,Event)
pUnit:FullCastSpellOnTarget(5424,pUnit:GetMainTank())
end

function MakruraSnapclaw_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MakruraSnapclaw_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MakruraSnapclaw_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3105, 1, "MakruraSnapclaw_OnCombat")
RegisterUnitEvent(3105, 2, "MakruraSnapclaw_OnLeaveCombat")
RegisterUnitEvent(3105, 3, "MakruraSnapclaw_OnKilledTarget")
RegisterUnitEvent(3105, 4, "MakruraSnapclaw_OnDied")