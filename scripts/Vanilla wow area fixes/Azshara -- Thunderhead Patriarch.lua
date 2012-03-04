--[[ Azshara -- Thunderhead Patriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThunderheadPatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadPatriarch_Shock", 6000, 0)
Unit:RegisterEvent("ThunderheadPatriarch_RushingCharge", 8000, 0)
end

function ThunderheadPatriarch_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function ThunderheadPatriarch_RushingCharge(pUnit, Event) 
pUnit:CastSpell(6268) 
end

function ThunderheadPatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadPatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadPatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6379, 1, "ThunderheadPatriarch_OnCombat")
RegisterUnitEvent(6379, 2, "ThunderheadPatriarch_OnLeaveCombat")
RegisterUnitEvent(6379, 3, "ThunderheadPatriarch_OnKilledTarget")
RegisterUnitEvent(6379, 4, "ThunderheadPatriarch_OnDied")