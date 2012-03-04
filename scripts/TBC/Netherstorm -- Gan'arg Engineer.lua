--[[ Netherstorm -- Gan'arg Engineer.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Engineer_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Engineer_Dynamite",1000,0)
end

function Engineer_Dynamite(pUnit,Event)
    pUnit:FullCastSpellOnTarget(7978,pUnit:GetClosestPlayer())
end

function Engineer_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Engineer_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (16948, 1, "Engineer_OnEnterCombat")
RegisterUnitEvent (16948, 2, "Engineer_OnLeaveCombat")
RegisterUnitEvent (16948, 4, "Engineer_OnDied")