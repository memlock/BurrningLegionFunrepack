--[[ Borean Tundra -- Coldarra Scalesworn.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraScalesworn_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraScalesworn_FrostNova", 10000, 0)
Unit:RegisterEvent("ColdarraScalesworn_Rend", 8000, 0)
end

function ColdarraScalesworn_FrostNova(pUnit, Event) 
pUnit:CastSpell(12748) 
end

function ColdarraScalesworn_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function ColdarraScalesworn_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraScalesworn_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraScalesworn_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25717, 1, "ColdarraScalesworn_OnCombat")
RegisterUnitEvent(25717, 2, "ColdarraScalesworn_OnLeaveCombat")
RegisterUnitEvent(25717, 3, "ColdarraScalesworn_OnKilledTarget")
RegisterUnitEvent(25717, 4, "ColdarraScalesworn_OnDied")