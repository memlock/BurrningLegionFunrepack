--				--
	-- Start function --
--				--

function Mage_OnCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "What do you want!?")
Unit:SetCombatCapable(1)
Unit:SetFaction(35)
Unit:RegisterEvent("Mage_TalkStart1", 1000, 0)
end

--				--
	-- Cinematic --
--				--

function Mage_TalkStart1(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(1)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x, y+5, z, o)
Unit:SendChatMessage(12, 0, "Wait..What!? How!? How are you here... I knew  I should of delt with you myself!")
Unit:RegisterEvent("Mage_TalkStart2", 7000, 0)
end

function Mage_TalkStart2(Unit,Event)
Unit:RemoveEvents()
Unit:StopMovement(2000)
Unit:SetCombatCapable(1)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x, y-5, z, o)
Unit:SendChatMessage(12, 0, "Did you enjoy slaughtering my worthless men?  I would of done it myself if not for that fool Captain..")
Unit:RegisterEvent("Mage_TalkStart3", 9000, 0)
end

function Mage_TalkStart3(Unit,Event)
Unit:RemoveEvents()
Unit:StopMovement(2000)
Unit:SetCombatCapable(1)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x+5, y, z, o)
Unit:SendChatMessage(12, 0, "I was soon to complete my project, but you  worthless runts had to slay Uzkaron!")
Unit:RegisterEvent("Mage_TalkStart4", 9000, 0)
end


function Mage_TalkStart4(Unit,Event)
Unit:RemoveEvents()
Unit:StopMovement(2000)
Unit:SetCombatCapable(1)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x-5, y, z, o)
Unit:SendChatMessage(12, 0, "A pity Krong had to fall to such mortals as  yourself, I would of loved to send the chimp crying to his followers. A God running from myself.. A sight for many indeed.")
Unit:RegisterEvent("Mage_TalkStart5", 10000, 0)
end


function Mage_TalkStart5(Unit,Event)
Unit:RemoveEvents()
Unit:StopMovement(2000)
Unit:SetCombatCapable(1)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x+2, y+2, z, o)
Unit:SendChatMessage(12, 0, "I must say, you did proceed much further than  I anticipated. I must congratulate you on that achievement. Such a tragic  turn of events, though.")
Unit:RegisterEvent("Mage_TalkStart6", 10000, 0)
end


function Mage_TalkStart6(Unit,Event)
Unit:RemoveEvents()
Unit:SetCombatCapable(0)
Unit:SetFaction(14)
x=Unit:GetX()
y=Unit:GetY()
z=Unit:GetZ()
o=Unit:GetO()
Unit:MoveTo(x-2, y-2, z, o)
Unit:SendChatMessage(12, 0, "Enough chat! I must end what those morons  started!")
Unit:RegisterEvent("Mage_Phase1", 1000, 0)
Unit:RegisterEvent("Mage_Spell1", 4000, 0)
Unit:RegisterEvent("Mage_Spell2", 10000, 0)
Unit:RegisterEvent("Mage_Spell3", 13000, 0)
end

function Mage_Phase1(Unit, Event)
if Unit:GetHealthPct() < 90 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Muahaha! Burn! Burn in malicous fire!")
Unit:CastSpell(42945)
Unit:RegisterEvent("Mage_Phase2", 1000, 0)
Unit:RegisterEvent("Mage_1Spell1", 4000, 0)
Unit:RegisterEvent("Mage_1Spell2", 12000, 0)
Unit:RegisterEvent("Mage_1Spell3", 4000, 0)
end
end

function Mage_Phase2(Unit, Event)
if Unit:GetHealthPct() < 75 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "The power of arcane courses through my  veins!")
Unit:CastSpell(46553)
Unit:RegisterEvent("Mage_Phase3", 1000, 0)
Unit:RegisterEvent("Mage_2Spell1", 5000, 0)
Unit:RegisterEvent("Mage_2Spell2", 4000, 0)
Unit:RegisterEvent("Mage_2Spell3", 6000, 0)
end
end

function Mage_Phase3(Unit, Event)
if Unit:GetHealthPct() < 60 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Starting to feel chilly, are we?!")
Unit:CastSpell(39035)
Unit:RegisterEvent("Mage_Phase4", 1000, 0)
Unit:RegisterEvent("Mage_3Spell1", 6000, 1)
Unit:RegisterEvent("Mage_3Spell2", 9000, 0)
Unit:RegisterEvent("Mage_3Spell3", 8000, 0)
end
end

function Mage_Phase4(Unit, Event)
if Unit:GetHealthPct() < 45 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "This drags on far to long, I grow bored with  you..")
Unit:CastSpell(52535)
Unit:RegisterEvent("Mage_Phase5", 1000, 0)
Unit:RegisterEvent("Mage_4Spell1", 20000, 0)
Unit:RegisterEvent("Mage_4Spell2", 10000, 0)
Unit:RegisterEvent("Mage_4Spell3", 6000, 0)
end
end

function Mage_Phase5(Unit, Event)
if Unit:GetHealthPct() < 30 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "Hah! Silly casters.. ")
Unit:CastSpell(31534)
Unit:RegisterEvent("Mage_Phase6", 1000, 0)
Unit:RegisterEvent("Mage_5Spell1", 13000, 0)
Unit:RegisterEvent("Mage_5Spell2", 14000, 0)
Unit:RegisterEvent("Mage_5Spell3", 4000, 0)
end
end

function Mage_Phase6(Unit, Event)
if Unit:GetHealthPct() < 15 then
Unit:RemoveEvents()
Unit:SendChatMessage(14, 0, "ENOUGH!! I shall end this now!")
Unit:CastSpell(29963)
Unit:RegisterEvent("Mage_6Spell1", 120000, 1)
Unit:RegisterEvent("Mage_6Spell2", 20000, 0)
Unit:RegisterEvent("Mage_6Spell3", 9000, 0)
Unit:RegisterEvent("Mage_6Spell4", 10000, 0)
Unit:RegisterEvent("Mage_6Spell4", 25000, 0)
Unit:RegisterEvent("Mage_6Spell5", 5400, 0)
end
end
--			--
	-- Spells --
--			--

function Mage_Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(54095, Unit:GetMainTank())
end

function Mage_Spell2(Unit, Event)
Unit:CastSpell(36876)
end

function Mage_Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(55362, Unit:GetMainTank())
end

function Mage_1Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(37110, Unit:GetRandomPlayer(0))
end

function Mage_1Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(29964, Unit:GetRandomPlayer(0))
end

function Mage_1Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(56934, Unit:GetRandomPlayer(0))
end

function Mage_2Spell1(Unit, Event)
Unit:CastSpell(36481)
end

function Mage_2Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(29956, Unit:GetRandomPlayer(0))
end

function Mage_2Spell3(Unit, Event)
Unit:CastSpell(37106)
end

function Mage_3Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(44572, Unit:GetMainTank())
end

function Mage_3Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(46035, Unit:GetRandomPlayer(0))
end

function Mage_3Spell3(Unit, Event)
Unit:CastSpell(30095)
end

function Mage_4Spell1(Unit, Event)
Unit:FullCastSpellOnTarget(32863, Unit:GetRandomPlayer(0))
end

function Mage_4Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(38913, Unit:GetRandomPlayer(0))
end

function Mage_4Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(41069, Unit:GetMainTank())
end

function Mage_5Spell1(Unit, Event)
Unit:CastSpell(29951)
end

function Mage_5Spell2(Unit, Event)
Unit:CastSpell(40631)
end

function Mage_5Spell3(Unit, Event)
Unit:FullCastSpellOnTarget(47610, Unit:GetMainTank())
end

function Mage_6Spell1(Unit, Event)
Unit:SendChatMessage(14, 0, "Explode!")
Unit:CastSpell(56505)
end

function Mage_6Spell2(Unit, Event)
Unit:FullCastSpellOnTarget(42834, Unit:GetMainTank())
end

function Mage_6Spell3(Unit, Event)
Unit:CastSpell(33061)
end

function Mage_6Spell4(Unit, Event)
Unit:FullCastSpellOnTarget(44781, Unit:GetRandomPlayer(0))
end

function Mage_6Spell5(Unit, Event)
Unit:FullCastSpellOnTarget(42897, Unit:GetMainTank())
end

function Mage_OnLeaveCombat(Unit, Event)
Unit:SendChatMessage(14, 0, "As I thought! Nothing for the likes of me!")
Unit:RemoveEvents() 
end

function Mage_OnKilledTarget(Unit, Event)
Unit:SendChatMessage(14, 0, "Oh the sorrow..")
end

function Mage_OnDied(Unit, Event)
Unit:SendChatMessage(14, 0, "Years of planning... Forgive me master..")
Unit:RemoveEvents()
end

RegisterUnitEvent(133716, 1, "Mage_OnCombat")
RegisterUnitEvent(133716, 2, "Mage_OnLeaveCombat")
RegisterUnitEvent(133716, 3, "Mage_OnKilledTarget")
RegisterUnitEvent(133716, 4, "Mage_OnDied")