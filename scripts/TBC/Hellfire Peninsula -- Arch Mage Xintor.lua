--[[ Hellfire Peninsula -- Arch Mage Xintor.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Xintor_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Xintor_ArcaneMissiles", 10000 , 0)
	pUnit:RegisterEvent("Xintor_Fireball", 4000, 0)
	pUnit:RegisterEvent("Xintor_IceBarrier", 120000, 0) 
end

function Xintor_ArcaneMissiles(pUnit,Event)
	pUnit:FullCastSpellOnTarget(22273,pUnit:GetClosestPlayer())
end

function Xintor_Frostbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15530,pUnit:GetClosestPlayer())
end

function Xintor_IceBarrier(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33245,pUnit:GetClosestPlayer())
end

function Xintor_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Xintor_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16977, 1, "Xintor_OnEnterCombat")
RegisterUnitEvent (16977, 2, "Xintor_OnLeaveCombat")
RegisterUnitEvent (16977, 4, "Xintor_OnDied")