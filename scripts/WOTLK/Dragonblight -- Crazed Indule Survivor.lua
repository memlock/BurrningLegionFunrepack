--[[ Dragonblight -- Crazed Indule Survivor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function CrazedInduleSurvivor_OnCombat(Unit, Event)
Unit:RegisterEvent("CrazedInduleSurvivor_Crazed", 4000, 1)
Unit:RegisterEvent("CrazedInduleSurvivor_MortalStrike", 7000, 0)
end

function CrazedInduleSurvivor_Crazed(pUnit, Event) 
pUnit:CastSpell(48139) 
end

function CrazedInduleSurvivor_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39171, pUnit:GetMainTank()) 
end

function CrazedInduleSurvivor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CrazedInduleSurvivor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CrazedInduleSurvivor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32409, 1, "CrazedInduleSurvivor_OnCombat")
RegisterUnitEvent(32409, 2, "CrazedInduleSurvivor_OnLeaveCombat")
RegisterUnitEvent(32409, 3, "CrazedInduleSurvivor_OnKilledTarget")
RegisterUnitEvent(32409, 4, "CrazedInduleSurvivor_OnDied")