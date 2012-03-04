--[[ Tanaris -- Southsea Swashbuckler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaSwashbuckler_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaSwashbuckler_Disarm", 10000, 0)
end

function SouthseaSwashbuckler_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function SouthseaSwashbuckler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaSwashbuckler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaSwashbuckler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7858, 1, "SouthseaSwashbuckler_OnCombat")
RegisterUnitEvent(7858, 2, "SouthseaSwashbuckler_OnLeaveCombat")
RegisterUnitEvent(7858, 3, "SouthseaSwashbuckler_OnKilledTarget")
RegisterUnitEvent(7858, 4, "SouthseaSwashbuckler_OnDied")