--[[ Stonetalon Mountains -- Daughter of Cenarius.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function DaughterofCenarius_OnCombat(Unit, Event)
Unit:RegisterEvent("DaughterofCenarius_DispelMagic", 6000, 0)
Unit:RegisterEvent("DaughterofCenarius_Throw", 4000, 0)
end

function DaughterofCenarius_DispelMagic(pUnit, Event) 
pUnit:CastSpell(527) 
end

function DaughterofCenarius_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function DaughterofCenarius_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DaughterofCenarius_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DaughterofCenarius_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4053, 1, "DaughterofCenarius_OnCombat")
RegisterUnitEvent(4053, 2, "DaughterofCenarius_OnLeaveCombat")
RegisterUnitEvent(4053, 3, "DaughterofCenarius_OnKilledTarget")
RegisterUnitEvent(4053, 4, "DaughterofCenarius_OnDied")