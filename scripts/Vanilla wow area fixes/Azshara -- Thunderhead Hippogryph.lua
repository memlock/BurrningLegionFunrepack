--[[ Azshara -- Thunderhead Hippogryph.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function ThunderheadHippogryph_OnCombat(Unit, Event)
Unit:RegisterEvent("ThunderheadHippogryph_Shock", 6000, 0)
end

function ThunderheadHippogryph_Shock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12553, pUnit:GetMainTank()) 
end

function ThunderheadHippogryph_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ThunderheadHippogryph_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ThunderheadHippogryph_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6375, 1, "ThunderheadHippogryph_OnCombat")
RegisterUnitEvent(6375, 2, "ThunderheadHippogryph_OnLeaveCombat")
RegisterUnitEvent(6375, 3, "ThunderheadHippogryph_OnKilledTarget")
RegisterUnitEvent(6375, 4, "ThunderheadHippogryph_OnDied")