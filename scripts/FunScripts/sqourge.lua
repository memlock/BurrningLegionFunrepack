function Religence_OnCombat(pUnit, Event)
pUnit:SendChatMessage(14, 0, "The World Shall be Mine!")
pUnit:RegisterEvent("Religence_80", 100, 0)
end

function Religence_OnLeaveCombat(pUnit, Event)
pUnit:RemoveEvents()
end

function Religence_OnKillTarget(pUnit, Event)
pUnit:SendChatMessage(14, 0, "Another Soul....Rise My Minion!")
end

function Religence_OnDeath(pUnit, Event)
pUnit:RemoveEvents()
pUnit:SendChatMessage(14, 0, "I...will....return....even....Stronger!")
pUnit:SendChatMessage(14, 0, "Master! Arise! Avenge my Death!")
end

RegisterUnitEvent(99999, 1, "Religence_OnCombat")
RegisterUnitEvent(99999, 2, "Religence_OnLeaveCombat")
RegisterUnitEvent(99999, 3, "Religence_OnKillTarget")
RegisterUnitEvent(99999, 4, "Religence_OnDeath")

function Religence_Inject_Plague(pUnit, Event)
pUnit:FullCastSpellOnTarget(50356, pUnit:GetRandomPlayer(3))
end

function Religence_Inject_Plaguel(pUnit, Event)
pUnit:FullCastSpellOnTarget(50356, pUnit:GetRandomPlayer(3))
end

function Religence_Inject_Plague2(pUnit, Event)
pUnit:FullCastSpellOnTarget(50356, pUnit:GetRandomPlayer(3))
end

function Religence_Inject_Plague3(pUnit, Event)
pUnit:FullCastSpellOnTarget(50356, pUnit:GetRandomPlayer(3))
end

function Religence_Unholy_Blight(pUnit, Event)
pUnit:FullCastSpellOnTarget(53640, pUnit:GetRandomPlayer(3))
end

function Religence_Desperate_Rage(pUnit, Event)
pUnit:CastSpell(33898)
end

function Religence_Ghoul(pUnit, Event)
local X = pUnit:GetX()
local Y = pUnit:GetY()
local Z = pUnit:GetZ()
local O = pUnit:GetO()
pUnit:SpawnCreature(99998, X, Y, Z, O, 17, 0)
end

function Religence_80(pUnit, Event)
if pUnit:GetHealthPct() <= 80 then
pUnit:RemoveEvents()
pUnit:RegisterEvent("Religence_Inject_Plague", 1, 0)
pUnit:RegisterEvent("Religence_75", 100, 0)
pUnit:SendChatMessage(14, 0, "Let the stench of death choke you!")
end
end

function Religence_75(pUnit, Event)
if pUnit:GetHealthPct() <= 75 then
pUnit:RemoveEvents()
pUnit:RegisterEvent("Religence_Inject_Plaguel", 1, 0)
pUnit:RegisterEvent("Religence_55", 100, 0)
pUnit:SendChatMessage(14, 0, "I shall consume your souls..!")
end
end

function Religence_55(pUnit, Event)
if pUnit:GetHealthPct() <= 55 then
pUnit:RemoveEvents()
pUnit:RegisterEvent("Religence_Inject_Plague2", 1, 0)
pUnit:RegisterEvent("Religence_45", 100, 0)
pUnit:SendChatMessage(14, 0, "Yes....Im Growing Stronger! You Shall Perish!")
end
end

function Religence_45(pUnit, Event)
if pUnit:GetHealthPct() <= 45 then
pUnit:RemoveEvents()
pUnit:RegisterEvent("Religence_Inject_Plague3", 1, 0)
pUnit:RegisterEvent("Religence_30", 100, 0)
pUnit:SendChatMessage(14, 0, "The World....Shall.....End!")
end
end

function Religence_30(pUnit, Event)
if pUnit:GetHealthPct() <= 30 then
pUnit:RemoveEvents()
pUnit:RegisterEvent("Religence_Unholy_Blight", 1, 0)
pUnit:RegisterEvent("Religence_10", 100, 0)
pUnit:SendChatMessage(14, 0, "May Blight consume you!")
end
end

function Religence_10(pUnit, Event)
if pUnit:GetHealthPct() <= 15 then
pUnit:RemoveEvents()
pUnit:RegisterEvent("Religence_Desperate_Rage", math.random(1, 2), 0)
pUnit:SendChatMessage(14, 0, "I am only a soilder... You have bigger concerns....")
end
end
