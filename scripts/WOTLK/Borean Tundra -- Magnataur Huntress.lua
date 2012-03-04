--[[ Borean Tundra -- Magnataur Huntress.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MagnataurHuntress_OnCombat(Unit, Event)
Unit:RegisterEvent("MagnataurHuntress_TuskStrike", 7000, 0)
Unit:RegisterEvent("MagnataurHuntress_WarStomp", 10000, 0)
end

function MagnataurHuntress_TuskStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50410, pUnit:GetMainTank()) 
end

function MagnataurHuntress_WarStomp(pUnit, Event) 
pUnit:CastSpell(11876) 
end

function MagnataurHuntress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagnataurHuntress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagnataurHuntress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24469, 1, "MagnataurHuntress_OnCombat")
RegisterUnitEvent(24469, 2, "MagnataurHuntress_OnLeaveCombat")
RegisterUnitEvent(24469, 3, "MagnataurHuntress_OnKilledTarget")
RegisterUnitEvent(24469, 4, "MagnataurHuntress_OnDied")