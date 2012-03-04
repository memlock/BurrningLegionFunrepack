--[[ Hellfire Peninsula -- Bleeding Hollow Necrolyte.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BHN_OnEnterCombat(pUnit,Event)
	pUnit:RegisterEvent("BHN_Fireball", 7000, 0)
	pUnit:RegisterEvent("BHN_Spell", 240000, 0)
end

function BHN_Spell(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34073,pUnit,Event)
end

function BHN_Fireball(pUnit,Event)
	pUnit:FullCastSpellOnTarget(9053,pUnit:GetClosestPlayer())
end

function BHN_Phase(pUnit,Event)
 if pUnit:GetHealthPct() == 75 then 
	pUnit:CastSpell(34019)
end
end

function BHN_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function BHN_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(19422, 1, "BHN_OnEnterCombat")
RegisterUnitEvent(19422, 1, "BHN_Phase")
RegisterUnitEvent(19422, 2, "BHN_OnLeaveCombat")
RegisterUnitEvent(19422, 4, "BHN_OnDied")