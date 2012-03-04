--[[ Darkshore -- Blackfathom Tide Priestess.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 30th, 2008. ]]

function BlackfathomTidePriestess_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackfathomTidePriestess_Frostbolt", 8000, 0)
Unit:RegisterEvent("BlackfathomTidePriestess_Heal", 13000, 0)
end

function BlackfathomTidePriestess_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function BlackfathomTidePriestess_Heal(pUnit, Event) 
pUnit:CastSpell(11642) 
end

function BlackfathomTidePriestess_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackfathomTidePriestess_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackfathomTidePriestess_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4802, 1, "BlackfathomTidePriestess_OnCombat")
RegisterUnitEvent(4802, 2, "BlackfathomTidePriestess_OnLeaveCombat")
RegisterUnitEvent(4802, 3, "BlackfathomTidePriestess_OnKilledTarget")
RegisterUnitEvent(4802, 4, "BlackfathomTidePriestess_OnDied")