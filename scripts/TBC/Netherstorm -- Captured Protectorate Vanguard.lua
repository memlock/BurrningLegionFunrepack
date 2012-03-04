--[[ Netherstorm -- Captured Protectorate Vanguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, July, 23th, 2008. ]]

function Captured_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Captured_Glaive",1000,0)
    pUnit:RegisterEvent("Captured_Hamstring",10000,0)
end

function Captured_Glaive(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36500,pUnit:GetClosestPlayer())
end

function Captured_Hamstring(pUnit,Event)
    pUnit:FullCastSpellOnTarget(31553,pUnit:GetClosestPlayer())
end

function Captured_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Captured_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20763, 1, "Captured_OnEnterCombat")
RegisterUnitEvent (20763, 2, "Captured_OnLeaveCombat")
RegisterUnitEvent (20763, 4, "Captured_OnDied")

