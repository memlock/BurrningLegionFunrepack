--[[ Dragonblight -- Infinite Chrono Magus.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function InfiniteChronoMagus_OnCombat(Unit, Event)
Unit:RegisterEvent("InfiniteChronoMagus_ShadowBlast", 9000, 0)
Unit:RegisterEvent("InfiniteChronoMagus_ShadowBolt", 6000, 0)
end

function InfiniteChronoMagus_ShadowBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38085, pUnit:GetMainTank()) 
end

function InfiniteChronoMagus_ShadowBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9613, pUnit:GetMainTank()) 
end

function InfiniteChronoMagus_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function InfiniteChronoMagus_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function InfiniteChronoMagus_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27898, 1, "InfiniteChronoMagus_OnCombat")
RegisterUnitEvent(27898, 2, "InfiniteChronoMagus_OnLeaveCombat")
RegisterUnitEvent(27898, 3, "InfiniteChronoMagus_OnKilledTarget")
RegisterUnitEvent(27898, 4, "InfiniteChronoMagus_OnDied")