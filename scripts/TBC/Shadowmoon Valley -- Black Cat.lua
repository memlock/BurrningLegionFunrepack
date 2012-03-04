--[[ Shadowmoon Valley -- Black Cat.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BlackCat_OnEnterCombat(pUnit,Event)
	pUnit:SendChatMessage(12, 0, "Meow!")
end

function BlackCat_OnDeath(pUnit,Event)
	pUnit:FullCastSpellOnTarget(39477,pUnit:GetClosestPlayer())
end

RegisterUnitEvent(22816, 1, "BlackCat_OnEnterCombat")
RegisterUnitEvent(22816, 4, "BlackCat_OnDeath")