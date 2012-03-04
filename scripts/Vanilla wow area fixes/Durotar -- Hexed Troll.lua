--[[ Durotar -- Hexed Troll.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function HexedTroll_OnCombat(Unit, Event)
Unit:RegisterEvent("HexedTroll_Inmolate", 8000, 0)
end

function HexedTroll_Inmolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(348, pUnit:GetMainTank()) 
end

function HexedTroll_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HexedTroll_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HexedTroll_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3207, 1, "HexedTroll_OnCombat")
RegisterUnitEvent(3207, 2, "HexedTroll_OnLeaveCombat")
RegisterUnitEvent(3207, 3, "HexedTroll_OnKilledTarget")
RegisterUnitEvent(3207, 4, "HexedTroll_OnDied")