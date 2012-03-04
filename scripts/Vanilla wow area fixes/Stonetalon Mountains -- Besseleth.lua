--[[ Stonetalon Mountains -- Besseleth.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function Besseleth_OnCombat(Unit, Event)
Unit:RegisterEvent("Besseleth_VenomSting", 10000, 0)
Unit:RegisterEvent("Besseleth_Web", 12000, 0)
end

function Besseleth_VenomSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(5416, pUnit:GetMainTank()) 
end

function Besseleth_Web(pUnit, Event) 
pUnit:FullCastSpellOnTarget(745, pUnit:GetMainTank()) 
end

function Besseleth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Besseleth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Besseleth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11921, 1, "Besseleth_OnCombat")
RegisterUnitEvent(11921, 2, "Besseleth_OnLeaveCombat")
RegisterUnitEvent(11921, 3, "Besseleth_OnKilledTarget")
RegisterUnitEvent(11921, 4, "Besseleth_OnDied")