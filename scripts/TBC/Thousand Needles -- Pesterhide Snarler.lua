--[[ Thousand Needles -- Pesterhide Snarler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function PesterhideSnarler_OnCombat(Unit, Event)
Unit:RegisterEvent("PesterhideSnarler_IntimidatingGrowl", 8000, 0)
end

function PesterhideSnarler_IntimidatingGrowl(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6576, pUnit:GetMainTank()) 
end

function PesterhideSnarler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function PesterhideSnarler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function PesterhideSnarler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4249, 1, "PesterhideSnarler_OnCombat")
RegisterUnitEvent(4249, 2, "PesterhideSnarler_OnLeaveCombat")
RegisterUnitEvent(4249, 3, "PesterhideSnarler_OnKilledTarget")
RegisterUnitEvent(4249, 4, "PesterhideSnarler_OnDied")