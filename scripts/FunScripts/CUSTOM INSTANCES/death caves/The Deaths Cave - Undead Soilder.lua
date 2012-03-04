function Undead_Soilder_EnterCombat(pUnit, event)
local timer1=math.random(1200, 6500)
local RandomYell=math.random(1, 4)
pUnit:RegisterEvent("Rune_of_Destruction", timer1, 1)
if RandomYell==1 then
pUnit:SendChatMessage(12, 0, "Puny living creature! You will never get away with this!")
elseif RandomYell==2 then
pUnit:SendChatMessage(12, 0, "What do you think you´re doing?")
elseif RandomYell==3 then
pUnit:SendChatMessage(12, 0, "Time to die!")
elseif RandomYell==4 then
pUnit:SendChatMessage(12, 0, "You dare to defy the sons of the Lich King?")
end
end

function Rune_of_Destruction(pUnit, event)
local timer2=math.random(12500, 15500)
if (pUnit:GetMainTank() ~= nil) then
pUnit:FullCastSpellOnTarget(52715, pUnit:GetMainTank())
pUnit:RegisterEvent("Rune_of_Destruction", timer2, 0)
end
end

RegisterUnitEvent (515151, 1, "Undead_Soilder_EnterCombat")
