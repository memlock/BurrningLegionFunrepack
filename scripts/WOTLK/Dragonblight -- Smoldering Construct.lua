--[[ Dragonblight -- Smoldering Construct.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 2th, 2009. ]]


function SmolderingConstruct_OnCombat(Unit, Event)
Unit:RegisterEvent("SmolderingConstruct_Backlash", 6000, 0)
end

function SmolderingConstruct_Backlash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(51439, pUnit:GetMainTank()) 
end

function SmolderingConstruct_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SmolderingConstruct_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SmolderingConstruct_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27362, 1, "SmolderingConstruct_OnCombat")
RegisterUnitEvent(27362, 2, "SmolderingConstruct_OnLeaveCombat")
RegisterUnitEvent(27362, 3, "SmolderingConstruct_OnKilledTarget")
RegisterUnitEvent(27362, 4, "SmolderingConstruct_OnDied")