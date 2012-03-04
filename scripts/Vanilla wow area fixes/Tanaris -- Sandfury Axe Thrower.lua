--[[ Tanaris -- Sandfury Axe Thrower.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SandfuryAxeThrower_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryAxeThrower_Throw", 4000, 0)
end

function SandfuryAxeThrower_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SandfuryAxeThrower_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryAxeThrower_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryAxeThrower_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5646, 1, "SandfuryAxeThrower_OnCombat")
RegisterUnitEvent(5646, 2, "SandfuryAxeThrower_OnLeaveCombat")
RegisterUnitEvent(5646, 3, "SandfuryAxeThrower_OnKilledTarget")
RegisterUnitEvent(5646, 4, "SandfuryAxeThrower_OnDied")