--[[ Hellfire Peninsula -- Arcanist Torseldori.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Torseldori_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("Torseldori_ArcaneMissiles", 15000 , 0)
	pUnit:RegisterEvent("Torseldori_Blizzard", 30000, 0)
	pUnit:RegisterEvent("Torseldori_FrostNova", 20000, 0)
	pUnit:RegisterEvent("Torseldori_Frostbolt", 3500, 0)
end

function Torseldori_ArcaneMissiles(pUnit,Event)
	pUnit:FullCastSpellOnTarget(22273,pUnit:GetClosestPlayer())
end

function Torseldori_Blizzard(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33634,pUnit:GetClosestPlayer())
end

function Torseldori_FrostNova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12674,pUnit:GetClosestPlayer())
end

function Torseldori_Frostbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15530,pUnit:GetClosestPlayer())
end

function Torseldori_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Torseldori_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19257, 1, "Torseldori_OnEnterCombat")
RegisterUnitEvent (19257, 2, "Torseldori_OnLeaveCombat")
RegisterUnitEvent (19257, 4, "Torseldori_OnDied")