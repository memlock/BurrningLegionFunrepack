--[[ Grizzly Hills -- Solstice Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function SolsticeHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SolsticeHunter_ImmolationTrap", 2000, 1)
Unit:RegisterEvent("SolsticeHunter_MultiShot", 10000, 0)
Unit:RegisterEvent("SolsticeHunter_ScorpidSting", 9000, 0)
Unit:RegisterEvent("SolsticeHunter_SerpentSting", 11000, 0)
Unit:RegisterEvent("SolsticeHunter_Shoot", 6000, 0)
end

function SolsticeHunter_ImmolationTrap(pUnit, Event) 
pUnit:CastSpell(52606) 
end

function SolsticeHunter_MultiShot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14443, pUnit:GetMainTank()) 
end

function SolsticeHunter_ScorpidSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52604, pUnit:GetMainTank()) 
end

function SolsticeHunter_SerpentSting(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31975, pUnit:GetMainTank()) 
end

function SolsticeHunter_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6660, pUnit:GetMainTank()) 
end

function SolsticeHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SolsticeHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SolsticeHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26389, 1, "SolsticeHunter_OnCombat")
RegisterUnitEvent(26389, 2, "SolsticeHunter_OnLeaveCombat")
RegisterUnitEvent(26389, 3, "SolsticeHunter_OnKilledTarget")
RegisterUnitEvent(26389, 4, "SolsticeHunter_OnDied")