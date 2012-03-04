--[[ Grizzly Hills -- Tecahuna.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Tecahuna_OnCombat(Unit, Event)
Unit:RegisterEvent("Tecahuna_TecahunaVenomSpit", 9000, 0)
end

function Tecahuna_TecahunaVenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(47629, pUnit:GetMainTank()) 
end

function Tecahuna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Tecahuna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Tecahuna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26865, 1, "Tecahuna_OnCombat")
RegisterUnitEvent(26865, 2, "Tecahuna_OnLeaveCombat")
RegisterUnitEvent(26865, 3, "Tecahuna_OnKilledTarget")
RegisterUnitEvent(26865, 4, "Tecahuna_OnDied")