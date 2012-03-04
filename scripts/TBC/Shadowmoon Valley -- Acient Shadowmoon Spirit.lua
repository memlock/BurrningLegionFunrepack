--[[ Shadowmoon Valley -- Ancient Shadowmoon Spirit(Teron Gorefiend).lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function AcientShadowmoonSpirit_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("AcientShadowmoonSpirit_Haste", 40000, 0)
	pUnit:RegisterEvent("AcientShadowmoonSpirit_DeathAndDecay", 30000, 0)
	pUnit:RegisterEvent("AcientShadowmoonSpirit_TouchOfDarkness", 15000, 1)
	pUnit:RegisterEvent("AcientShadowmoonSpirit_UnholyArmor", 3000, 0)
end

function AcientShadowmoonSpirit_Haste(pUnit,Event)
	pUnit:CastSpell(37728)
end

function AcientShadowmoonSpirit_DeathAndDecay(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37788,pUnit:GetClosestPlayer())
end

function AcientShadowmoonSpirit_TouchOfDarkness(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37727,pUnit:GetClosestPlayer())
end

function AcientShadowmoonSpirit_UnholyArmor(pUnit,Event)
	pUnit:CastSpell(37729)
end

function AcientShadowmoonSpirit_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function AcientShadowmoonSpirit_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21797, 1, "AcientShadowmoonSpirit_OnEnterCombat")
RegisterUnitEvent (21797, 2, "AcientShadowmoonSpirit_OnLeaveCombat")
RegisterUnitEvent (21797, 4, "AcientShadowmoonSpirit_OnDied")