--[[ Azshara -- Hetaera.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Hetaera_OnCombat(Unit, Event)
Unit:RegisterEvent("Hetaera_InfectedBite", 8000, 0)
end

function Hetaera_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12542, pUnit:GetMainTank()) 
end

function Hetaera_Thrash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3391, pUnit:GetMainTank()) 
end

function Hetaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Hetaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Hetaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6140, 1, "Hetaera_OnCombat")
RegisterUnitEvent(6140, 2, "Hetaera_OnLeaveCombat")
RegisterUnitEvent(6140, 3, "Hetaera_OnKilledTarget")
RegisterUnitEvent(6140, 4, "Hetaera_OnDied")