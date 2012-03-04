--[[ Netherstorm -- Kaylaan the Lost.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, August, 2th, 2008. ]]

function Kaylannl_OnEnterCombat(pUnit,Event)
    if pUnit:GetHealthPct() == 99 then
    pUnit:RegisterEvent("Kaylannl_Phase1",1000,0)
end
end
    
function Kaylannl_Phase1(pUnit,Event)
    pUnit:RegisterEvent("Kaylaanl_Ressurection",15000,0)
    pUnit:RegisterEvent("Kaylaanl_Shield",18000,0)
    pUnit:RegisterEvent("Kaylannl_Light",5000,0)
    pUnit:RegisterEvent("Kaylannl_Power",6000,0)
    pUnit:RegisterEvent("Kaylannl_Consecration",6000,0)
    pUnit:RegisterEvent("Kaylannl_Shield2",25000,0)
    pUnit:RegisterEvent("Kaylannl_Heal",7000,0)
    pUnit:RegisterEvent("Kaylannl_Slam",7000,0)
    pUnit:RegisterEvent("Kaylannl_Wrath",25000,0)
    pUnit:RegisterEvent("Kaylannl_Despawn",1000,0)
end

function Kaylannl_Ressurection(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35599,pUnit:GetRandomFriend(0))
end

function Kaylannl_Shield(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37554,pUnit:GetRandomPlayer(0))
end

function Kaylannl_Light(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37552,pUnit:GetMainTank())
end

function Kaylannl_Power(pUnit,Event)
    local plr = pUnit:GetRandomPlayer(0)
		if plr ~= nil then
			pUnit:ChannelSpell(plr:GetGUID(),35597)
    end
end

function Kaylannl_Consecration(pUnit,Event)
    pUnit:CastSpell(37553)
end

function Kaylannl_Shield2(pUnit,Event)
    pUnit:CastSpell(13874)
end

function Kaylannl_Heal(pUnit,Event)
    pUnit:CastSpellOnTarget(37569,pUnit:GetRandomFriend(0))
end

function Kaylannl_Slam(pUnit,Event)
    pUnit:FullCastSpellOnTarget(37572,pUnit:GetMainTank())
end

function Kaylannl_Wrath(pUnit,Event)
    pUnit:FullCastSpellOnTarget(35614,pUnit:GetRandomPlayer(0))
end

function Kaylannl_Despawn(pUnit,Event)
    if pUnit:GetHealthPct() == 25 then
    pUnit:Despawn(5000)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:SpawnCreature(20132, x-1, y, z, o, 14, o)
end
end

function Kaylannl_OnLeaveCombat(pUnit,Event)
	pUnit:RemoveEvents()
end

function Kaylannl_OnDied(pUnit,Event)
	pUnit:RemoveEvents()
end

RegisterUnitEvent (20794, 1, "Kaylannl_OnEnterCombat")
RegisterUnitEvent (20794, 2, "Kaylannl_OnLeaveCombat")
RegisterUnitEvent (20794, 4, "Kaylannl_OnDied")