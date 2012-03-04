--[[ Shadowmoon Valley -- Arcano-Scorp.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function ArcanoScorp_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(37917) 
	pUnit:CastSpell(37851)
	pUnit:RegisterEvent("ArcanoScorp_DisMantle", 3000, 0)
	pUnit:RegisterEvent("ArcanoScorp_Pince", 6600, 0)
end

function ArcanoScorp_Dismantle(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37919,pUnit:GetClosestPlayer())
end

function ArcanoScorp_Pince(pUnit,Event)
	pUnit:FullCastSpellOnTarget(37918,pUnit:GetClosestPlayer())
end

RegisterUnitEvent (21909, 1, "ArcanoScorp_OnEnterCombat")
RegisterUnitEvent (21909, 2, "ArcanoScorp_OnLeaveCombat")
RegisterUnitEvent (21909, 4, "ArcanoScorp_OnDied")