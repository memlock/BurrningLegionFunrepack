--[[ Ashenvale -- Felmusk Rogue.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function FelmuskRogue_OnCombat(Unit, Event)
Unit:RegisterEvent("FelmuskRogue_OverwhelmingStench", 10000, 0)
end

function FelmuskRogue_OverwhelmingStench(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6942, pUnit:GetMainTank()) 
end

function FelmuskRogue_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FelmuskRogue_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FelmuskRogue_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3759, 1, "FelmuskRogue_OnCombat")
RegisterUnitEvent(3759, 2, "FelmuskRogue_OnLeaveCombat")
RegisterUnitEvent(3759, 3, "FelmuskRogue_OnKilledTarget")
RegisterUnitEvent(3759, 4, "FelmuskRogue_OnDied")