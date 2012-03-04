--[[ Borean Tundra -- Glimmer Bay Orca.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function GlimmerBayOrca_OnCombat(Unit, Event)
Unit:RegisterEvent("GlimmerBayOrca_FlipperThwack", 8000, 0)
end

function GlimmerBayOrca_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function GlimmerBayOrca_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GlimmerBayOrca_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GlimmerBayOrca_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25204, 1, "GlimmerBayOrca_OnCombat")
RegisterUnitEvent(25204, 2, "GlimmerBayOrca_OnLeaveCombat")
RegisterUnitEvent(25204, 3, "GlimmerBayOrca_OnKilledTarget")
RegisterUnitEvent(25204, 4, "GlimmerBayOrca_OnDied")