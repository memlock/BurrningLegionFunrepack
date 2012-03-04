--[[ Hellfire Peninsula -- Bleeding Hollow Necrolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BHT_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(34368)
	pUnit:FullCastSpellOnTarget(33924,pUnit:GetRandomPlayer(3))
end

function BHT_Phase1(pUnit,Event)
 if pUnit:GetHealthPct() == 15 then
	pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())

end
end

function BHT_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BHT_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19424, 1, "BHT_OnEnterCombat")
RegisterUnitEvent(19424, 1, "BHT_Phase1")
RegisterUnitEvent(19424, 2, "BHT_OnLeaveCombat")
RegisterUnitEvent(19424, 4, "BHT_OnDied")