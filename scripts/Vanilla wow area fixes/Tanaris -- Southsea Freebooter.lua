--[[ Tanaris -- Southsea Freebooter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaFreebooter_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaFreebooter_Shot", 6000, 0)
end

function SouthseaFreebooter_Shot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaFreebooter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaFreebooter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaFreebooter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7856, 1, "SouthseaFreebooter_OnCombat")
RegisterUnitEvent(7856, 2, "SouthseaFreebooter_OnLeaveCombat")
RegisterUnitEvent(7856, 3, "SouthseaFreebooter_OnKilledTarget")
RegisterUnitEvent(7856, 4, "SouthseaFreebooter_OnDied")