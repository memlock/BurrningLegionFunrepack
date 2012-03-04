--[[ Hellfire Peninsula -- Arazzius The Cruel.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 17th, 2008. ]]

function Arazzius_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(34094)
	pUnit:RegisterEvent("Arazzius_FeebleWeapons", 120000, 0)
	pUnit:RegisterEvent("Arazzius_Inferno", 360000, 0)
	pUnit:RegisterEvent("Arazzius_Pyroblast", 24000, 0)
	pUnit:RegisterEvent("Arazzius_ShadowBoltVolley", 5000, 0)
end

function Arazzius_FeebleWeapons(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34088,pUnit:GetClosestPlayer())
end

function Arazzius_Inferno(pUnit,Event)
	pUnit:FullCastSpellOnTarget(34249,pUnit:GetClosestPlayer())
end

function Arazzius_Pyroblast(pUnit,Event)
	pUnit:FullCastSpellOnTarget(33975,pUnit:GetClosestPlayer())
end

function Arazzius_ShadowBoltVolley(pUnit,Event)
	pUnit:FullCastSpellOnTarget(15245,pUnit:GetClosestPlayer())
end

function Arazzius_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Arazzius_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19191, 1, "Arazzius_OnEnterCombat")
RegisterUnitEvent (19191, 2, "Arazzius_OnLeaveCombat")
RegisterUnitEvent (19191, 4, "Arazzius_OnDied")