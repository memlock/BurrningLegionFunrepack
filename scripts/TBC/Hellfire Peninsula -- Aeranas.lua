--[[ Hellfire Peninsula -- Aeranas.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Aeranas_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Aeranas_Shock", 10000, 0)
end

function Aeranas_Shock(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12553,pUnit:GetClosestPlayer())
end

function Aeranas_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Aeranas_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end


RegisterUnitEvent (17085, 1, "Aeranas_OnEnterCombat")
RegisterUnitEvent (17085, 2, "Aeranas_OnLeaveCombat")
RegisterUnitEvent (17085, 4, "Aeranas_OnDied")