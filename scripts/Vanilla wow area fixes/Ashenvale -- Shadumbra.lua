--[[ Ashenvale -- Shadumbra.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Shadumbra_OnCombat(Unit, Event)
Unit:RegisterEvent("Shadumbra_Rend", 10000, 0)
end

function Shadumbra_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13445, pUnit:GetMainTank()) 
end

function Shadumbra_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Shadumbra_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Shadumbra_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12677, 1, "Shadumbra_OnCombat")
RegisterUnitEvent(12677, 2, "Shadumbra_OnLeaveCombat")
RegisterUnitEvent(12677, 3, "Shadumbra_OnKilledTarget")
RegisterUnitEvent(12677, 4, "Shadumbra_OnDied")