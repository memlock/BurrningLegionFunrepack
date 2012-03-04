--[[ Ashenvale -- Bleakheart Shadowstalker.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function BleakheartShadowstalker_OnCombat(Unit, Event)
Unit:RegisterEvent("BleakheartShadowstalker_ShadowstalkerSlash", 8000, 0)
end

function BleakheartShadowstalker_ShadowstalkerSlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6927, pUnit:GetMainTank()) 
end

function BleakheartShadowstalker_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BleakheartShadowstalker_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BleakheartShadowstalker_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3770, 1, "BleakheartShadowstalker_OnCombat")
RegisterUnitEvent(3770, 2, "BleakheartShadowstalker_OnLeaveCombat")
RegisterUnitEvent(3770, 3, "BleakheartShadowstalker_OnKilledTarget")
RegisterUnitEvent(3770, 4, "BleakheartShadowstalker_OnDied")