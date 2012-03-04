--[[ The Barrens -- Silithid Creeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidCreeper_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidCreeper_SilithidCreeperEgg", 4000, 1)
end

function SilithidCreeper_SilithidCreeperEgg(pUnit, Event) 
pUnit:CastSpell(6587) 
end

function SilithidCreeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidCreeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidCreeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3250, 1, "SilithidCreeper_OnCombat")
RegisterUnitEvent(3250, 2, "SilithidCreeper_OnLeaveCombat")
RegisterUnitEvent(3250, 3, "SilithidCreeper_OnKilledTarget")
RegisterUnitEvent(3250, 4, "SilithidCreeper_OnDied")