--[[ Azshara -- Legashi Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function LegashiHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("LegashiHellcaller_Fireball", 8000, 0)
end

function LegashiHellcaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function LegashiHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function LegashiHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function LegashiHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6202, 1, "LegashiHellcaller_OnCombat")
RegisterUnitEvent(6202, 2, "LegashiHellcaller_OnLeaveCombat")
RegisterUnitEvent(6202, 3, "LegashiHellcaller_OnKilledTarget")
RegisterUnitEvent(6202, 4, "LegashiHellcaller_OnDied")