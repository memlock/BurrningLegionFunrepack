--[[ Grizzly Hills -- Drakkari Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function DrakkariShaman_OnCombat(Unit, Event)
Unit:RegisterEvent("DrakkariShaman_LightningBolt", 7000, 0)
Unit:RegisterEvent("DrakkariShaman_MasteredElements", 10000, 0)
end

function DrakkariShaman_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DrakkariShaman_MasteredElements(pUnit, Event) 
pUnit:CastSpell(52290) 
end

function DrakkariShaman_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DrakkariShaman_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DrakkariShaman_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26447, 1, "DrakkariShaman_OnCombat")
RegisterUnitEvent(26447, 2, "DrakkariShaman_OnLeaveCombat")
RegisterUnitEvent(26447, 3, "DrakkariShaman_OnKilledTarget")
RegisterUnitEvent(26447, 4, "DrakkariShaman_OnDied")