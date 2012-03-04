--[[ Borean Tundra -- Scalesworn Elite.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScaleswornElite_OnCombat(Unit, Event)
Unit:RegisterEvent("ScaleswornElite_ArcaneSurge", 15000, 0)
Unit:RegisterEvent("ScaleswornElite_IceShard", 10000, 0)
end

function ScaleswornElite_ArcaneSurge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61272, pUnit:GetMainTank()) 
end

function ScaleswornElite_IceShard(pUnit, Event) 
pUnit:FullCastSpellOnTarget(61269, pUnit:GetMainTank()) 
end

function ScaleswornElite_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScaleswornElite_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScaleswornElite_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32534, 1, "ScaleswornElite_OnCombat")
RegisterUnitEvent(32534, 2, "ScaleswornElite_OnLeaveCombat")
RegisterUnitEvent(32534, 3, "ScaleswornElite_OnKilledTarget")
RegisterUnitEvent(32534, 4, "ScaleswornElite_OnDied")