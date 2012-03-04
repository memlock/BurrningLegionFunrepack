--[[ Borean Tundra -- Frozen Sphere.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function FrozenSphere_OnCombat(Unit, Event)
Unit:RegisterEvent("FrozenSphere_IceShard", 6000, 0)
end

function FrozenSphere_IceShard(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50578, pUnit:GetMainTank()) 
end

function FrozenSphere_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FrozenSphere_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FrozenSphere_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(28066, 1, "FrozenSphere_OnCombat")
RegisterUnitEvent(28066, 2, "FrozenSphere_OnLeaveCombat")
RegisterUnitEvent(28066, 3, "FrozenSphere_OnKilledTarget")
RegisterUnitEvent(28066, 4, "FrozenSphere_OnDied")