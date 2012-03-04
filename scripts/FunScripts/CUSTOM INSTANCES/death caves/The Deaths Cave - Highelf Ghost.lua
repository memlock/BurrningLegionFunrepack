
function HighElfGhost_OnCombat(Unit, Event)
Unit:RegisterEvent("HighElfGhost_Frostbolt", 3000, 40)
Unit:RegisterEvent("HighElfGhost_ArcaneNova", 3000, 40)
end

function HighElfGhost_Frostbolt(Unit, Event)
local frostCheck = Unit:GetReandomPlayer(1)
if (frostCheck ~= nil) then
Unit:FullCastSpellOnTarget(46035, Unit:GetRandomPlayer(1))
end
end

function HighElfGhost_ArcaneNova(Unit, Event)
ArcaneFlip=math.random(1, 6)
local arcaneCheck = Unit:GetRandomPlayer(7)
if (arcaneCheck ~= nil) then
if ArcaneFlip==1 then
Unit:FullCastSpellOnTarget(46036, Unit:GetRandomPlayer(7))
else
ArcaneFlip=nil
end
end
end

function HighElfGhost_LeaveCombat(Unit, Event)
Unit:RemoveEvents()
end

function HighElfGhost_Died(Unit, Event)
Unit:RemoveEvents()
end


RegisterUnitEvent(515153, 1, "HighElfGhost_OnCombat")
RegisterUnitEvent(51515153, 2, "HighElfGhost_LeaveCombat")
RegisterUnitEvent(51515153, 4, "HighElfGhost_Died")
