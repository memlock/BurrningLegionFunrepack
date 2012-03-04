--[[ The Barrens -- Southsea Privateer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SouthseaPrivateer_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaPrivateer_FireShot", 9000, 0)
Unit:RegisterEvent("SouthseaPrivateer_Shoot", 6000, 0)
end

function SouthseaPrivateer_FireShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6979, pUnit:GetMainTank()) 
end

function SouthseaPrivateer_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SouthseaPrivateer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaPrivateer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaPrivateer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3384, 1, "SouthseaPrivateer_OnCombat")
RegisterUnitEvent(3384, 2, "SouthseaPrivateer_OnLeaveCombat")
RegisterUnitEvent(3384, 3, "SouthseaPrivateer_OnKilledTarget")
RegisterUnitEvent(3384, 4, "SouthseaPrivateer_OnDied")