--[[ Tanaris -- Sandfury Firecaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function SandfuryFirecaller_OnCombat(Unit, Event)
Unit:RegisterEvent("SandfuryFirecaller_Fireball", 5000, 0)
end

function SandfuryFirecaller_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20823, pUnit:GetMainTank()) 
end

function SandfuryFirecaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SandfuryFirecaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SandfuryFirecaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5647, 1, "SandfuryFirecaller_OnCombat")
RegisterUnitEvent(5647, 2, "SandfuryFirecaller_OnLeaveCombat")
RegisterUnitEvent(5647, 3, "SandfuryFirecaller_OnKilledTarget")
RegisterUnitEvent(5647, 4, "SandfuryFirecaller_OnDied")