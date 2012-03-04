--[[ Azuremyst Isle -- Warlord Srisstiz.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WarlordSrisstiz_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordSrisstiz_WateryStrike", 6000, 0)
end

function WarlordSrisstiz_WateryStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31275, pUnit:GetMainTank()) 
end

function WarlordSrisstiz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordSrisstiz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordSrisstiz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17298, 1, "WarlordSrisstiz_OnCombat")
RegisterUnitEvent(17298, 2, "WarlordSrisstiz_OnLeaveCombat")
RegisterUnitEvent(17298, 3, "WarlordSrisstiz_OnKilledTarget")
RegisterUnitEvent(17298, 4, "WarlordSrisstiz_OnDied")