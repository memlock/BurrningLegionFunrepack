--[[ Terokkar Forest -- Accursed Apparition.lua

This script was written and is protected
by the GPL v2. This script was released
by Mager of the BLUA Scripting Project. 
Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- Mager, July, 27th, 2008. ]]

--playing with the else here if it fails ill simply edit it
-- like most my scripts checks if casting if not then cast the spell
function Ashkaz_ArakkoaBlast(pUnit)
	local casting = pUnit:IsCasting()
	local plr = pUnit:GetClosestPlayer()
	if (casting == false) then
		pUnit:FullCastSpellOnTarget(32907, plr)
	end
	if (casting == true) then
		pUnit:CancelSpell(26098)
	end
end

-- checking for casting not needed cause other spell is instant
function Ashkaz_LightningBolt(pUnit)
	pUnit:FullCastSpellOnTarget(26098)
end

-- gonna make the buff he gives OnCombat til i find further info on it
function Ashkaz_OnEnterCombat(pUnit, event)
	local light = math.random(4300,7300)
	local blast = math.random(8000,15000)
	pUnit:RegisterEvent("Ashkaz_LightningBolt", light, 0)
	pUnit:RegisterEvent("Ashkaz_ArakkoaBlast", blast, 0) --I think it needs limit ill half to think about it
	pUnit:CastSpell(32924)
end

--woot script done
-- Registration
RegisterUnitEvent(18539, 1, "Ashkaz_OnEnterCombat")
