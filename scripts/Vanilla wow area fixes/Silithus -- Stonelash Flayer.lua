--[[ Silithus -- Stonelash Flayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function StonelashFlayer_OnCombat(Unit, Event)
Unit:RegisterEvent("StonelashFlayer_Thrash", 5000, 0)
Unit:RegisterEvent("StonelashFlayer_VenomSting", 8000, 0)
end

function StonelashFlayer_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function StonelashFlayer_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function StonelashFlayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function StonelashFlayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function StonelashFlayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11737, 1, "StonelashFlayer_OnCombat")
RegisterUnitEvent(11737, 2, "StonelashFlayer_OnLeaveCombat")
RegisterUnitEvent(11737, 3, "StonelashFlayer_OnKilledTarget")
RegisterUnitEvent(11737, 4, "StonelashFlayer_OnDied")