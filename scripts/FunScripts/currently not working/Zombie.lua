-- Zombie effect get's applyed on other zombie's death , you can change this for enter combat or any other shit you want, this here is just basic function 
local ZombieId = 50000 -- Change this for ID you want
local HealerId = 50001 -- Change this for ID you wan

RegisterUnitEvent(ZombieId, 4, "Zombie_Death")
RegisterUnitEvent(HealerId, 6, "Argent_OnSpawn") -- From server resetes :)

function Zombie_Death(pUnit, event, player)
	pUnit:FullCastSpellOnTarget(43869,pUnit:GetMainTank())
	--pUnit:FullCastSpellOnTarget(43958,pUnit:GetMainTank())    -- If ya want extra effects :)
	--pUnit:SendChatMessage(12, 0,"You are infected! (Noob don't kill me next time!")
	local plr = pUnit:GetMainTank()
		if type(plr) == "userdata" then
			plr:SetFaction(1634)
		else
			pUnit:SetFaction(1634) 
	end
end

function Argent_OnSpawn(pUnit, event, player)
	pUnit:RegisterEvent("Argent_Healer", 14000, 1)
end	

function Argent_Healer(pUnit, event, player * plr)
	if pUnit:GetInRangePlayerCount() >= 1 then
		local plr = pUnit:GetRandomPlayer(0)
		local pAura = plr:HasAura(43958)
		local player = type(plr) == "userdata" 
			if pPlayer and pAura then
				pUnit:RegisterEvent("RemoveAura",1,1)
			else
				pUnit:RegisterEvent("Argent_Healer", 14000, 1)
			end
	else
		pUnit:RegisterEvent("Argent_Healer", 14000, 1)
	end	
end

function RemoveAura(pUnit, event, player)
	pUnit:RemoveAura(43958)
	pUnit:RemoveEvents()
	pUnit:RegisterEvent("Argent_Healer", 14000, 1)
end	
