--[[ Mulgore -- Kodo Matriarch.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 31th, 2008. ]]

function KodoMatriarch_OnCombat(Unit, Event)
Unit:RegisterEvent("KodoMatriarch_Tramble", 6000, 0)
end

function KodoMatriarch_Tramble(pUnit, Event) 
pUnit:CastSpell(5568, pUnit:GetClosestPlayer()) 
end

function KodoMatriarch_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function KodoMatriarch_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function KodoMatriarch_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(2974, 1, "KodoMatriarch_OnCombat")
RegisterUnitEvent(2974, 2, "KodoMatriarch_OnLeaveCombat")
RegisterUnitEvent(2974, 3, "KodoMatriarch_OnKilledTarget")
RegisterUnitEvent(2974, 4, "KodoMatriarch_OnDied")