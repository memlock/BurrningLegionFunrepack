--[[ Netherstorm -- Doomclaw.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 26th, 2008. ]]

function Doomclaw_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomclaw_Swipe",1000,0)
    pUnit:RegisterEvent("Doomclaw_Claw",1100,0)
    pUnit:RegisterEvent("Doomclaw_Slime",1000,0)
end

function Doomclaw_Swipe(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36205,pUnit:GetClosestPlayer())
end

function Doomclaw_Claw(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36996,pUnit:GetClosestPlayer())
end

function Doomclaw_Slime(pUnit,Event)
    pUnit:FullCastSpellOnTarget(34261,pUnit:GetClosestPlayer())
end

function Doomclaw_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomclaw_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19738, 1, "Doomclaw_OnEnterCombat")
RegisterUnitEvent (19738, 2, "Doomclaw_OnLeaveCombat")
RegisterUnitEvent (19738, 4, "Doomclaw_OnDied")