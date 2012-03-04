--[[ Netherstorm -- Forgemaster Morug.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Morug_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Morug_Blade",1500,0)
    pUnit:RegisterEvent("Morug_Spray",1000,0)
end

function Morug_Blade(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36228,pUnit:GetClosestPlayer())
end

function Morug_Spray(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34261,pUnit:GetClosestPlayer())
end

function Morug_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Morug_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20800, 1, "Morug_OnEnterCombat")
RegisterUnitEvent (20800, 2, "Morug_OnLeaveCombat")
RegisterUnitEvent (20800, 4, "Morug_OnDied")