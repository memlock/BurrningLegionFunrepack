--[[ Tanaris -- Gormarok the Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 4th, 2008. ]]

function GormaroktheRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("GormaroktheRavager_Cleave", 4000, 0)
Unit:RegisterEvent("GormaroktheRavager_Enrage", 120000, 0)
Unit:RegisterEvent("GormaroktheRavager_MortalStrike", 6000, 0)
end

function GormaroktheRavager_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function GormaroktheRavager_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(16856, pUnit:GetMainTank()) 
end

function GormaroktheRavager_Enrage(pUnit, Event) 
if Unit:GetHealthPct() < 25 then
pUnit:CastSpell(8599) 
end
end

function GormaroktheRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GormaroktheRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GormaroktheRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(12046, 1, "GormaroktheRavager_OnCombat")
RegisterUnitEvent(12046, 2, "GormaroktheRavager_OnLeaveCombat")
RegisterUnitEvent(12046, 3, "GormaroktheRavager_OnKilledTarget")
RegisterUnitEvent(12046, 4, "GormaroktheRavager_OnDied")