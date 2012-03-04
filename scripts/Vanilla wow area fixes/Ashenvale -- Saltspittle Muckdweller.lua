--[[ Ashenvale -- Saltspittle Muckdweller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function SaltspittleMuckdweller_OnCombat(Unit, Event)
Unit:RegisterEvent("SaltspittleMuckdweller_Throw", 6000, 0)
end

function SaltspittleMuckdweller_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SaltspittleMuckdweller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SaltspittleMuckdweller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SaltspittleMuckdweller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3740, 1, "SaltspittleMuckdweller_OnCombat")
RegisterUnitEvent(3740, 2, "SaltspittleMuckdweller_OnLeaveCombat")
RegisterUnitEvent(3740, 3, "SaltspittleMuckdweller_OnKilledTarget")
RegisterUnitEvent(3740, 4, "SaltspittleMuckdweller_OnDied")