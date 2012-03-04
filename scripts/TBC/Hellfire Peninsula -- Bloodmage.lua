--[[ Hellfire Peninsula -- Bloodmage.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function Bloodmage_OnEnterCombat(punit,Event)
	pUnit:RegisterEvent("Bloodmage_Blizzard", 40000, 0)
	pUnit:RegisterEvent("Bloodmage_FrostNova", 13000, 0)
	pUnit:RegisterEvent("Bloodmage_Frostbolt", 7000, 0)
	pUnit:RegisterEvent("Bloodmage_ArcaneMissle", 8000, 0)
end

function Bloodmage_FrostNova(pUnit,Event)
	pUnit:FullCastSpellOnTarget(12674,pUnit:GetClosestPlayer())
end

function Bloodmage_Frostbolt(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15530,pUnit:GetClosestPlayer())
end

function Bloodmage_Blizzard(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33634,pUnit:GetClosestPlayer())
end

function Bloodmage_ArcaneMissle(pUnit,Event)
 if pUnit:GetHealthPct () == 30 then
	pUnit:FullCastSpellOnTarget(22273,pUnit:GetClosestPlayer())
end
end

function Bloodmage_OnLeaveCombat(punit,Event)
	pUnit:RemoveEvents()
end

function Bloodmage_OnDied(punit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19258, 1, "Bloodmage_OnEnterCombat")
RegisterUnitEvent(19258, 2, "Bloodmage_OnLeaveCombat")
RegisterUnitEvent(19258, 4, "Bloodmage_OnDied")