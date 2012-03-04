--[[ Shadowmoon Valley -- Dreadwarden.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function Dreadwarden_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Dreadwarden_Spell1", 34000, 0)
	pUnit:RegisterEvent("Dreadwarden_Spell2", 21000, 0)
end

function Dreadwarden_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11443,pUnit:GetClosestPlayer())
end

function Dreadwarden_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function Dreadwarden_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Dreadwarden_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19744, 1, "Dreadwarden_OnEnterCombat")
RegisterUnitEvent(19744, 2, "Dreadwarden_OnLeaveCombat")
RegisterUnitEvent(19744, 4, "Dreadwarden_OnDied")