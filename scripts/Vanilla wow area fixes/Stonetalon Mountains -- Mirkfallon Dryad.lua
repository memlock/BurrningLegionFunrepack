--[[ Stonetalon Mountains -- Mirkfallon Dryad.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function MirkfallonDryad_OnCombat(Unit, Event)
Unit:RegisterEvent("MirkfallonDryad_SlowingPoison", 10000, 0)
Unit:RegisterEvent("MirkfallonDryad_Throw", 6000, 0)
end

function MirkfallonDryad_SlowingPoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7992, pUnit:GetMainTank()) 
end

function MirkfallonDryad_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function MirkfallonDryad_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MirkfallonDryad_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MirkfallonDryad_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4061, 1, "MirkfallonDryad_OnCombat")
RegisterUnitEvent(4061, 2, "MirkfallonDryad_OnLeaveCombat")
RegisterUnitEvent(4061, 3, "MirkfallonDryad_OnKilledTarget")
RegisterUnitEvent(4061, 4, "MirkfallonDryad_OnDied")