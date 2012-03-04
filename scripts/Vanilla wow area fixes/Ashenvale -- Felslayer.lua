--[[ Ashenvale -- Felslayer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 5th, 2008. ]]


function Felslayer_OnCombat(Unit, Event)
Unit:RegisterEvent("Felslayer_ManaBurn", 8000, 0)
end

function Felslayer_ManaBurn(pUnit, Event) 
pUnit:FullCastSpellOnTarget(2691, pUnit:GetRandomPlayer(4)) 
end

function Felslayer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Felslayer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Felslayer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3774, 1, "Felslayer_OnCombat")
RegisterUnitEvent(3774, 2, "Felslayer_OnLeaveCombat")
RegisterUnitEvent(3774, 3, "Felslayer_OnKilledTarget")
RegisterUnitEvent(3774, 4, "Felslayer_OnDied")