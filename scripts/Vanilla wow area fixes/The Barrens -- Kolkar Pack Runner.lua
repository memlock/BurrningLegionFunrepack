--[[ The Barrens -- Kolkar Pack Runner.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function KolkarPackRunner_OnCombat(Unit, Event)
Unit:RegisterEvent("KolkarPackRunner_BattleShout", 4000, 1)
end

function KolkarPackRunner_BattleShout(pUnit, Event) 
pUnit:CastSpell(9128) 
end

function KolkarPackRunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KolkarPackRunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KolkarPackRunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3274, 1, "KolkarPackRunner_OnCombat")
RegisterUnitEvent(3274, 2, "KolkarPackRunner_OnLeaveCombat")
RegisterUnitEvent(3274, 3, "KolkarPackRunner_OnKilledTarget")
RegisterUnitEvent(3274, 4, "KolkarPackRunner_OnDied")