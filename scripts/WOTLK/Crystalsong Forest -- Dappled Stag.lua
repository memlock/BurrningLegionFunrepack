--[[ Crystalsong Forest -- Dappled Stag.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function DappledStag_OnCombat(Unit, Event)
Unit:RegisterEvent("DappledStag_Butt", 8000, 0)
end

function DappledStag_Butt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(59110, pUnit:GetMainTank()) 
end

function DappledStag_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DappledStag_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DappledStag_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(31236, 1, "DappledStag_OnCombat")
RegisterUnitEvent(31236, 2, "DappledStag_OnLeaveCombat")
RegisterUnitEvent(31236, 3, "DappledStag_OnKilledTarget")
RegisterUnitEvent(31236, 4, "DappledStag_OnDied")