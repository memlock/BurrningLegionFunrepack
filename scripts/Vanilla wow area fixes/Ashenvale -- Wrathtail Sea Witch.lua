--[[ Ashenvale -- Wrathtail Sea Witch.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function WrathtailSeaWitch_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathtailSeaWitch_LightningBlast", 8000, 0)
end

function WrathtailSeaWitch_LightningBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8598, pUnit:GetMainTank()) 
end

function WrathtailSeaWitch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathtailSeaWitch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathtailSeaWitch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3715, 1, "WrathtailSeaWitch_OnCombat")
RegisterUnitEvent(3715, 2, "WrathtailSeaWitch_OnLeaveCombat")
RegisterUnitEvent(3715, 3, "WrathtailSeaWitch_OnKilledTarget")
RegisterUnitEvent(3715, 4, "WrathtailSeaWitch_OnDied")