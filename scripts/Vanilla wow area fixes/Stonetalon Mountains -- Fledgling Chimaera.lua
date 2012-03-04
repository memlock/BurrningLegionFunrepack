--[[ Stonetalon Mountains -- Fledgling Chimaera.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function FledglingChimaera_OnCombat(Unit, Event)
Unit:RegisterEvent("FledglingChimaera_CorrosivePoison", 10000, 0)
end

function FledglingChimaera_CorrosivePoison(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3397, pUnit:GetMainTank()) 
end

function FledglingChimaera_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function FledglingChimaera_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function FledglingChimaera_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4031, 1, "FledglingChimaera_OnCombat")
RegisterUnitEvent(4031, 2, "FledglingChimaera_OnLeaveCombat")
RegisterUnitEvent(4031, 3, "FledglingChimaera_OnKilledTarget")
RegisterUnitEvent(4031, 4, "FledglingChimaera_OnDied")