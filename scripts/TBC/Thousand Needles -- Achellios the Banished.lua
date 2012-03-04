--[[ Thousand Needles -- Achellios the Banished.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function AchelliostheBanished_OnCombat(Unit, Event)
Unit:RegisterEvent("AchelliostheBanished_BattleShout", 1000, 1)
end

function AchelliostheBanished_BattleShout(pUnit, Event) 
pUnit:CastSpell(6192) 
end

function AchelliostheBanished_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AchelliostheBanished_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AchelliostheBanished_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5933, 1, "AchelliostheBanished_OnCombat")
RegisterUnitEvent(5933, 2, "AchelliostheBanished_OnLeaveCombat")
RegisterUnitEvent(5933, 3, "AchelliostheBanished_OnKilledTarget")
RegisterUnitEvent(5933, 4, "AchelliostheBanished_OnDied")