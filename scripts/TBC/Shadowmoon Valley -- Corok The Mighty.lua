--[[ Shadowmoon Valley -- Corok The Mighty.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 24th, 2008. ]]

function Corok_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Corok_Spell1", 11000, 0)
	pUnit:RegisterEvent("Corok_Spell2", 26000, 0)
end

function Corok_Spell1(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12612,pUnit:GetClosestPlayer())
end

function Corok_Spell2(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15550,pUnit:GetClosestPlayer())
end

function Corok_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Corok_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(22011, 1, "Corok_OnEnterCombat")
RegisterUnitEvent(22011, 2, "Corok_OnLeaveCombat")
RegisterUnitEvent(22011, 4, "Corok_OnDied")