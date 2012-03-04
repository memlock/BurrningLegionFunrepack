--[[ Borean Tundra -- Scourged Footman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScourgedFootman_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedFootman_BladeFlurry", 10000, 0)
Unit:RegisterEvent("ScourgedFootman_MortalStrike", 8000, 0)
end

function ScourgedFootman_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(33735) 
end

function ScourgedFootman_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function ScourgedFootman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedFootman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedFootman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25981, 1, "ScourgedFootman_OnCombat")
RegisterUnitEvent(25981, 2, "ScourgedFootman_OnLeaveCombat")
RegisterUnitEvent(25981, 3, "ScourgedFootman_OnKilledTarget")
RegisterUnitEvent(25981, 4, "ScourgedFootman_OnDied")