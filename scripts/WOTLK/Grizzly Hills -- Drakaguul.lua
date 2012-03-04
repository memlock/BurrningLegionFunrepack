--[[ Grizzly Hills -- Drakaguul.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 3th, 2009. ]]


function Drakaguul_OnCombat(Unit, Event)
Unit:RegisterEvent("Drakaguul_BerserkerCharge", 10000, 0)
Unit:RegisterEvent("Drakaguul_DrakaguulsSoldiers", 12000, 0)
end

function Drakaguul_BerserkerCharge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(52460, pUnit:GetMainTank()) 
end

function Drakaguul_DrakaguulsSoldiers(pUnit, Event) 
pUnit:CastSpell(52457) 
end

function Drakaguul_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drakaguul_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drakaguul_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(26919, 1, "Drakaguul_OnCombat")
RegisterUnitEvent(26919, 2, "Drakaguul_OnLeaveCombat")
RegisterUnitEvent(26919, 3, "Drakaguul_OnKilledTarget")
RegisterUnitEvent(26919, 4, "Drakaguul_OnDied")