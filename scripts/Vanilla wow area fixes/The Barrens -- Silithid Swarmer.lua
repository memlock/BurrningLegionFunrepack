--[[ The Barrens -- Silithid Swarmer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidSwarmer_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidSwarmer_SilithidSwarm", 3000, 1)
end

function SilithidSwarmer_SilithidSwarm(pUnit, Event) 
pUnit:CastSpell(6589) 
end

function SilithidSwarmer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidSwarmer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidSwarmer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3252, 1, "SilithidSwarmer_OnCombat")
RegisterUnitEvent(3252, 2, "SilithidSwarmer_OnLeaveCombat")
RegisterUnitEvent(3252, 3, "SilithidSwarmer_OnKilledTarget")
RegisterUnitEvent(3252, 4, "SilithidSwarmer_OnDied")