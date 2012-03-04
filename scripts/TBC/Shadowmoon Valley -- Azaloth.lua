--[[ Shadowmoon Valley -- Azaloth.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 21th, 2008. ]]

function Azaloth_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Azaloth_RainOfFire", 30000, 0)
	pUnit:RegisterEvent("Azaloth_Cleave", 60000, 0)
	pUnit:RegisterEvent("Azaloth_Cripple", 20000, 0)
	pUnit:RegisterEvent("Azaloth_WarStomp", 13000, 0)
end

function Azaloth_RainOfFire(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38741,pUnit:GetClosestPlayer())
end

function Azaloth_Cleave(pUnit,Event)
	pUnit:FullCastSpellOnTarget(40504,pUnit:GetClosestPlayer())
end


function Azaloth_Cripple(pUnit,Event)
	pUnit:FullCastSpellOnTarget(11443,pUnit:GetClosestPlayer())
end


function Azaloth_WarStomp(pUnit,Event)
	pUnit:FullCastSpellOnTarget(38750,pUnit:GetClosestPlayer())
end

function Azaloth_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Azaloth_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21506, 1, "Azaloth_OnEnterCombat")
RegisterUnitEvent(21506, 2, "Azaloth_OnLeaveCombat")
RegisterUnitEvent(21506, 4, "Azaloth_OnDied")