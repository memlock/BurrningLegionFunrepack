--[[ Ashenvale -- Twilight Speaker Viktor.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, November, 6th, 2008. ]]


function TwilightSpeakerViktor_OnCombat(Unit, Event)
Unit:RegisterEvent("TwilightSpeakerViktor_Fireball", 7000, 0)
end

function TwilightSpeakerViktor_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(20793, pUnit:GetMainTank()) 
end

function TwilightSpeakerViktor_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function TwilightSpeakerViktor_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function TwilightSpeakerViktor_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(25924, 1, "TwilightSpeakerViktor_OnCombat")
RegisterUnitEvent(25924, 2, "TwilightSpeakerViktor_OnLeaveCombat")
RegisterUnitEvent(25924, 3, "TwilightSpeakerViktor_OnKilledTarget")
RegisterUnitEvent(25924, 4, "TwilightSpeakerViktor_OnDied")