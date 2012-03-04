--[[ Hellfire Peninsula -- Bonechewer Raider.lua

This script was written and is protected
by the GPL v2. This script was released
by BrantX  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BrantX, July, 23th, 2008. ]]

function BCR_OnEnterCombat(pUnit,Event)
	pUnit:CastSpell(32723)
end

RegisterUnitEvent(16925, 1, "BCR_OnEnterCombat")