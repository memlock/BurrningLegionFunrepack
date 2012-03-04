--[[ Netherstorm -- Felblade Doomguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 29th, 2008. ]]

function Doomguard_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Doomguard_Strike",1000,0)
    pUnit:RegisterEvent("Doomguard_Stomp",1000,0)
end

function Doomguard_Strike(pUnit,Event)
    pUnit:FullCastSpellOnTarget(32736,pUnit:GetClosestPlayer())
end

function Doomguard_Stomp(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35238,pUnit:GetClosestPlayer())
end

function Doomguard_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Doomguard_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (19853, 1, "Doomguard_OnEnterCombat")
RegisterUnitEvent (19853, 2, "Doomguard_OnLeaveCombat")
RegisterUnitEvent (19853, 4, "Doomguard_OnDied")
