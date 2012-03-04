--[[ Grizzly Hills -- Ancient Drakkari Soothsayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function AncientDrakkariSoothsayer_OnCombat(Unit, Event)
Unit:RegisterEvent("AncientDrakkariSoothsayer_HolySmite", 5000, 0)
Unit:RegisterEvent("AncientDrakkariSoothsayer_ProphecyofBlood", 9000, 0)
end

function AncientDrakkariSoothsayer_HolySmite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9734, pUnit:GetMainTank()) 
end

function AncientDrakkariSoothsayer_ProphecyofBlood(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52468, pUnit:GetMainTank()) 
end

function AncientDrakkariSoothsayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AncientDrakkariSoothsayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AncientDrakkariSoothsayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26812, 1, "AncientDrakkariSoothsayer_OnCombat")
RegisterUnitEvent(26812, 2, "AncientDrakkariSoothsayer_OnLeaveCombat")
RegisterUnitEvent(26812, 3, "AncientDrakkariSoothsayer_OnKilledTarget")
RegisterUnitEvent(26812, 4, "AncientDrakkariSoothsayer_OnDied")