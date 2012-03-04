--[[ Desolace -- Hatefury Hellcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function HatefuryHellcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("HatefuryHellcaller_Enrage", 10000, 1)
Unit:RegisterEvent("HatefuryHellcaller_Immolate", 5000, 1)
Unit:RegisterEvent("HatefuryHellcaller_RainofFire", 11000, 0)
end

function HatefuryHellcaller_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function HatefuryHellcaller_Immolate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1094, pUnit:GetMainTank()) 
end

function HatefuryHellcaller_RainofFire(pUnit, Event) 
pUnit:CastSpell(39273) 
end

function HatefuryHellcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HatefuryHellcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HatefuryHellcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4675, 1, "HatefuryHellcaller_OnCombat")
RegisterUnitEvent(4675, 2, "HatefuryHellcaller_OnLeaveCombat")
RegisterUnitEvent(4675, 3, "HatefuryHellcaller_OnKilledTarget")
RegisterUnitEvent(4675, 4, "HatefuryHellcaller_OnDied")