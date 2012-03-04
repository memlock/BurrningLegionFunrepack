--[[ Shadowmoon Valley -- ArvoarTheRapacious.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Arvoar_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Arvoar_BellowingRoar", 30000, 0)
	pUnit:RegisterEvent("Arvoar_Rend", 20000, 0)
	pUnit:RegisterEvent("Arvoar_RockShell", 33000, 0)
end

function Arvoar_BellowingRoar(pUnit,Event)
	pUnit:FullCastSpellOnTarget(40636,pUnit:GetClosestPlayer())
end

function Arvoar_Rend(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13443,pUnit:GetClosestPlayer())
end

function Arvoar_RockShell(pUnit,Event)
	pUnit:CastSpell(33810)
end

function Arvoar_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arvoar_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (23267, 1, "Arvoar_OnEnterCombat")
RegisterUnitEvent (23267, 2, "Arvoar_OnLeaveCombat")
RegisterUnitEvent (23267, 4, "Arvoar_OnDied")