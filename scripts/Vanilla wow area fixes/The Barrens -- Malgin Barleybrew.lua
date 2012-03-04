--[[ The Barrens -- Malgin Barleybrew.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function MalginBarleybrew_OnCombat(Unit, Event)
Unit:RegisterEvent("MalginBarleybrew_BladeFlurry", 4000, 1)
Unit:RegisterEvent("MalginBarleybrew_BattleShout", 6000, 1)
end

function MalginBarleybrew_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(3631) 
end

function MalginBarleybrew_BattleShout(pUnit, Event) 
pUnit:CastSpell(5242) 
end

function MalginBarleybrew_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MalginBarleybrew_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MalginBarleybrew_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5848, 1, "MalginBarleybrew_OnCombat")
RegisterUnitEvent(5848, 2, "MalginBarleybrew_OnLeaveCombat")
RegisterUnitEvent(5848, 3, "MalginBarleybrew_OnKilledTarget")
RegisterUnitEvent(5848, 4, "MalginBarleybrew_OnDied")