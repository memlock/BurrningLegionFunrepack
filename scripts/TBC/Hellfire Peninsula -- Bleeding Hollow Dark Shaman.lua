--[[ Hellfire Peninsula -- Bleeding Hollow Dark Shaman.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 20th, 2008. ]]

function BHDS_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BHDS_FireNova", 20000, 0)
	pUnit:RegisterEvent("BHDS_Bloodlust", 60000, 0)
	pUnit:RegisterEvent("BHDS_LightningShield", 30000, 0)
end

function BHDS_FireNova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(32062,pUnit:GetClosestPlayer())
end

function BHDS_Bloodlust(pUnit,Event)
	pUnit:CastSpell(6742)
end

function BHDS_LightningShield(pUnit,Event)
	pUnit:CastSpell(12550)
end

function BHDS_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BHDS_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16873, 1, "BHDS_OnEnterCombat")
RegisterUnitEvent (16873, 2, "BHDS_OnLeaveCombat")
RegisterUnitEvent (16873, 4, "BHDS_OnDied")