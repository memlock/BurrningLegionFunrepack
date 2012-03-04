--[[ Borean Tundra -- Nerub'ar Corpse Harvester.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarCorpseHarvester_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarCorpseHarvester_VenomSpit", 8000, 0)
end

function NerubarCorpseHarvester_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarCorpseHarvester_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarCorpseHarvester_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarCorpseHarvester_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25445, 1, "NerubarCorpseHarvester_OnCombat")
RegisterUnitEvent(25445, 2, "NerubarCorpseHarvester_OnLeaveCombat")
RegisterUnitEvent(25445, 3, "NerubarCorpseHarvester_OnKilledTarget")
RegisterUnitEvent(25445, 4, "NerubarCorpseHarvester_OnDied")