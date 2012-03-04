--[[ Netherstorm -- Cyber-Rage Forgelord.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 24th, 2008. ]]

function Forgelord_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Forgelord_Nova",2000,0)
    pUnit:RegisterEvent("Forgelord_Enrage",120000,0)
end

function Forgelord_Nova(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36255, pUnit:GetClosestPlayer())
end

function Forgelord_Enrage(pUnit,Event)
    pUnit:CastSpell(8599)
end

function Forgelord_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Forgelord_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16943, 1, "Forgelord_OnEnterCombat")
RegisterUnitEvent (16943, 2, "Forgelord_OnLeaveCombat")
RegisterUnitEvent (16943, 4, "Forgelord_OnDied")
