--[[ 
*******************************************************
*          LASP - LUA AREA SCRIPTING PROJECT          *
*                      License                        *
*******************************************************
This software is provided as free and open source by the
staff of The Lua Area Scripting Project, in accordance with 
the AGPL license. This means we provide the software we have 
created freely and it has been thoroughly tested to work for 
the developers, but NO GUARANTEE is made it will work for you 
as well. Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

Originally made by the MOON++ Team, but the Boss lua scripts are kinda outdated/messy imo, so I have
edited them. They should probaly work now with the new core.
Also got the right SendChatMessages...

Yerney - 5 June 2008 - ZereKeth
--]]

function Zereketh_OnCombat(Unit, Event)
	Unit:SendChatMessage(12, 0, "Life energy to... consume.")
	Unit:RegisterEvent("Zereketh_VoidZone", 10000, 0)
	Unit:RegisterEvent("Zereketh_Corruption", 15000, 0)
	Unit:RegisterEvent("Zereketh_ShadowNova", 23000, 0)
end

function Zereketh_VoidZone(pUnit, Event)
	pUnit:FullCastSpellOnTarget(30533, pUnit:GetRandomPlayer(0))
end

function Zereketh_Corruption(pUnit, Event)
	pUnit:FullCastSpellOnTarget(32863, pUnit:GetRandomPlayer(0))
end

function Zereketh_ShadowNova(pUnit, Event)
	local chatcoin = math.random(1,2)
	if (chatcoin == 1) then
        pUnit:SendChatMessage(12, 0, "The shadow... will engulf you")
	pUnit:FullCastSpell(36127)
       
        elseif (chatcoin == 2) then
	pUnit:SendChatMessage(12, 0, "Darkness...consumes...all")
        pUnit:FullCastSpell(36127)
        end

end
function Zereketh_OnLeaveCombat(Unit, Event)
	Unit:RemoveEvents()
end

function Zereketh_OnDead(Unit, Event)
	Unit:RemoveEvents()
end

function Zereketh_OnKilledTarget(Unit, Event)
	local msgflip2 = math.random(1,2)
        if (msgflip == 1) then
	Unit:SendChatMessage(12, 0, "No...more...life")
	
        elseif (msgflip == 2) then
	Unit:SendChatMessage(12, 0, "This vessel...is empty.")
	end
end

RegisterUnitEvent(20886, 1, "Zereketh_OnCombat")
RegisterUnitEvent(20886, 2, "Zereketh_OnLeaveCombat")
RegisterUnitEvent(20886, 4, "Zereketh_OnDead")