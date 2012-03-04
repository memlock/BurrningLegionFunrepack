--[[ Grizzly Hills -- Runic Battle Golem.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function RunicBattleGolem_OnCombat(Unit, Event)
Unit:RegisterEvent("RunicBattleGolem_BattleRunes", 7000, 0)
end

function RunicBattleGolem_BattleRunes(pUnit, Event) 
pUnit:CastSpell(52630) 
end

function RunicBattleGolem_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RunicBattleGolem_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RunicBattleGolem_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26284, 1, "RunicBattleGolem_OnCombat")
RegisterUnitEvent(26284, 2, "RunicBattleGolem_OnLeaveCombat")
RegisterUnitEvent(26284, 3, "RunicBattleGolem_OnKilledTarget")
RegisterUnitEvent(26284, 4, "RunicBattleGolem_OnDied")