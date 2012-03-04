--[[ Desolace -- Gelkis Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function GelkisScout_OnCombat(Unit, Event)
Unit:RegisterEvent("GelkisScout_Shoot", 6000, 0)
end

function GelkisScout_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function GelkisScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GelkisScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GelkisScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4647, 1, "GelkisScout_OnCombat")
RegisterUnitEvent(4647, 2, "GelkisScout_OnLeaveCombat")
RegisterUnitEvent(4647, 3, "GelkisScout_OnKilledTarget")
RegisterUnitEvent(4647, 4, "GelkisScout_OnDied")