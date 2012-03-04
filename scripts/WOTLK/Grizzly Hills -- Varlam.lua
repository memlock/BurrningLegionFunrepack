--[[ Grizzly Hills -- Varlam.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Varlam_OnCombat(Unit, Event)
Unit:RegisterEvent("Varlam_Cleave", 9000, 0)
Unit:RegisterEvent("Varlam_MortalStrike", 7000, 0)
end

function Varlam_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function Varlam_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function Varlam_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Varlam_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Varlam_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27579, 1, "Varlam_OnCombat")
RegisterUnitEvent(27579, 2, "Varlam_OnLeaveCombat")
RegisterUnitEvent(27579, 3, "Varlam_OnKilledTarget")
RegisterUnitEvent(27579, 4, "Varlam_OnDied")