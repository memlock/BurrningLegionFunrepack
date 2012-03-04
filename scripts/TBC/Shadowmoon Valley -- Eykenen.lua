--[[ Shadowmoon Valley -- Eykenen.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 30th, 2008. ]]

function Eykenen_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(32734)
	pUnit:RegisterEvent("Eykenen_EarthShield", 43000, 0)
	pUnit:RegisterEvent("Eykenen_EarthShock", 10000, 0)
end

function Eykenen_EarthShield(pUnit,Event)
	pUnit:CastSpell(32734)
end

function Eykenen_EarthShock(pUnit,Event)
	pUnit:FullCastSpellOnTarget(13281,pUnit:GetClosestPlayer())
end

function Eykenen_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Eykenen_OnDeath(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent(21709, 1, "Eykenen_OnEnterCombat")
RegisterUnitEvent(21709, 1, "Eykenen_OnLeaveCombat")
RegisterUnitEvent(21709, 1, "Eykenen_OnDeath")