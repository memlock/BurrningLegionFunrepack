--[[ Darkshore -- Elder Darkshore Thresher.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function ElderDarkshoreThresher_OnCombat(Unit, Event)
Unit:RegisterEvent("ElderDarkshoreThresher_PierceArmor", 9000, 0)
end

function ElderDarkshoreThresher_PierceArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6016, pUnit:GetMainTank()) 
end

function ElderDarkshoreThresher_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ElderDarkshoreThresher_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ElderDarkshoreThresher_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2187, 1, "ElderDarkshoreThresher_OnCombat")
RegisterUnitEvent(2187, 2, "ElderDarkshoreThresher_OnLeaveCombat")
RegisterUnitEvent(2187, 3, "ElderDarkshoreThresher_OnKilledTarget")
RegisterUnitEvent(2187, 4, "ElderDarkshoreThresher_OnDied")