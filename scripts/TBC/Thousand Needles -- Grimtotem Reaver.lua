--[[ Thousand Needles -- Grimtotem Reaver.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemReaver_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemReaver_Cleave", 4000, 0)
Unit:RegisterEvent("GrimtotemReaver_Strike", 5000, 0)
end

function GrimtotemReaver_Cleave(pUnit, Event) 
pUnit:CastSpell(15496) 
end

function GrimtotemReaver_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function GrimtotemReaver_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemReaver_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemReaver_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10761, 1, "GrimtotemReaver_OnCombat")
RegisterUnitEvent(10761, 2, "GrimtotemReaver_OnLeaveCombat")
RegisterUnitEvent(10761, 3, "GrimtotemReaver_OnKilledTarget")
RegisterUnitEvent(10761, 4, "GrimtotemReaver_OnDied")