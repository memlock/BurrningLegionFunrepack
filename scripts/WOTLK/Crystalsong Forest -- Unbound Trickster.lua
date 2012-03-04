--[[ Crystalsong Forest -- Unbound Trickster.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function UnboundTrickster_OnCombat(Unit, Event)
Unit:RegisterEvent("UnboundTrickster_FireBlast", 6000, 0)
Unit:RegisterEvent("UnboundTrickster_Ignite", 8000, 0)
end

function UnboundTrickster_FireBlast(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13341, pUnit:GetMainTank()) 
end

function UnboundTrickster_Ignite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(58438, pUnit:GetMainTank()) 
end

function UnboundTrickster_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function UnboundTrickster_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function UnboundTrickster_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30856, 1, "UnboundTrickster_OnCombat")
RegisterUnitEvent(30856, 2, "UnboundTrickster_OnLeaveCombat")
RegisterUnitEvent(30856, 3, "UnboundTrickster_OnKilledTarget")
RegisterUnitEvent(30856, 4, "UnboundTrickster_OnDied")