--[[ Tanaris -- Southsea Pirate.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SouthseaPirate_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaPirate_Strike", 6000, 0)
end

function SouthseaPirate_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function SouthseaPirate_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaPirate_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaPirate_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7855, 1, "SouthseaPirate_OnCombat")
RegisterUnitEvent(7855, 2, "SouthseaPirate_OnLeaveCombat")
RegisterUnitEvent(7855, 3, "SouthseaPirate_OnKilledTarget")
RegisterUnitEvent(7855, 4, "SouthseaPirate_OnDied")