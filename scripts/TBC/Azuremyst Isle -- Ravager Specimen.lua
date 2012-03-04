--[[ Azuremyst Isle -- Ravager Specimen.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function RavagerSpecimen_OnCombat(Unit, Event)
Unit:RegisterEvent("RavagerSpecimen_Rend", 8000, 0)
end

function RavagerSpecimen_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function RavagerSpecimen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RavagerSpecimen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RavagerSpecimen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17199, 1, "RavagerSpecimen_OnCombat")
RegisterUnitEvent(17199, 2, "RavagerSpecimen_OnLeaveCombat")
RegisterUnitEvent(17199, 3, "RavagerSpecimen_OnKilledTarget")
RegisterUnitEvent(17199, 4, "RavagerSpecimen_OnDied")