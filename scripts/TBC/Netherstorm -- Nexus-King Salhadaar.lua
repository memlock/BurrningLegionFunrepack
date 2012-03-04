--[[ Netherstorm -- Nexus-King Salhadaar.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, September, 29th, 2008. ]]

function King_OnEnterCombat(pUnit,Event)
    if Unit:GetHealthPct() == 99 then
    pUnit:RegisterEvent("King_Phase1",1000,0)
end
end

function King_Phase1(pUnit,Event)
    pUnit:RegisterEvent("King_Damagebuff",1000,(1))
    pUnit:RegisterEvent("King_Gravity",2500,0)
    pUnit:RegisterEvent("King_Statis",12000,0)
    pUnit:RegisterEvent("King_Phase2",1000,0)
end

function King_Dambagebuff(pUnit,Event)
    pUnit:CastSpell(37075)
end   
   
function King_Gravity(pUnit,Event)
    pUnit:CastSpell(36533)
end

function King_Statis(pUnit,Event)
    pUnit:FullCastSpellOnTarget(36527,pUnit:GetRandomPlayer(0))
    pUnit:FullCastSpellOnTarget(36527,pUnit:GetRandomPlayer(0))
end

function King_Phase2(pUnit,Event)
    if pUnit:GetHealthPct() == 50 then
    pUnit:RegisterEvent("King_Damagebuff",1000,(1))
    pUnit:RegisterEvent("King_Gravity",2500,0)
    pUnit:RegisterEvent("King_Statis",6000,0)
    pUnit:RegisterEvent("King_Mirror1",1000,(1))
    pUnit:RegisterEvent("King_Mirror2",1000,(1))
end
end
    

function King_Mirror1(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36847)
    pUnit:SpawnCreature(21425, x-1, y, z, o, 14, o)
end

function King_Mirror2(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36848)
    pUnit:SpawnCreature(21425, x-1, y, z, o, 14, o)
end
    
function King_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function King_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20454, 1, "King_OnEnterCombat")
RegisterUnitEvent (20454, 2, "King_OnLeaveCombat")
RegisterUnitEvent (20454, 4, "King_OnDied")