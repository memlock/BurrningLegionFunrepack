local cry_delay = 78000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot1_Setup")
announces[1] = "All my bags are packed, I'm ready to go."

function ExperimentalPilot1_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot1_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot1_Tick", cry_delay, 0)
end


local cry_delay = 86000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew1_Setup")
announces[1] = "The ship's not ready yet. We still need to calibrate the fuse length to make sure that it doesn't burn out and leave you up there alone."

function ExperimentalCrew1_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew1_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew1_Tick", cry_delay, 0)
end


local cry_delay = 94000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot2_Setup")
announces[1] = "You need to do what? All this science, I don't understand ... Look, this is just my job, five days a week."

function ExperimentalPilot2_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot2_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot2_Tick", cry_delay, 0)
end


local cry_delay = 102000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew2_Setup")
announces[1] = "Essentially, it's going to be a long, long time till we are ready to launch. Maybe you should just head back home to your family."

function ExperimentalCrew2_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew2_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew2_Tick", cry_delay, 0)
end

local cry_delay = 110000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot3_Setup")
announces[1] = "I can't. I'm not the man they think I am at home. Besides, I didn't bring them out here."

function ExperimentalPilot3_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot3_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot3_Tick", cry_delay, 0)
end


local cry_delay = 190000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew3_Setup")
announces[1] = "Why not? A family can give you strength."

function ExperimentalCrew3_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew3_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew3_Tick", cry_delay, 0)
end


local cry_delay = 270000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot4_Setup")
announces[1] = "This isn't the kind of place to raise your kids. It's cold, and there'd be no one to raise them."

function ExperimentalPilot4_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot4_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot4_Tick", cry_delay, 0)
end


local cry_delay = 350000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19737, 6, "ExperimentalCrew4_Setup")
announces[1] = "Couldn't you raise them?"

function ExperimentalCrew4_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalCrew4_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalCrew4_Tick", cry_delay, 0)
end


local cry_delay = 430000
local announces = {}
local announcei = 1 
local choice = 1

RegisterUnitEvent(19776, 6, "ExperimentalPilot5_Setup")
announces[1] = "Oh, no, no, no... I'm a rocket man."

function ExperimentalPilot5_Tick(pUnit, Event)
   choice = math.random(1, announcei)
   pUnit:SendChatMessage(12, 0, announces[choice])
end

function ExperimentalPilot5_Setup(pUnit, Event)
   pUnit:RegisterEvent("ExperimentalPilot5_Tick", cry_delay, 0)
end
