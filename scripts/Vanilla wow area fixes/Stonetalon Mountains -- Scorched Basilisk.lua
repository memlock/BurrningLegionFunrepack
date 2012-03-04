--[[ Stonetalon Mountains -- Scorched Basilisk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]

function ScorchedBasilisk_OnCombat(Unit, Event)
Unit:RegisterEvent("ScorchedBasilisk_CrystallineSlumber", 15000, 1)
end

function ScorchedBasilisk_CrystallineSlumber(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3636, pUnit:GetMainTank()) 
end

function ScorchedBasilisk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ScorchedBasilisk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ScorchedBasilisk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(4041, 1, "ScorchedBasilisk_OnCombat")
RegisterUnitEvent(4041, 2, "ScorchedBasilisk_OnLeaveCombat")
RegisterUnitEvent(4041, 3, "ScorchedBasilisk_OnKilledTarget")
RegisterUnitEvent(4041, 4, "ScorchedBasilisk_OnDied")