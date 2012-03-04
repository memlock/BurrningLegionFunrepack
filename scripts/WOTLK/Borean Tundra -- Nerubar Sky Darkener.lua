--[[ Borean Tundra -- Nerubar Sky Darkener.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, December, 30th, 2008. ]]


function NerubarSkyDarkener_OnCombat(Unit, Event)
Unit:RegisterEvent("NerubarSkyDarkener_VenomSpit", 8000, 0)
Unit:RegisterEvent("NerubarSkyDarkener_WebBolt", 10000, 0)
end

function NerubarSkyDarkener_VenomSpit(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45577, pUnit:GetMainTank()) 
end

function NerubarSkyDarkener_WebBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(45587, pUnit:GetMainTank()) 
end

function NerubarSkyDarkener_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function NerubarSkyDarkener_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function NerubarSkyDarkener_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25451, 1, "NerubarSkyDarkener_OnCombat")
RegisterUnitEvent(25451, 2, "NerubarSkyDarkener_OnLeaveCombat")
RegisterUnitEvent(25451, 3, "NerubarSkyDarkener_OnKilledTarget")
RegisterUnitEvent(25451, 4, "NerubarSkyDarkener_OnDied")