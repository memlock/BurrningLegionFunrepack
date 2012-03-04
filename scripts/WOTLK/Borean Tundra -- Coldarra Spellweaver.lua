--[[ Borean Tundra -- Coldarra Spellweaver.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function ColdarraSpellweaver_OnCombat(Unit, Event)
Unit:RegisterEvent("ColdarraSpellweaver_ArcaneMissiles", 8000, 0)
end

function ColdarraSpellweaver_ArcaneMissiles(pUnit, Event) 
pUnit:FullCastSpellOnTarget(34447, pUnit:GetMainTank()) 
end

function ColdarraSpellweaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ColdarraSpellweaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ColdarraSpellweaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25722, 1, "ColdarraSpellweaver_OnCombat")
RegisterUnitEvent(25722, 2, "ColdarraSpellweaver_OnLeaveCombat")
RegisterUnitEvent(25722, 3, "ColdarraSpellweaver_OnKilledTarget")
RegisterUnitEvent(25722, 4, "ColdarraSpellweaver_OnDied")