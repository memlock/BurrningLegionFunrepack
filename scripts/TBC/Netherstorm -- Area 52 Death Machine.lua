--[[ Netherstorm -- Area 52 Death Machine.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 21th, 2008. ]]

function Machine_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Machine_Rocket",2000,0)
end

function Machine_Rocket(pUnit,Event)
    pUnit:FullCastSpellOnTarget(38083, pUnit:GetClosestPlayer())
end

function Machine_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Machine_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (21976, 1, "Machine_OnEnterCombat")
RegisterUnitEvent (21976, 2, "Machine_OnLeaveCombat")
RegisterUnitEvent (21976, 4, "Machine_OnDied")
