--[[ Darkshore -- Darkshore Thresher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function DarkshoreThresher_OnCombat(Unit, Event)
Unit:RegisterEvent("DarkshoreThresher_PierceArmor", 9000, 0)
end

function DarkshoreThresher_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function DarkshoreThresher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DarkshoreThresher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DarkshoreThresher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2185, 1, "DarkshoreThresher_OnCombat")
RegisterUnitEvent(2185, 2, "DarkshoreThresher_OnLeaveCombat")
RegisterUnitEvent(2185, 3, "DarkshoreThresher_OnKilledTarget")
RegisterUnitEvent(2185, 4, "DarkshoreThresher_OnDied")