--[[ Silithus -- Sand Skitterer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]


function SandSkitterer_OnCombat(Unit, Event)
Unit:RegisterEvent("SandSkitterer_Poison", 10000, 0)
end

function SandSkitterer_Poison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(744, pUnit:GetRandomPlayer(0)) 
end

function SandSkitterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandSkitterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandSkitterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11738, 1, "SandSkitterer_OnCombat")
RegisterUnitEvent(11738, 2, "SandSkitterer_OnLeaveCombat")
RegisterUnitEvent(11738, 3, "SandSkitterer_OnKilledTarget")
RegisterUnitEvent(11738, 4, "SandSkitterer_OnDied")