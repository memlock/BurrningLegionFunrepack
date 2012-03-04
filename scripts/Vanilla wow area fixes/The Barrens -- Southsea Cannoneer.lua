--[[ The Barrens -- Southsea Cannoneer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SouthseaCannoneer_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaCannoneer_Shoot", 6000, 0)
end

function SouthseaCannoneer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaCannoneer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaCannoneer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaCannoneer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3382, 1, "SouthseaCannoneer_OnCombat")
RegisterUnitEvent(3382, 2, "SouthseaCannoneer_OnLeaveCombat")
RegisterUnitEvent(3382, 3, "SouthseaCannoneer_OnKilledTarget")
RegisterUnitEvent(3382, 4, "SouthseaCannoneer_OnDied")