--[[ Crystalsong Forest -- Skymaster Baeric.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function SkymasterBaeric_OnCombat(Unit, Event)
Unit:RegisterEvent("SkymasterBaeric_FieryIntellect", 2000, 1)
end

function SkymasterBaeric_FieryIntellect(pUnit, Event) 
pUnit:CastSpell(35917) 
end

function SkymasterBaeric_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SkymasterBaeric_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SkymasterBaeric_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(30269, 1, "SkymasterBaeric_OnCombat")
RegisterUnitEvent(30269, 2, "SkymasterBaeric_OnLeaveCombat")
RegisterUnitEvent(30269, 3, "SkymasterBaeric_OnKilledTarget")
RegisterUnitEvent(30269, 4, "SkymasterBaeric_OnDied")