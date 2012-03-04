--[[ Stonetalon Mountains -- Grimtotem Sorcerer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function GrimtotemSorcerer_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemSorcerer_LightningBolt", 8000, 0)
Unit:RegisterEvent("GrimtotemSorcerer_Rejuvenation", 12000, 0)
end

function GrimtotemSorcerer_LightningBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20802, pUnit:GetMainTank()) 
end

function GrimtotemSorcerer_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(12160) 
end

function GrimtotemSorcerer_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemSorcerer_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemSorcerer_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11913, 1, "GrimtotemSorcerer_OnCombat")
RegisterUnitEvent(11913, 2, "GrimtotemSorcerer_OnLeaveCombat")
RegisterUnitEvent(11913, 3, "GrimtotemSorcerer_OnKilledTarget")
RegisterUnitEvent(11913, 4, "GrimtotemSorcerer_OnDied")