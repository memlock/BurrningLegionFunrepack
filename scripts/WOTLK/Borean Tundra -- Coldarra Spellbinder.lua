--[[ Borean Tundra -- Coldarra Spellbinder.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraSpellbinder_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraSpellbinder_Frostbolt", 8000, 0)
end

function ColdarraSpellbinder_Frostbolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9672, pUnit:GetMainTank()) 
end

function ColdarraSpellbinder_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraSpellbinder_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraSpellbinder_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25719, 1, "ColdarraSpellbinder_OnCombat")
RegisterUnitEvent(25719, 2, "ColdarraSpellbinder_OnLeaveCombat")
RegisterUnitEvent(25719, 3, "ColdarraSpellbinder_OnKilledTarget")
RegisterUnitEvent(25719, 4, "ColdarraSpellbinder_OnDied")