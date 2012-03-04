--[[ Borean Tundra -- Nerubar Skitterer.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarSkitterer_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarSkitterer_PiercingBlow", 8000, 0)
end

function NerubarSkitterer_PiercingBlow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49749, pUnit:GetMainTank()) 
end

function NerubarSkitterer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarSkitterer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarSkitterer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24566, 1, "NerubarSkitterer_OnCombat")
RegisterUnitEvent(24566, 2, "NerubarSkitterer_OnLeaveCombat")
RegisterUnitEvent(24566, 3, "NerubarSkitterer_OnKilledTarget")
RegisterUnitEvent(24566, 4, "NerubarSkitterer_OnDied")