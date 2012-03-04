--[[ The Barrens -- Captain Gerogg Hammertoe.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function CaptainGeroggHammertoe_OnCombat(Unit, Event)
Unit:RegisterEvent("CaptainGeroggHammertoe_ShieldBash", 10000, 0)
end

function CaptainGeroggHammertoe_ShieldBash(pUnit, Event) 
pUnit:FullCastSpellOnTarget(1672, pUnit:GetMainTank()) 
end

function CaptainGeroggHammertoe_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CaptainGeroggHammertoe_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CaptainGeroggHammertoe_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5851, 1, "CaptainGeroggHammertoe_OnCombat")
RegisterUnitEvent(5851, 2, "CaptainGeroggHammertoe_OnLeaveCombat")
RegisterUnitEvent(5851, 3, "CaptainGeroggHammertoe_OnKilledTarget")
RegisterUnitEvent(5851, 4, "CaptainGeroggHammertoe_OnDied")