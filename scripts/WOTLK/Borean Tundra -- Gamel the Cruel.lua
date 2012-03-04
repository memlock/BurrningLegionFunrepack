--[[ Borean Tundra -- Gamel the Cruel.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GameltheCruel_OnCombat(Unit, Event)
Unit:RegisterEvent("GameltheCruel_MortalStrike", 6000, 0)
end

function GameltheCruel_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13737, pUnit:GetMainTank()) 
end

function GameltheCruel_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GameltheCruel_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GameltheCruel_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26449, 1, "GameltheCruel_OnCombat")
RegisterUnitEvent(26449, 2, "GameltheCruel_OnLeaveCombat")
RegisterUnitEvent(26449, 3, "GameltheCruel_OnKilledTarget")
RegisterUnitEvent(26449, 4, "GameltheCruel_OnDied")