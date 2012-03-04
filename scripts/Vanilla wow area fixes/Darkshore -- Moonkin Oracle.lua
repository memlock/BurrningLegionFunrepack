--[[ Darkshore -- Moonkin Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 04th, 2008. ]]


function MoonkinOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("MoonkinOracle_Moonfire", 9000, 0)
Unit:RegisterEvent("MoonkinOracle_Regrowth", 12000, 0)
Unit:RegisterEvent("MoonkinOracle_Wrath", 7000, 0)
end

function MoonkinOracle_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15795, pUnit:GetMainTank()) 
end

function MoonkinOracle_Regrowth(pUnit, Event) 
pUnit:CastSpell(16561) 
end

function MoonkinOracle_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function MoonkinOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoonkinOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoonkinOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10157, 1, "MoonkinOracle_OnCombat")
RegisterUnitEvent(10157, 2, "MoonkinOracle_OnLeaveCombat")
RegisterUnitEvent(10157, 3, "MoonkinOracle_OnKilledTarget")
RegisterUnitEvent(10157, 4, "MoonkinOracle_OnDied")