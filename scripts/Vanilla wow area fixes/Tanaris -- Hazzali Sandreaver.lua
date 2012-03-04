--[[ Tanaris -- Hazzali Sandreaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliSandreaver_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliSandreaver_ArcingSmash", 4000, 0)
end

function HazzaliSandreaver_ArcingSmash(pUnit, Event) 
pUnit:CastSpell(8374) 
end

function HazzaliSandreaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliSandreaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliSandreaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5454, 1, "HazzaliSandreaver_OnCombat")
RegisterUnitEvent(5454, 2, "HazzaliSandreaver_OnLeaveCombat")
RegisterUnitEvent(5454, 3, "HazzaliSandreaver_OnKilledTarget")
RegisterUnitEvent(5454, 4, "HazzaliSandreaver_OnDied")