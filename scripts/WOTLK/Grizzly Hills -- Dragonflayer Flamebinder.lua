--[[ Grizzly Hills -- Dragonflayer Flamebinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DragonflayerFlamebinder_OnCombat(Unit, Event)
Unit:RegisterEvent("DragonflayerFlamebinder_FlamePatch", 10000, 0)
Unit:RegisterEvent("DragonflayerFlamebinder_InciteFlames", 7000, 0)
end

function DragonflayerFlamebinder_FlamePatch(pUnit, Event) 
pUnit:CastSpell(52208) 
end

function DragonflayerFlamebinder_InciteFlames(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52209, pUnit:GetMainTank()) 
end

function DragonflayerFlamebinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DragonflayerFlamebinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DragonflayerFlamebinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27259, 1, "DragonflayerFlamebinder_OnCombat")
RegisterUnitEvent(27259, 2, "DragonflayerFlamebinder_OnLeaveCombat")
RegisterUnitEvent(27259, 3, "DragonflayerFlamebinder_OnKilledTarget")
RegisterUnitEvent(27259, 4, "DragonflayerFlamebinder_OnDied")