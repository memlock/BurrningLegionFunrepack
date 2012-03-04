--[[ Netherstorm -- Overseer Seylanna.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function Seylanna_OnEnterCombat(pUnit,Event)
    pUnit:RegisterEvent("Seylanna_Crystal",2000,0)
    pUnit:RegisterEvent("Seylanna_Beam",4000,0)
end

function Seylanna_Crystal(pUnit,Event)
    pUnit:CastSpell(36179)
end   
   
function Seylanna_Beam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35919,pUnit:GetClosestPlayer())
end
    
function Seylanna_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Seylanna_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20397, 1, "Seylanna_OnEnterCombat")
RegisterUnitEvent (20397, 2, "Seylanna_OnLeaveCombat")
RegisterUnitEvent (20397, 4, "Seylanna_OnDied")