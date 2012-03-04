--[[ The Barrens -- Engineer Whirleygig.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 2th, 2008. ]]

function EngineerWhirleygig_OnCombat(Unit, Event)
Unit:RegisterEvent("EngineerWhirleygig_CompactHarvestReaper", 4000, 1)
Unit:RegisterEvent("EngineerWhirleygig_ExplosiveSheep", 10000, 1)
end

function EngineerWhirleygig_CompactHarvestReaper(pUnit, Event) 
pUnit:CastSpell(7979) 
end

function EngineerWhirleygig_ExplosiveSheep(pUnit, Event) 
pUnit:CastSpell(8209) 
end

function EngineerWhirleygig_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function EngineerWhirleygig_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function EngineerWhirleygig_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(5836, 1, "EngineerWhirleygig_OnCombat")
RegisterUnitEvent(5836, 2, "EngineerWhirleygig_OnLeaveCombat")
RegisterUnitEvent(5836, 3, "EngineerWhirleygig_OnKilledTarget")
RegisterUnitEvent(5836, 4, "EngineerWhirleygig_OnDied")