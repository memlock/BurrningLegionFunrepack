--[[ Darknassus -- Arch Druid Fandral Staghelm.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function ArchDruidFandralStaghelm_OnCombat(Unit, Event)
Unit:RegisterEvent("ArchDruidFandralStaghelm_EntanglingRoots", 25000, 0)
Unit:RegisterEvent("ArchDruidFandralStaghelm_Rejuvenation", 35000, 0)
Unit:RegisterEvent("ArchDruidFandralStaghelm_SummonTreantAllies", 4000, 1)
Unit:RegisterEvent("ArchDruidFandralStaghelm_Wrath", 13000, 0)
end

function ArchDruidFandralStaghelm_EntanglingRoots(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20699, pUnit:GetMainTank()) 
end

function ArchDruidFandralStaghelm_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(20701) 
end

function ArchDruidFandralStaghelm_SummonTreantAllies(pUnit, Event) 
pUnit:CastSpell(20702) 
end

function ArchDruidFandralStaghelm_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20698, pUnit:GetMainTank()) 
end

function ArchDruidFandralStaghelm_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ArchDruidFandralStaghelm_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ArchDruidFandralStaghelm_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(3516, 1, "ArchDruidFandralStaghelm_OnCombat")
RegisterUnitEvent(3516, 2, "ArchDruidFandralStaghelm_OnLeaveCombat")
RegisterUnitEvent(3516, 3, "ArchDruidFandralStaghelm_OnKilledTarget")
RegisterUnitEvent(3516, 4, "ArchDruidFandralStaghelm_OnDied")


--[[ Darknassus -- Huntress Leafrunner.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function HuntressLeafrunner_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressLeafrunner_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressLeafrunner_SunderArmor", 8000, 0)
end

function HuntressLeafrunner_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressLeafrunner_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressLeafrunner_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressLeafrunner_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressLeafrunner_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14380, 1, "HuntressLeafrunner_OnCombat")
RegisterUnitEvent(14380, 2, "HuntressLeafrunner_OnLeaveCombat")
RegisterUnitEvent(14380, 3, "HuntressLeafrunner_OnKilledTarget")
RegisterUnitEvent(14380, 4, "HuntressLeafrunner_OnDied")


--[[ Darknassus -- Huntress Ravenoak.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function HuntressRavenoak_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressRavenoak_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressRavenoak_SunderArmor", 8000, 0)
end

function HuntressRavenoak_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressRavenoak_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressRavenoak_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressRavenoak_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressRavenoak_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14379, 1, "HuntressRavenoak_OnCombat")
RegisterUnitEvent(14379, 2, "HuntressRavenoak_OnLeaveCombat")
RegisterUnitEvent(14379, 3, "HuntressRavenoak_OnKilledTarget")
RegisterUnitEvent(14379, 4, "HuntressRavenoak_OnDied")


--[[ Darknassus -- Huntress Skymane.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function HuntressSkymane_OnCombat(Unit, Event)
Unit:RegisterEvent("HuntressSkymane_HookedNet", 13000, 0)
Unit:RegisterEvent("HuntressSkymane_SunderArmor", 8000, 0)
end

function HuntressSkymane_HookedNet(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14030, pUnit:GetMainTank()) 
end

function HuntressSkymane_SunderArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15572, pUnit:GetMainTank()) 
end

function HuntressSkymane_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function HuntressSkymane_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function HuntressSkymane_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(14378, 1, "HuntressSkymane_OnCombat")
RegisterUnitEvent(14378, 2, "HuntressSkymane_OnLeaveCombat")
RegisterUnitEvent(14378, 3, "HuntressSkymane_OnKilledTarget")
RegisterUnitEvent(14378, 4, "HuntressSkymane_OnDied")


--[[ Darknassus -- Tyrande Whisperwind.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 05th, 2008. ]]


function TyrandeWhisperwind_OnCombat(Unit, Event)
Unit:RegisterEvent("TyrandeWhisperwind_Cleave", 12000, 0)
Unit:RegisterEvent("TyrandeWhisperwind_Moonfire", 18000, 0)
Unit:RegisterEvent("TyrandeWhisperwind_SearingArrow", 20000, 0)
Unit:RegisterEvent("TyrandeWhisperwind_Starfall", 25000, 0)
end

function TyrandeWhisperwind_Cleave(pUnit, Event) 
pUnit:CastSpell(20691) 
end

function TyrandeWhisperwind_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20690, pUnit:GetMainTank()) 
end

function TyrandeWhisperwind_SearingArrow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20688, pUnit:GetMainTank()) 
end

function TyrandeWhisperwind_Starfall(pUnit, Event) 
pUnit:CastSpell(20687) 
end

function TyrandeWhisperwind_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TyrandeWhisperwind_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TyrandeWhisperwind_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(7999, 1, "TyrandeWhisperwind_OnCombat")
RegisterUnitEvent(7999, 2, "TyrandeWhisperwind_OnLeaveCombat")
RegisterUnitEvent(7999, 3, "TyrandeWhisperwind_OnKilledTarget")
RegisterUnitEvent(7999, 4, "TyrandeWhisperwind_OnDied")