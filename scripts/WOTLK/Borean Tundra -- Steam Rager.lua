--[[ Borean Tundra -- Steam Rager.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SteamRager_OnCombat(Unit, Event)
Unit:RegisterEvent("SteamRager_SteamBlast", 8000, 0)
end

function SteamRager_SteamBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50375, pUnit:GetMainTank()) 
end

function SteamRager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SteamRager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SteamRager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24601, 1, "SteamRager_OnCombat")
RegisterUnitEvent(24601, 2, "SteamRager_OnLeaveCombat")
RegisterUnitEvent(24601, 3, "SteamRager_OnKilledTarget")
RegisterUnitEvent(24601, 4, "SteamRager_OnDied")