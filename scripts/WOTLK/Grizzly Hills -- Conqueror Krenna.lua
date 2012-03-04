--[[ Grizzly Hills -- Conqueror Krenna.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function ConquerorKrenna_OnCombat(Unit, Event)
Unit:RegisterEvent("ConquerorKrenna_Cleave", 8000, 0)
Unit:RegisterEvent("ConquerorKrenna_Fixate", 10000, 0)
Unit:RegisterEvent("ConquerorKrenna_Pummel", 17000, 0)
Unit:RegisterEvent("ConquerorKrenna_Slam", 12000, 0)
end

function ConquerorKrenna_Cleave(pUnit, Event) 
pUnit:CastSpell(15284) 
end

function ConquerorKrenna_Fixate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34719, pUnit:GetMainTank()) 
end

function ConquerorKrenna_Pummel(pUnit, Event) 
pUnit:FullCastSpellOnTarget(12555, pUnit:GetMainTank()) 
end

function ConquerorKrenna_Slam(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11430, pUnit:GetMainTank()) 
end

function ConquerorKrenna_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ConquerorKrenna_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ConquerorKrenna_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27727, 1, "ConquerorKrenna_OnCombat")
RegisterUnitEvent(27727, 2, "ConquerorKrenna_OnLeaveCombat")
RegisterUnitEvent(27727, 3, "ConquerorKrenna_OnKilledTarget")
RegisterUnitEvent(27727, 4, "ConquerorKrenna_OnDied")