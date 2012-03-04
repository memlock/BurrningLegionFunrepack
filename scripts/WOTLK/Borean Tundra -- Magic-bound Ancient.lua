--[[ Borean Tundra -- Magic-bound Ancient.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function MagicboundAncient_OnCombat(Unit, Event)
Unit:RegisterEvent("MagicboundAncient_MarkofDetonation", 6000, 0)
end

function MagicboundAncient_MarkofDetonation(pUnit, Event) 
pUnit:CastSpell(50506) 
end

function MagicboundAncient_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MagicboundAncient_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MagicboundAncient_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25707, 1, "MagicboundAncient_OnCombat")
RegisterUnitEvent(25707, 2, "MagicboundAncient_OnLeaveCombat")
RegisterUnitEvent(25707, 3, "MagicboundAncient_OnKilledTarget")
RegisterUnitEvent(25707, 4, "MagicboundAncient_OnDied")