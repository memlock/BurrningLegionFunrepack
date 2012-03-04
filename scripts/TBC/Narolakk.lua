--[[ Narolakk.lua
********************************
*                                                            *
* The LUA++ Scripting Project        *
*                                                            *
********************************

This software is provided as free and open source by the
staff of The LUA++ Scripting Project, in accordance with 
the AGPL license. This means we provide the software we have 
created freely and it has been thoroughly tested to work for 
the developers, but NO GUARANTEE is made it will work for you 
as well. Please give credit where credit is due, if modifying,
redistributing and/or using this software. Thank you.

~~End of License Agreement
-- LUA++ staff, March 26, 2008. ]]

--Nalorakk script by Project eXa.

function Nalorakk_OnCombat(Unit, event)
    Unit:PlaySoundToSet(12070)
    Unit:SendChatMessage(13,0,"You be dead soon enough!")
    Unit:RegisterEvent("Nalorakk_Mangle",8000,0)
    Unit:RegisterEvent("Nalorakk_Surge",15001,0)
    Unit:RegisterEvent("Nalorakk_Bear",45000,0)
end

function Nalorakk_Mangle(pUnit, event)
    pUnit:FullCastSpellOnTarget(44955, pUnit:GetMainTank())
end

function Nalorakk_Surge(pUnit, event)
   if (pUnit:GetRandomPlayer(0) ~= nil) then
		pUnit:FullCastSpellOnTarget(42402, pUnit:GetRandomPlayer(0))
		pUnit:PlaySoundToSet(12071)
		pUnit:SendChatMessage(12,0,"I bring da pain!")
   end
end

function Nalorakk_Bear(pUnit, event)
    pUnit:RemoveEvents()
    pUnit:SetModel(719)
    pUnit:PlaySoundToSet(12072)
    pUnit:SendChatMessage(13,0,"You call on da beast, you gonna get more dan you bargain for!")
    pUnit:FullCastSpellOnTarget(42395, pUnit:GetMainTank())
    pUnit:FullCastSpellOnTarget(42397, pUnit:GetMainTank())
    pUnit:RegisterEvent("Nalorakk_BearRoar",7000,0)
    pUnit:RegisterEvent("Nalorakk_Troll",30000,0)
end

function Nalorakk_BearRoar(Unit)
    Unit:CastSpell(42398)
end

function Nalorakk_Troll(Unit, event)
    Unit:RemoveEvents()
    Unit:SetModel(21631)
    Unit:PlaySoundToSet(12073)
    Unit:SendChatMessage(13,0,"Make way for Nalorakk!")
    Unit:RegisterEvent("Nalorakk_Mangle",10000,0)
    Unit:RegisterEvent("Nalorakk_Surge",15001,0)
    Unit:RegisterEvent("Nalorakk_Bear",45000,0)
end

function Nalorakk_OnDied(Unit)   
    Unit:SendChatMessage(13,0,"I... be waitin' on da udda side.... ")
    Unit:PlaySoundToSet(12077)
end

function Nalorakk_OnKilledTarget(Unit)
    Unit:SendChatMessage(13,0,"Now whatchoo got to say?")
    Unit:PlaySoundToSet(12075)
end

function Nalorakk_OnLeaveCombat(Unit)
    Unit:RemoveEvents()
    Unit:SetModel(21631) --Need to run a check to see if the mob is alive, because this event is called when the mob dies to.
end

RegisterUnitEvent(23576,1,"Nalorakk_OnCombat")
RegisterUnitEvent(23576,2,"Nalorakk_OnLeaveCombat")
RegisterUnitEvent(23576,3,"Nalorakk_OnKilledTarget")
RegisterUnitEvent(23576,4,"Nalorakk_OnDied")