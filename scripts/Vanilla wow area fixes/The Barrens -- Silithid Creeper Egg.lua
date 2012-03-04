--[[ The Barrens -- Silithid Creeper Egg.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SilithidCreeperEgg_OnCombat(Unit, Event)
Unit:RegisterEvent("SilithidCreeperEgg_Suicide", 20000, 1)
Unit:RegisterEvent("SilithidCreeperEgg_SummonSilithidGrub", 4000, 1)
end

function SilithidCreeperEgg_Suicide(pUnit, Event) 
pUnit:CastSpell(7) 
end

function SilithidCreeperEgg_SummonSilithidGrub(pUnit, Event) 
pUnit:CastSpell(6588) 
end

function SilithidCreeperEgg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SilithidCreeperEgg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SilithidCreeperEgg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5781, 1, "SilithidCreeperEgg_OnCombat")
RegisterUnitEvent(5781, 2, "SilithidCreeperEgg_OnLeaveCombat")
RegisterUnitEvent(5781, 3, "SilithidCreeperEgg_OnKilledTarget")
RegisterUnitEvent(5781, 4, "SilithidCreeperEgg_OnDied")