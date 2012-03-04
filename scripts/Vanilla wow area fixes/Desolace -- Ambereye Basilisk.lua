--[[ Desolace -- Ambereye Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 13th, 2008. ]]


function AmbereyeBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("AmbereyeBasilisk_Petrify", 15000, 0)
end

function AmbereyeBasilisk_Petrify(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11020, pUnit:GetMainTank()) 
end

function AmbereyeBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AmbereyeBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AmbereyeBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(11785, 1, "AmbereyeBasilisk_OnCombat")
RegisterUnitEvent(11785, 2, "AmbereyeBasilisk_OnLeaveCombat")
RegisterUnitEvent(11785, 3, "AmbereyeBasilisk_OnKilledTarget")
RegisterUnitEvent(11785, 4, "AmbereyeBasilisk_OnDied")