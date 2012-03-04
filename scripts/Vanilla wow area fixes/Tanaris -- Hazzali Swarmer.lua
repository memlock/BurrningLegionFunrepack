--[[ Tanaris -- Hazzali Swarmer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HazzaliSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("HazzaliSwarmer_SilithidSwarm", 10000, 1)
end

function HazzaliSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function HazzaliSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HazzaliSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HazzaliSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5451, 1, "HazzaliSwarmer_OnCombat")
RegisterUnitEvent(5451, 2, "HazzaliSwarmer_OnLeaveCombat")
RegisterUnitEvent(5451, 3, "HazzaliSwarmer_OnKilledTarget")
RegisterUnitEvent(5451, 4, "HazzaliSwarmer_OnDied")