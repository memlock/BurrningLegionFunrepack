--[[ Silithus -- Tortured Druid.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function TorturedDruid_OnCombat(Unit, Event)
Unit:RegisterEvent("TorturedDruid_HealingTouch", 15000, 0)
Unit:RegisterEvent("TorturedDruid_Moonfire", 6000, 0)
Unit:RegisterEvent("TorturedDruid_SummonHiveAshiDrones", 2000, 1)
end

function TorturedDruid_HealingTouch(pUnit, Event) 
pUnit:CastSpell(23381) 
end

function TorturedDruid_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(23380, pUnit:GetMainTank()) 
end

function TorturedDruid_SummonHiveAshiDrones(pUnit, Event) 
pUnit:CastSpell(21327) 
end

function TorturedDruid_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TorturedDruid_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TorturedDruid_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12178, 1, "TorturedDruid_OnCombat")
RegisterUnitEvent(12178, 2, "TorturedDruid_OnLeaveCombat")
RegisterUnitEvent(12178, 3, "TorturedDruid_OnKilledTarget")
RegisterUnitEvent(12178, 4, "TorturedDruid_OnDied")