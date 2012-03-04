--[[ Shattrath City -- A'dal.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 28th, 2008. ]]

function Adal_OnCombat(Unit, Event)
Unit:RegisterEvent("Adal_Ultimate", 1000, 1)
end

function Adal_Ultimate(pUnit, Event) 
pUnit:CastSpell(35076) 
end

function Adal_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Adal_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Adal_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18481, 1, "Adal_OnCombat")
RegisterUnitEvent(18481, 2, "Adal_OnLeaveCombat")
RegisterUnitEvent(18481, 3, "Adal_OnKilledTarget")
RegisterUnitEvent(18481, 4, "Adal_OnDied")

--[[ Shattrath City -- Adyen the Lightwarden.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 28th, 2008. ]]

function Lightwarden_OnCombat(Unit, Event)
Unit:RegisterEvent("Lightwarden_Strike", 6000, 0)
Unit:RegisterEvent("Lightwarden_Hammer", 1000, 0)
Unit:RegisterEvent("Lightwarden_Heal", 7000, 0)
end

function Lightwarden_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14518, pUnit:GetMainTank()) 
end

function Lightwarden_Hammer(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13005, pUnit:GetMainTank()) 
end

function Lightwarden_Heal(pUnit, Event) 
pUnit:CastSpell(13952) 
end

function Lightwarden_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Lightwarden_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Lightwarden_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18537, 1, "Lightwarden_OnCombat")
RegisterUnitEvent(18537, 2, "Lightwarden_OnLeaveCombat")
RegisterUnitEvent(18537, 3, "Lightwarden_OnKilledTarget")
RegisterUnitEvent(18537, 4, "Lightwarden_OnDied")

--[[ Shattrath City -- Aldor Vindicator.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 28th, 2008. ]]

function Vindicator_OnCombat(Unit, Event)
Unit:RegisterEvent("Vindicator_Banish", 7000, 0)
end

function Vindicator_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36642, pUnit:GetMainTank()) 
end

function Vindicator_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Vindicator_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Vindicator_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18549, 1, "Vindicator_OnCombat")
RegisterUnitEvent(18549, 2, "Vindicator_OnLeaveCombat")
RegisterUnitEvent(18549, 3, "Vindicator_OnKilledTarget")
RegisterUnitEvent(18549, 4, "Vindicator_OnDied")

--[[ Shattrath City -- Avatar of Terokk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 28th, 2008. ]]

function Terokk_OnCombat(Unit, Event)
Unit:RegisterEvent("Terokk_Charge", 1000, 1)
Unit:RegisterEvent("Terokk_Burst", 6000, 0)
end

function Terokk_Charge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(24193, pUnit:GetMainTank()) 
end

function Terokk_Burst(pUnit, Event) 
pUnit:FullCastSpellOnTarget(39068, pUnit:GetMainTank()) 
end

function Terokk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Terokk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Terokk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(22375, 1, "Terokk_OnCombat")
RegisterUnitEvent(22375, 2, "Terokk_OnLeaveCombat")
RegisterUnitEvent(22375, 3, "Terokk_OnKilledTarget")
RegisterUnitEvent(22375, 4, "Terokk_OnDied")

--[[ Shattrath City -- Empoor's Bodyguard.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Bodyguard_OnCombat(Unit, Event)
Unit:RegisterEvent("Bodyguard_Demoralize", 10000, 0)
Unit:RegisterEvent("Bodyguard_Rend", 6000, 0)
end

function Bodyguard_Demoralize(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13730, pUnit:GetClosestPlayer()) 
end

function Bodyguard_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11977, pUnit:GetMainTank()) 
end

function Bodyguard_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bodyguard_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bodyguard_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18483, 1, "Bodyguard_OnCombat")
RegisterUnitEvent(18483, 2, "Bodyguard_OnLeaveCombat")
RegisterUnitEvent(18483, 3, "Bodyguard_OnKilledTarget")
RegisterUnitEvent(18483, 4, "Bodyguard_OnDied")

--[[ Shattrath City -- Ironspine Petrifier.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Petrifier_OnCombat(Unit, Event)
Unit:RegisterEvent("Petrifier_Glare", 10000, 0)
end

function Petrifier_Glare(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32905, pUnit:GetMainTank()) 
end

function Petrifier_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Petrifier_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Petrifier_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(21854, 1, "Petrifier_OnCombat")
RegisterUnitEvent(21854, 2, "Petrifier_OnLeaveCombat")
RegisterUnitEvent(21854, 3, "Petrifier_OnKilledTarget")
RegisterUnitEvent(21854, 4, "Petrifier_OnDied")

--[[ Shattrath City -- Minion of Terokk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function MTerokk_OnCombat(Unit, Event)
Unit:RegisterEvent("MTerokk_Dmg", 7000, 0)
end

function MTerokk_Dmg(pUnit, Event) 
pUnit:FullCastSpellOnTarget(38021, pUnit:GetMainTank()) 
end

function MTerokk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MTerokk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MTerokk_OnKilledTarget(Unit, Event) 
Unit:RemoveEvents()
end

RegisterUnitEvent(22376, 1, "MTerokk_OnCombat")
RegisterUnitEvent(22376, 2, "MTerokk_OnLeaveCombat")
RegisterUnitEvent(22376, 3, "MTerokk_OnKilledTarget")
RegisterUnitEvent(22376, 4, "MTerokk_OnDied")

--[[ Shattrath City -- Raliq the Drunk.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Drunk_OnCombat(Unit, Event)
Unit:RegisterEvent("Drunk_Knock", 8000, 0)
end

function Drunk_Knock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10966, pUnit:GetMainTank()) 
end

function Drunk_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Drunk_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Drunk_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18585, 1, "Drunk_OnCombat")
RegisterUnitEvent(18585, 2, "Drunk_OnLeaveCombat")
RegisterUnitEvent(18585, 3, "Drunk_OnKilledTarget")
RegisterUnitEvent(18585, 4, "Drunk_OnDied")

--[[ Shattrath City -- Sal'salabim.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Salsalabim_OnCombat(Unit, Event)
Unit:RegisterEvent("Salsalabim_Pull", 6000, 0)
end

function Salsalabim_Pull(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31705, pUnit:GetMainTank()) 
end

function Salsalabim_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Salsalabim_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Salsalabim_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18584, 1, "Salsalabim_OnCombat")
RegisterUnitEvent(18584, 2, "Salsalabim_OnLeaveCombat")
RegisterUnitEvent(18584, 3, "Salsalabim_OnKilledTarget")
RegisterUnitEvent(18584, 4, "Salsalabim_OnDied")

--[[ Shattrath City -- Scryer Arcane Guardian.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Guardian_OnCombat(Unit, Event)
Unit:RegisterEvent("Guardian_Banish", 10000, 0)
end

function Guardian_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36671, pUnit:GetMainTank()) 
end

function Guardian_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Guardian_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Guardian_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(18568, 1, "Guardian_OnCombat")
RegisterUnitEvent(18568, 2, "Guardian_OnLeaveCombat")
RegisterUnitEvent(18568, 3, "Guardian_OnKilledTarget")
RegisterUnitEvent(18568, 4, "Guardian_OnDied")

--[[ Shattrath City -- Shattrath City Peacekeeper.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Peacekeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("Peacekeeper_Block", 5000, 0)
end

function Peacekeeper_Block(pUnit, Event) 
pUnit:CastSpell(12169) 
end

function Peacekeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Peacekeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Peacekeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(19687, 1, "Peacekeeper_OnCombat")
RegisterUnitEvent(19687, 2, "Peacekeeper_OnLeaveCombat")
RegisterUnitEvent(19687, 3, "Peacekeeper_OnKilledTarget")
RegisterUnitEvent(19687, 4, "Peacekeeper_OnDied")

--[[ Shattrath City -- Vindicator Kaan.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, Oktober, 30th, 2008. ]]

function Kaan_OnCombat(Unit, Event)
Unit:RegisterEvent("Kaan_Banish", 7000, 0)
end

function Kaan_Banish(pUnit, Event) 
pUnit:FullCastSpellOnTarget(36642, pUnit:GetMainTank()) 
end

function Kaan_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Kaan_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Kaan_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23271, 1, "Kaan_OnCombat")
RegisterUnitEvent(23271, 2, "Kaan_OnLeaveCombat")
RegisterUnitEvent(23271, 3, "Kaan_OnKilledTarget")
RegisterUnitEvent(23271, 4, "Kaan_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 
    BlackHer0, Oktober, 30th, 2008. --]]