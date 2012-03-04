--[[ Thousand Needles -- Grimtotem Bandit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 1th, 2008. ]]

function GrimtotemBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("GrimtotemBandit_Disarm", 8000, 0)
Unit:RegisterEvent("GrimtotemBandit_Kick", 9000, 0)
end

function GrimtotemBandit_Disarm(pUnit, Event) 
pUnit:FullCastSpellOnTarget(6713, pUnit:GetMainTank()) 
end

function GrimtotemBandit_Kick(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11978, pUnit:GetMainTank()) 
end

function GrimtotemBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function GrimtotemBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function GrimtotemBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(10758, 1, "GrimtotemBandit_OnCombat")
RegisterUnitEvent(10758, 2, "GrimtotemBandit_OnLeaveCombat")
RegisterUnitEvent(10758, 3, "GrimtotemBandit_OnKilledTarget")
RegisterUnitEvent(10758, 4, "GrimtotemBandit_OnDied")