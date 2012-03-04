--[[ Azshara -- Haldarr Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function HaldarrTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("HaldarrTrickster_CurseofMending", 8000, 0)
end

function HaldarrTrickster_CurseofMending(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7098, pUnit:GetMainTank()) 
end

function HaldarrTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HaldarrTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HaldarrTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(6126, 1, "HaldarrTrickster_OnCombat")
RegisterUnitEvent(6126, 2, "HaldarrTrickster_OnLeaveCombat")
RegisterUnitEvent(6126, 3, "HaldarrTrickster_OnKilledTarget")
RegisterUnitEvent(6126, 4, "HaldarrTrickster_OnDied")