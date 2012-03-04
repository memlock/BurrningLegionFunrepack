--[[ Durotar -- Dustwind StormWitch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function DustwindStormWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("DustwindStormWitch_LightningBolt", 8000, 0)
end

function DustwindStormWitch_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9532, pUnit:GetMainTank()) 
end

function DustwindStormWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DustwindStormWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DustwindStormWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3118, 1, "DustwindStormWitch_OnCombat")
RegisterUnitEvent(3118, 2, "DustwindStormWitch_OnLeaveCombat")
RegisterUnitEvent(3118, 3, "DustwindStormWitch_OnKilledTarget")
RegisterUnitEvent(3118, 4, "DustwindStormWitch_OnDied")