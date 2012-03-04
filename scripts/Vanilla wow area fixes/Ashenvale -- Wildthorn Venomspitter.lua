--[[ Ashenvale -- Wildthorn Venomspitter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WildthornVenomspitter_OnCombat(Unit, Event)
Unit:RegisterEvent("WildthornVenomspitter_VenomSpit", 8000, 0)
end

function WildthornVenomspitter_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6917, pUnit:GetMainTank()) 
end

function WildthornVenomspitter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WildthornVenomspitter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WildthornVenomspitter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3820, 1, "WildthornVenomspitter_OnCombat")
RegisterUnitEvent(3820, 2, "WildthornVenomspitter_OnLeaveCombat")
RegisterUnitEvent(3820, 3, "WildthornVenomspitter_OnKilledTarget")
RegisterUnitEvent(3820, 4, "WildthornVenomspitter_OnDied")