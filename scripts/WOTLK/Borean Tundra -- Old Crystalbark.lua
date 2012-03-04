--[[ Borean Tundra -- Old Crystalbark.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function OldCrystalbark_OnCombat(Unit, Event)
Unit:RegisterEvent("OldCrystalbark_ArcaneBreath", 8000, 0)
Unit:RegisterEvent("OldCrystalbark_MarkofDetonation", 6000, 0)
end

function OldCrystalbark_ArcaneBreath(pUnit, Event) 
pUnit:CastSpell(60903) 
end

function OldCrystalbark_MarkofDetonation(pUnit, Event) 
pUnit:CastSpell(50506) 
end

function OldCrystalbark_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function OldCrystalbark_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function OldCrystalbark_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(32357, 1, "OldCrystalbark_OnCombat")
RegisterUnitEvent(32357, 2, "OldCrystalbark_OnLeaveCombat")
RegisterUnitEvent(32357, 3, "OldCrystalbark_OnKilledTarget")
RegisterUnitEvent(32357, 4, "OldCrystalbark_OnDied")