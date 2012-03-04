--[[ Thousand Needles -- Harb Foulmountain.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function HarbFoulmountain_OnCombat(Unit, Event)
Unit:RegisterEvent("HarbFoulmountain_Thrash", 6000, 0)
Unit:RegisterEvent("HarbFoulmountain_WarStomp", 8000, 0)
end

function HarbFoulmountain_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function HarbFoulmountain_WarStomp(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45, pUnit:GetMainTank()) 
end

function HarbFoulmountain_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HarbFoulmountain_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HarbFoulmountain_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14426, 1, "HarbFoulmountain_OnCombat")
RegisterUnitEvent(14426, 2, "HarbFoulmountain_OnLeaveCombat")
RegisterUnitEvent(14426, 3, "HarbFoulmountain_OnKilledTarget")
RegisterUnitEvent(14426, 4, "HarbFoulmountain_OnDied")