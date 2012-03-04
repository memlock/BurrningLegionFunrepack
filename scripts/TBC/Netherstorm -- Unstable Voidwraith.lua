--[[ Netherstorm -- Unstable Voidwraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0 of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 27th, 2008. ]]

function Voidwraith_OnCombat(Unit, Event)
Unit:RegisterEvent("Voidwraith_Spawn", 6000, 0)
Unit:RegisterEvent("Voidwraith_Summon", 15000,0)
end

function Voidwraith_Spawn(pUnit, Event) 
pUnit:CastSpell(34302) 
end

function Voidwraith_Summon(pUnit,Event)
    local x = pUnit:GetX()
	local y = pUnit:GetY()
	local z = pUnit:GetZ()
	local o = pUnit:GetO()
    pUnit:CastSpell(36463)
    pUnit:SpawnCreature(17471, x-1, y, z, o, 14, o)
end

function Voidwraith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Voidwraith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Voidwraith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18869, 1, "Voidwraith_OnCombat")
RegisterUnitEvent(18869, 2, "Voidwraith_OnLeaveCombat")
RegisterUnitEvent(18869, 3, "Voidwraith_OnKilledTarget")
RegisterUnitEvent(18869, 4, "Voidwraith_OnDied")