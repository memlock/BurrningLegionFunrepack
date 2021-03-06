
local Conf = {}
-- Wieviele Spieler brauch es pro Team mindestens, damit das Spiel starten kann?
-- Howmany player each team is essential for starting the game?
Conf.MinPlayer = 5
-- Wieviele Tore braucht man, ehe man gewonnen hat?
-- Howmany goals is essential to win the game?
Conf.Goals = 5
-- NPC ID des Balles
-- NPC ID of the Ball
Conf.BallID = 198768
-- NPC ID des Masters
-- NPC ID of the Master
Conf.MasterID = 198767

-- Eckpunkte des Feldes (60[x] x 30[y])
-- corners of the field (60[x] x 30[y])
Conf.Ecke_A = {x = -5121, y = 1088}
Conf.Ecke_B = {x = -5061, y = 1118}

-- Rezzlocations f�r die Teams
-- Rezzlocation for the Teams
Conf.Rezz_A = {x = -5100.198242, y = 1085.230103, z = 386}
Conf.Rezz_B = {x = -5080.903320, y = 1084.947266, z = 386}

-- Belohnung f�r die Gewinner
-- Reward for the Winner
Conf.WinRewardItem = 90001
Conf.WinRewardCount = 3

-- Trostpreis f�r die Verlierer
-- Reward for the Looser
Conf.LooseRewardItem = 90001
Conf.LooseRewardCount = 1

-- Name f�r Team A und B
-- Name of Team A and B
Conf.Team_A_Name = "A"
Conf.Team_B_Name = "B"

-- de = Deutsch; en = english
Conf.Language = "de"

Conf.Lang = {
	de = {
			Run_already = "Du kannst dir das Spiel gerne anschauen. Nehm Platz!",
			Wait_Status = " Team %s Warteschlange: %s \n Team %s Warteschlange: %s",
			Join_Team = "Zu Team %s anmelden",
			Join_Random_Team = "Zu Zufallsteam anmelden",
			Leave_Team = "Abmelden",
			Second_To_Wait = "Noch %s Sekunden",
			Mod_Goal_1 = "Team %s %s : %s Team %s",
			Mod_End_1 = "Das Spiel ist aus, aus .. Team %s hat gewonnen!"},
	en = { 
			Run_already = "The game is already running. Please, sit down and watch the game.",
			Wait_Status = " Team %s player: %s \n Team %s player: %s",
			Join_Team = "Join Team %s ",
			Join_Random_Team = "Join random Team",
			Leave_Team = "Leave",
			Second_To_Wait = "%s seconds",
			Mod_Goal_1 = "Team %s %s : %s Team %s",
			Mod_End_1 = "The game is over! Team %s win the game!"}
		}


----------------------------------------
----- Ab hier nichts weiter �ndern -----
----- Nothing change after this    -----
----------------------------------------

RegisterUnitEvent(Conf.BallID,18,"D_Match_On_Spawn")

RegisterUnitGossipEvent(Conf.MasterID, 1, "D_Match_On_Gossip")
RegisterUnitGossipEvent(Conf.MasterID, 2, "D_Match_On_Select")

local D_Match = {
		Player = {},
		Team_A = {},
		Team_B = {},
		Last_Player = 0,
		Ecke_A = Conf.Ecke_A,
		Ecke_B = Conf.Ecke_B,
		Points_A = 0,
		Points_B = 0,
		Leader = 0,
		Ball = 0,
		Run = false,
		Rezz = {}
				}
				
-- Local functions --

local function D_Match_Clear_Offline(_table)
	for i,ply in pairs(_table) do
		while not ply:IsInWorld() do
			table.remove(_table, i)
			ply = _table[i]
			if ply == nil then break end
		end
	end

	return _table
end

local function D_Match_Check_Movement(x, y, addx, addy)

	local multix = 1
	local multiy = 1
	
	if x + addx > D_Match.Ecke_B.x then
		multix = addx/(x - D_Match.Ecke_B.x)
	elseif x + addx < D_Match.Ecke_A.x then
		multix = addx/(D_Match.Ecke_A.x - x)
	end

	if y + addy > D_Match.Ecke_B.y then
		multiy = addy/(D_Match.Ecke_B.y - y)
	elseif y + addy < D_Match.Ecke_A.y then
		multiy = addy/(y - D_Match.Ecke_A.y)
	end

	local multi = math.max(math.abs(multix), math.abs(multiy))

	return addx/multi, addy/multi

end

local function D_Match_Event(Event, Addition)

	if Event == "goal" then
	    D_Match.Leader:SendChatMessage(14, 0, string.format(Conf.Lang[Conf.Language].Mod_Goal_1, Conf.Team_A_Name, D_Match.Points_A, D_Match.Points_B, Conf.Team_B_Name))

	    --Torsch�tze D_Match.Last_Player

        if D_Match.Points_A >= Conf.Goals then
            D_Match_Event("end", Addition)
            return
		elseif D_Match.Points_B >= Conf.Goals then
            D_Match_Event("end", Addition)
            return
		end
		
		D_Match_Event("unreg_ball")
		D_Match_Event("spawn_ball", D_Match.Leader)
		D_Match_Event("spawn_player", D_Match.Leader)
		
	elseif Event == "player_change" then
		if math.random() > 0.7 then
			D_Match.Leader:SpawnGameObject(185466, Addition:GetX(), Addition:GetY(), Addition:GetZ(), 0, 10000)
		end		    	
	elseif Event == "end" then
	    D_Match.Leader:SendChatMessage(14, 0, string.format(Conf.Lang[Conf.Language].Mod_End_1, Addition))
  		D_Match_Event("unreg_ball")
        D_Match.Player = {}
        
        if Addition == Conf.Team_A_Name then
        	Win = D_Match.Team_A
        	Loose = D_Match.Team_B
        else
        	Win = D_Match.Team_B
        	Loose = D_Match.Team_A
        end
		
		for _,ply in pairs(Win) do
        	if ply:IsInWorld() then
        		ply:AddItem(Conf.WinRewardItem, Conf.WinRewardCount)
        	end
        end
        for _,ply in pairs(Loose) do
        	if ply:IsInWorld() then
        		ply:AddItem(Conf.LooseRewardItem, Conf.LooseRewardCount)
        	end
        end
        
		D_Match.Team_A = {}
		D_Match.Team_B = {}
		D_Match.Last_Player = 0
		D_Match.Points_A = 0
		D_Match.Points_B = 0
		D_Match.Ball = 0
		D_Match.Run = false
	elseif Event == "start" then

  		D_Match_Event("spawn_ball", Addition)
		D_Match.Leader = Addition
		D_Match_Event("spawn_player", Addition)
		
		D_Match_Event("firework", "blau")

		D_Match.Run = true
	elseif Event == "unreg_ball" then
		if D_Match.Ball then
			D_Match.Ball:RemoveEvents()
			D_Match.Ball:Despawn(1,0)
		end
	elseif Event == "spawn_ball" then
	
	    local x = D_Match.Ecke_A.x + 30
	    local y = D_Match.Ecke_A.y + 15
	    local z = Addition:GetZ()+3
	
	    D_Match.Ball = Addition:SpawnCreature(Conf.BallID, x, y, z, 0, 35, 600000)
	elseif Event == "spawn_player" then
	
	    local x = D_Match.Ecke_A.x
	    local y = D_Match.Ecke_A.y
	    local z = Addition:GetZ()+5
	    local mapid = Addition:GetMapId()
			    
		for _,ply in pairs(D_Match.Team_A) do
			if ply:IsInWorld() then
			    ply:Teleport(mapid, x, y+15+math.random(-5,5), z, 0)
			end
		end
		
		for _,ply in pairs(D_Match.Team_B) do
			if ply:IsInWorld() then
			    ply:Teleport(mapid, x+60, y+15+math.random(-5,5), z, 3)
			end
		end
	elseif Event == "firework" then
		for a = D_Match.Ecke_A.x, D_Match.Ecke_B.x, 2 do
			D_Match.Leader:SpawnGameObject(181852, a, D_Match.Ecke_B.y, D_Match.Leader:GetZ(), 1, 5000)
            D_Match.Leader:SpawnGameObject(181852, a, D_Match.Ecke_A.y, D_Match.Leader:GetZ(), 1, 5000)
        end
        
        for a = D_Match.Ecke_A.y, D_Match.Ecke_B.y, 2 do
			D_Match.Leader:SpawnGameObject(181852, D_Match.Ecke_A.x, a, D_Match.Leader:GetZ(), 1, 5000)
            D_Match.Leader:SpawnGameObject(181852, D_Match.Ecke_B.x, a, D_Match.Leader:GetZ(), 1, 5000)
        end
    else
    	print("behandeltes Event - "..Event)
    end
    
end

local function D_Match_Start_Check(Unit)
	if table.getn(D_Match.Team_A) >= Conf.MinPlayer and table.getn(D_Match.Team_B) >= Conf.MinPlayer then
	    D_Match_Event("start", Unit)
	end
end

-- Register --

function D_Match_On_Gossip(Unit,_,Player)

	if D_Match.Run then 
		Unit:SendChatMessage(12, 0, Conf.Lang[Conf.Language].Run_already)
		return 
	end

	local Text = string.format(Conf.Lang[Conf.Language].Wait_Status, Conf.Team_A_Name, table.getn(D_Match.Team_A), Conf.Team_B_Name, table.getn(D_Match.Team_B))

	if table.find(D_Match.Player, Player) then
	    entry.AddGossipMenu(Unit, Player, {Conf.Lang[Conf.Language].Leave_Team, 1, Text, 2})
	else
	    entry.AddGossipMenu(Unit, Player, {string.format(Conf.Lang[Conf.Language].Join_Team, Conf.Team_A_Name), 3,
										   string.format(Conf.Lang[Conf.Language].Join_Team, Conf.Team_B_Name), 4,
										   Conf.Lang[Conf.Language].Join_Random_Team, 5,
										   Text, 2})
	end
	
end

function D_Match_On_Select(Unit,_,Player,_,id)

	if id == 1 then
		local i = table.find(D_Match.Player, Player)
		if i then
		    table.remove(D_Match.Player, i)
			i = table.find(D_Match.Team_A, Player)
			if i then
			    table.remove(D_Match.Team_A, i)
			else
			    i = table.find(D_Match.Team_B, Player)
			    if i then
			        table.remove(D_Match.Team_B, i)
				end
			end
		end
	elseif id == 2 then
		Player:SendBroadcastMessage(string.format(Conf.Lang[Conf.Language].Wait_Status, Conf.Team_A_Name, table.getn(D_Match.Team_A), Conf.Team_B_Name, table.getn(D_Match.Team_B)))
	elseif id == 3 then
	    table.insert(D_Match.Team_A, Player)
	    D_Match.Team_A = D_Match_Clear_Offline(D_Match.Team_A)
	    table.insert(D_Match.Player, Player)
        D_Match.Player = D_Match_Clear_Offline(D_Match.Player)
        D_Match_Start_Check(Unit)
	elseif id == 4 then
	    table.insert(D_Match.Team_B, Player)
	    D_Match.Team_B = D_Match_Clear_Offline(D_Match.Team_B)
	    table.insert(D_Match.Player, Player)
	    D_Match.Player = D_Match_Clear_Offline(D_Match.Player)
	    D_Match_Start_Check(Unit)
	elseif id == 5 then
        D_Match_On_Select(Unit,_,Player,_,math.random(3,4))
	elseif id == 6 then
		D_Match_Event("start", Unit)
	end
	
	Player:GossipComplete()

end


-- Game Handle --

function D_Match_On_Spawn(Unit)
	Unit:RegisterEvent("D_Match_Move_Check", 500, 0)
end

function D_Match_Move_Check(Unit)

	for _,ply in pairs(Unit:GetInRangePlayers()) do
		if not table.find(D_Match.Rezz, ply, 1) then
			if ply:GetHealthPct() == 0 then
				if table.find(D_Match.Team_A, ply) then
					ply:Teleport(Unit:GetMapId(), Conf.Rezz_A.x, Conf.Rezz_A.y, Conf.Rezz_A.z, 0)
				else
					ply:Teleport(Unit:GetMapId(), Conf.Rezz_B.x, Conf.Rezz_B.y, Conf.Rezz_B.z, 0)
				end
				table.insert(D_Match.Rezz, {ply, 20})
			end
		end
	end
	
	for i,ply in pairs(D_Match.Rezz) do
		D_Match.Rezz[i][2] = ply[2] - 1
		if ply[2] - 1 <= 0 then
			ply[1]:ResurrectPlayer()
			table.remove(D_Match.Rezz, i)
		else
			if math.iseven(ply[2]) then
				ply[1]:SendBroadcastMessage(string.format(Conf.Lang[Conf.Language].Second_To_Wait, ply[2]/2))
			end
		end
	end	

	local ux = Unit:GetX()
	local uy = Unit:GetY()
	
	if math.between(D_Match.Ecke_B.y-10, D_Match.Ecke_A.y+10, uy) then
		if ux < D_Match.Ecke_A.x+2 then
			D_Match.Points_A = D_Match.Points_A + 1
			D_Match_Event("goal", "A")
			return
		elseif ux > D_Match.Ecke_B.x-2 then                               
			D_Match.Points_B = D_Match.Points_B + 1
			D_Match_Event("goal", "B")
			return
		end
	end
	
	local Player = Unit:GetClosestPlayer()
	if table.find(D_Match.Player, Player) then
	    local Dist = entry.GetDistance(Player, ux, uy)
	    
		if Dist < 3 and Dist > 0 then
		
		    if D_Match.Last_Player ~= Player then
               D_Match_Event("player_change", Player)
               D_Match.Last_Player = Player
			end

			local xmove = (ux - Player:GetX())
			local ymove = (uy - Player:GetY())

			local c = (xmove^2 + ymove^2)^0.5
			local multi = c/(7-(Dist*2))
			xmove = xmove/multi
			ymove = ymove/multi
			
			xmove, ymove = D_Match_Check_Movement(ux, uy, xmove, ymove)

	        Unit:MoveTo(ux + xmove, uy + ymove, Player:GetZ(), 0)
		end
	end
	
end