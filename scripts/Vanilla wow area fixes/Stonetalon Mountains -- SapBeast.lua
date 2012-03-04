--[[ Stonetalon Mountains -- SapBeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function SapBeast_OnCombat(Unit, Event)
Unit:RegisterEvent("SapBeast_Sap_Might", 10000, 0)
end

function SapBeast_Sap_Might(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7997, pUnit:GetMainTank()) 
end

function SapBeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SapBeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SapBeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4020, 1, "SapBeast_OnCombat")
RegisterUnitEvent(4020, 2, "SapBeast_OnLeaveCombat")
RegisterUnitEvent(4020, 3, "SapBeast_OnKilledTarget")
RegisterUnitEvent(4020, 4, "SapBeast_OnDied")