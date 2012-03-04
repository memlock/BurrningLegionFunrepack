--[[ Borean Tundra -- Heigarr the Horrible.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function HeigarrtheHorrible_OnCombat(Unit, Event)
Unit:RegisterEvent("HeigarrtheHorrible_Cleave", 7000, 0)
Unit:RegisterEvent("HeigarrtheHorrible_ConcussionBlow", 9000, 0)
end

function HeigarrtheHorrible_Cleave(pUnit, Event) 
pUnit:CastSpell(40504) 
end

function HeigarrtheHorrible_ConcussionBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32588, pUnit:GetMainTank()) 
end

function HeigarrtheHorrible_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HeigarrtheHorrible_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HeigarrtheHorrible_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26266, 1, "HeigarrtheHorrible_OnCombat")
RegisterUnitEvent(26266, 2, "HeigarrtheHorrible_OnLeaveCombat")
RegisterUnitEvent(26266, 3, "HeigarrtheHorrible_OnKilledTarget")
RegisterUnitEvent(26266, 4, "HeigarrtheHorrible_OnDied")