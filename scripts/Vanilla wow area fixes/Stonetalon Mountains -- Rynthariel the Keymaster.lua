--[[ Stonetalon Mountains -- Rynthariel the Keymaster.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function RyntharieltheKeymaster_OnCombat(Unit, Event)
Unit:RegisterEvent("RyntharieltheKeymaster_SlowingPoison", 10000, 0)
Unit:RegisterEvent("RyntharieltheKeymaster_Throw", 6000, 0)
end

function RyntharieltheKeymaster_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function RyntharieltheKeymaster_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function RyntharieltheKeymaster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RyntharieltheKeymaster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RyntharieltheKeymaster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(8518, 1, "RyntharieltheKeymaster_OnCombat")
RegisterUnitEvent(8518, 2, "RyntharieltheKeymaster_OnLeaveCombat")
RegisterUnitEvent(8518, 3, "RyntharieltheKeymaster_OnKilledTarget")
RegisterUnitEvent(8518, 4, "RyntharieltheKeymaster_OnDied")