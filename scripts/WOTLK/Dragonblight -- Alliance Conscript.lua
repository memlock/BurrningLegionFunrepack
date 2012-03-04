--[[ Dragonblight -- Alliance Conscript.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 1th, 2009. ]]


function AllianceConscript_OnCombat(Unit, Event)
Unit:RegisterEvent("AllianceConscript_HeroicStrike", 8000, 0)
Unit:RegisterEvent("AllianceConscript_ShieldBlock", 5000, 0)
Unit:RegisterEvent("AllianceConscript_Shoot", 6000, 0)
end

function AllianceConscript_HeroicStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(29426, pUnit:GetMainTank()) 
end

function AllianceConscript_ShieldBlock(pUnit, Event) 
pUnit:CastSpell(32587) 
end

function AllianceConscript_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15620, pUnit:GetMainTank()) 
end

function AllianceConscript_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AllianceConscript_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AllianceConscript_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(27564, 1, "AllianceConscript_OnCombat")
RegisterUnitEvent(27564, 2, "AllianceConscript_OnLeaveCombat")
RegisterUnitEvent(27564, 3, "AllianceConscript_OnKilledTarget")
RegisterUnitEvent(27564, 4, "AllianceConscript_OnDied")