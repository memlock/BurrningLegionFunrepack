--[[ Ashenvale -- Bleakheart Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BleakheartHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BleakheartHellcaller_SummonImp", 1000, 0)
end

function BleakheartHellcaller_SummonImp(pUnit, Event) 
pUnit:CastSpell(11939) 
end

function BleakheartHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BleakheartHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BleakheartHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3771, 1, "BleakheartHellcaller_OnCombat")
RegisterUnitEvent(3771, 2, "BleakheartHellcaller_OnLeaveCombat")
RegisterUnitEvent(3771, 3, "BleakheartHellcaller_OnKilledTarget")
RegisterUnitEvent(3771, 4, "BleakheartHellcaller_OnDied")