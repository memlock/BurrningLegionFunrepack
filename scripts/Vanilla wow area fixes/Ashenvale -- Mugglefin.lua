--[[ Ashenvale -- Mugglefin.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function Mugglefin_OnCombat(Unit, Event)
Unit:RegisterEvent("Mugglefin_VolatileInfection", 12000, 0)
end

function Mugglefin_VolatileInfection(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3584, pUnit:GetMainTank()) 
end

function Mugglefin_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Mugglefin_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Mugglefin_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10643, 1, "Mugglefin_OnCombat")
RegisterUnitEvent(10643, 2, "Mugglefin_OnLeaveCombat")
RegisterUnitEvent(10643, 3, "Mugglefin_OnKilledTarget")
RegisterUnitEvent(10643, 4, "Mugglefin_OnDied")