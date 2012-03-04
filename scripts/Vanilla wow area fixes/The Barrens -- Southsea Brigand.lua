--[[ The Barrens -- Southsea Brigand.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function SouthseaBrigand_OnCombat(Unit, Event)
Unit:RegisterEvent("SouthseaBrigand_Backhand", 8000, 0)
end

function SouthseaBrigand_Backhand(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6253, pUnit:GetMainTank()) 
end

function SouthseaBrigand_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SouthseaBrigand_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SouthseaBrigand_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3381, 1, "SouthseaBrigand_OnCombat")
RegisterUnitEvent(3381, 2, "SouthseaBrigand_OnLeaveCombat")
RegisterUnitEvent(3381, 3, "SouthseaBrigand_OnKilledTarget")
RegisterUnitEvent(3381, 4, "SouthseaBrigand_OnDied")