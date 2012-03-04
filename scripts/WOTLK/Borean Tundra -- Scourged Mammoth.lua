--[[ Borean Tundra -- Scourged Mammoth.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ScourgedMammoth_OnCombat(Unit, Event)
Unit:RegisterEvent("ScourgedMammoth_Trample", 6000, 0)
end

function ScourgedMammoth_Trample(pUnit, Event) 
pUnit:CastSpell(15550)
end

function ScourgedMammoth_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScourgedMammoth_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScourgedMammoth_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25452, 1, "ScourgedMammoth_OnCombat")
RegisterUnitEvent(25452, 2, "ScourgedMammoth_OnLeaveCombat")
RegisterUnitEvent(25452, 3, "ScourgedMammoth_OnKilledTarget")
RegisterUnitEvent(25452, 4, "ScourgedMammoth_OnDied")