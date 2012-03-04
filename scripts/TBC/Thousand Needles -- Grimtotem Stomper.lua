--[[ Thousand Needles -- Grimtotem Stomper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemStomper_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemStomper_EarthShock", 4000, 0)
Unit:RegisterEvent("GrimtotemReaver_HealingWard", 8000, 0)
end

function GrimtotemStomper_EarthShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13281, pUnit:GetMainTank()) 
end

function GrimtotemReaver_HealingWard(pUnit, Event) 
pUnit:CastSpell(5605) 
end

function GrimtotemStomper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemStomper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemStomper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10759, 1, "GrimtotemStomper_OnCombat")
RegisterUnitEvent(10759, 2, "GrimtotemStomper_OnLeaveCombat")
RegisterUnitEvent(10759, 3, "GrimtotemStomper_OnKilledTarget")
RegisterUnitEvent(10759, 4, "GrimtotemStomper_OnDied")