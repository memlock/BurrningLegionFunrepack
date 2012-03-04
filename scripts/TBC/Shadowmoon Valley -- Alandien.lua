--[[ Shadowmoon Valley -- Alandien

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 16th, 2008. ]]

function Alandien_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Alandien_ShadowFury", 3000, 0)
	pUnit:RegisterEvent("Alandien_ManaBurn", 3000, 0)
end

function Alandien_ShadowFury(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39082,pUnit:GetClosestPlayer())
end

function Alandien_ManaBurn(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39262,pUnit:GetClosestPlayer())
end

function Alandien_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Alandien_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21171, 1, "Alandien_OnEnterCombat")
RegisterUnitEvent (21171, 2, "Alandien_OnLeaveCombat")
RegisterUnitEvent (21171, 4, "Alandien_OnDied")