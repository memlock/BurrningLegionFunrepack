--[[ Netherstorm -- Mageslayer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Mageslayer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Mageslayer_Reflection",8000,0)
end

function Mageslayer_Reflection(pUnit,Event)
    pUnit:CastSpell(36096)
end

function Mageslayer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Mageslayer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (18866, 1, "Mageslayer_OnEnterCombat")
RegisterUnitEvent (18866, 2, "Mageslayer_OnLeaveCombat")
RegisterUnitEvent (18866, 4, "Mageslayer_OnDied")