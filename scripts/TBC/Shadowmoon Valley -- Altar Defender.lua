--[[ Shadowmoon Valley -- Altar Defender

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 16th, 2008. ]]

function AltarDefender_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AltarDefender_Shoot", 11000, 0)
end

function AltarDefender_Shoot(pUnit,Event)
	pUnit:FullCastSpellOnTarget(41440,pUnit:GetClosestPlayer())
end

function AltarDefender_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AltarDefender_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23453, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (23453, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (23453, 4, "Alandien_OnDiedCombat")