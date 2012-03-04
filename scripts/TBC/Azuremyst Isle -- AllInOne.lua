--[[ Azuremyst Isle -- "Cookie" McWeaksauce.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function CookieMcWeaksauce_OnCombat(Unit, Event)
Unit:RegisterEvent("CookieMcWeaksauce_Shoot", 6000, 0)
end

function CookieMcWeaksauce_Shoot(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30221, pUnit:GetRandomPlayer(0)) 
end

function CookieMcWeaksauce_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function CookieMcWeaksauce_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function CookieMcWeaksauce_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17246, 1, "CookieMcWeaksauce_OnCombat")
RegisterUnitEvent(17246, 2, "CookieMcWeaksauce_OnLeaveCombat")
RegisterUnitEvent(17246, 3, "CookieMcWeaksauce_OnKilledTarget")
RegisterUnitEvent(17246, 4, "CookieMcWeaksauce_OnDied")


--[[ Azuremyst Isle -- Aberrant Owlbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function AberrantOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("AberrantOwlbeast_Moonfire", 6000, 0)
end

function AberrantOwlbeast_Moonfire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31270, pUnit:GetRandomPlayer(0)) 
end

function AberrantOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AberrantOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AberrantOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17187, 1, "AberrantOwlbeast_OnCombat")
RegisterUnitEvent(17187, 2, "AberrantOwlbeast_OnLeaveCombat")
RegisterUnitEvent(17187, 3, "AberrantOwlbeast_OnKilledTarget")
RegisterUnitEvent(17187, 4, "AberrantOwlbeast_OnDied")


--[[ Azuremyst Isle -- Barbed Crawler.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BarbedCrawler_OnCombat(Unit, Event)
Unit:RegisterEvent("BarbedCrawler_Thorns", 2000, 2)
end

function BarbedCrawler_Thorns(pUnit, Event) 
pUnit:CastSpell(31271) 
end

function BarbedCrawler_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BarbedCrawler_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BarbedCrawler_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17217, 1, "BarbedCrawler_OnCombat")
RegisterUnitEvent(17217, 2, "BarbedCrawler_OnLeaveCombat")
RegisterUnitEvent(17217, 3, "BarbedCrawler_OnKilledTarget")
RegisterUnitEvent(17217, 4, "BarbedCrawler_OnDied")


--[[ Azuremyst Isle -- Blood Elf Bandit.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BloodElfBandit_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfBandit_Eviscerate", 10000, 0)
Unit:RegisterEvent("BloodElfBandit_SinisterStrike", 4000, 0)
end

function BloodElfBandit_Eviscerate(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15691, pUnit:GetMainTank()) 
end

function BloodElfBandit_SinisterStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(14873, pUnit:GetMainTank()) 
end

function BloodElfBandit_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfBandit_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfBandit_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17591, 1, "BloodElfBandit_OnCombat")
RegisterUnitEvent(17591, 2, "BloodElfBandit_OnLeaveCombat")
RegisterUnitEvent(17591, 3, "BloodElfBandit_OnKilledTarget")
RegisterUnitEvent(17591, 4, "BloodElfBandit_OnDied")


--[[ Azuremyst Isle -- Blood Elf Scout.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BloodElfScout_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodElfScout_FaerieFire", 8000, 0)
end

function BloodElfScout_FaerieFire(pUnit, Event) 
pUnit:FullCastSpellOnTarget(25602, pUnit:GetMainTank()) 
end

function BloodElfScout_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodElfScout_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodElfScout_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16521, 1, "BloodElfScout_OnCombat")
RegisterUnitEvent(16521, 2, "BloodElfScout_OnLeaveCombat")
RegisterUnitEvent(16521, 3, "BloodElfScout_OnKilledTarget")
RegisterUnitEvent(16521, 4, "BloodElfScout_OnDied")


--[[ Azuremyst Isle -- Bristlelimb Windcaller.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function BristlelimbWindcaller_OnCombat(Unit, Event)
Unit:RegisterEvent("BristlelimbWindcaller_Rejuvenation", 13000, 0)
Unit:RegisterEvent("BristlelimbWindcaller_WindShock", 8000, 0)
end

function BristlelimbWindcaller_Rejuvenation(pUnit, Event) 
pUnit:CastSpell(32131) 
end

function BristlelimbWindcaller_WindShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31272, pUnit:GetMainTank()) 
end

function BristlelimbWindcaller_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BristlelimbWindcaller_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BristlelimbWindcaller_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17184, 1, "BristlelimbWindcaller_OnCombat")
RegisterUnitEvent(17184, 2, "BristlelimbWindcaller_OnLeaveCombat")
RegisterUnitEvent(17184, 3, "BristlelimbWindcaller_OnKilledTarget")
RegisterUnitEvent(17184, 4, "BristlelimbWindcaller_OnDied")


--[[ Azuremyst Isle -- Chieftain Oomooroo.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function ChieftainOomooroo_OnCombat(Unit, Event)
Unit:RegisterEvent("ChieftainOomooroo_Enrage", 10000, 1)
Unit:RegisterEvent("ChieftainOomooroo_Strike", 6000, 0)
end

function ChieftainOomooroo_Enrage(pUnit, Event) 
pUnit:CastSpell(18501) 
end

function ChieftainOomooroo_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13446, pUnit:GetMainTank()) 
end

function ChieftainOomooroo_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ChieftainOomooroo_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ChieftainOomooroo_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17448, 1, "ChieftainOomooroo_OnCombat")
RegisterUnitEvent(17448, 2, "ChieftainOomooroo_OnLeaveCombat")
RegisterUnitEvent(17448, 3, "ChieftainOomooroo_OnKilledTarget")
RegisterUnitEvent(17448, 4, "ChieftainOomooroo_OnDied")


--[[ Azuremyst Isle -- Death Ravager.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function DeathRavager_OnCombat(Unit, Event)
Unit:RegisterEvent("DeathRavager_EnragingBite", 10000, 0)
Unit:RegisterEvent("DeathRavager_Rend", 8000, 0)
end

function DeathRavager_EnragingBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(30736, pUnit:GetMainTank()) 
end

function DeathRavager_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function DeathRavager_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function DeathRavager_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function DeathRavager_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17556, 1, "DeathRavager_OnCombat")
RegisterUnitEvent(17556, 2, "DeathRavager_OnLeaveCombat")
RegisterUnitEvent(17556, 3, "DeathRavager_OnKilledTarget")
RegisterUnitEvent(17556, 4, "DeathRavager_OnDied")


--[[ Azuremyst Isle -- Hauteur.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function Hauteur_OnCombat(Unit, Event)
Unit:RegisterEvent("Hauteur_FireShield", 2000, 1)
Unit:RegisterEvent("Hauteur_FlameShock", 6000, 0)
end

function Hauteur_FireShield(pUnit, Event) 
pUnit:CastSpell(134) 
end

function Hauteur_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(8050, pUnit:GetMainTank()) 
end

function Hauteur_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Hauteur_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Hauteur_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17206, 1, "Hauteur_OnCombat")
RegisterUnitEvent(17206, 2, "Hauteur_OnLeaveCombat")
RegisterUnitEvent(17206, 3, "Hauteur_OnKilledTarget")
RegisterUnitEvent(17206, 4, "Hauteur_OnDied")


--[[ Azuremyst Isle -- Moongraze Buck.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function MoongrazeBuck_OnCombat(Unit, Event)
Unit:RegisterEvent("MoongrazeBuck_Knockdown", 7000, 0)
end

function MoongrazeBuck_Knockdown(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31274, pUnit:GetMainTank()) 
end

function MoongrazeBuck_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MoongrazeBuck_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MoongrazeBuck_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17201, 1, "MoongrazeBuck_OnCombat")
RegisterUnitEvent(17201, 2, "MoongrazeBuck_OnLeaveCombat")
RegisterUnitEvent(17201, 3, "MoongrazeBuck_OnKilledTarget")
RegisterUnitEvent(17201, 4, "MoongrazeBuck_OnDied")


--[[ Azuremyst Isle -- Queldorei Magewraith.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function QueldoreiMagewraith_OnCombat(Unit, Event)
Unit:RegisterEvent("QueldoreiMagewraith_ArcaneBolt", 6000, 0)
Unit:RegisterEvent("QueldoreiMagewraith_Counterspell", 14000, 0)
Unit:RegisterEvent("QueldoreiMagewraith_Fireball", 8000, 0)
Unit:RegisterEvent("QueldoreiMagewraith_Slow", 4000, 1)
end

function QueldoreiMagewraith_ArcaneBolt(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31595, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_Counterspell(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31596, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11921, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_Slow(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11436, pUnit:GetMainTank()) 
end

function QueldoreiMagewraith_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function QueldoreiMagewraith_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function QueldoreiMagewraith_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17612, 1, "QueldoreiMagewraith_OnCombat")
RegisterUnitEvent(17612, 2, "QueldoreiMagewraith_OnLeaveCombat")
RegisterUnitEvent(17612, 3, "QueldoreiMagewraith_OnKilledTarget")
RegisterUnitEvent(17612, 4, "QueldoreiMagewraith_OnDied")


--[[ Azuremyst Isle -- Ravager Specimen.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function RavagerSpecimen_OnCombat(Unit, Event)
Unit:RegisterEvent("RavagerSpecimen_Rend", 8000, 0)
end

function RavagerSpecimen_Rend(pUnit, Event) 
pUnit:FullCastSpellOnTarget(13443, pUnit:GetMainTank()) 
end

function RavagerSpecimen_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RavagerSpecimen_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RavagerSpecimen_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17199, 1, "RavagerSpecimen_OnCombat")
RegisterUnitEvent(17199, 2, "RavagerSpecimen_OnLeaveCombat")
RegisterUnitEvent(17199, 3, "RavagerSpecimen_OnKilledTarget")
RegisterUnitEvent(17199, 4, "RavagerSpecimen_OnDied")


--[[ Azuremyst Isle -- Raving Owlbeast.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function RavingOwlbeast_OnCombat(Unit, Event)
Unit:RegisterEvent("RavingOwlbeast_Enrage", 10000, 1)
end

function RavingOwlbeast_Enrage(pUnit, Event) 
pUnit:CastSpell(8599) 
end

function RavingOwlbeast_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function RavingOwlbeast_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function RavingOwlbeast_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17188, 1, "RavingOwlbeast_OnCombat")
RegisterUnitEvent(17188, 2, "RavingOwlbeast_OnLeaveCombat")
RegisterUnitEvent(17188, 3, "RavingOwlbeast_OnKilledTarget")
RegisterUnitEvent(17188, 4, "RavingOwlbeast_OnDied")


--[[ Azuremyst Isle -- Siltfin Hunter.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function SiltfinHunter_OnCombat(Unit, Event)
Unit:RegisterEvent("SiltfinHunter_Throw", 4000, 0)
end

function SiltfinHunter_Throw(pUnit, Event) 
pUnit:FullCastSpellOnTarget(10277, pUnit:GetMainTank()) 
end

function SiltfinHunter_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SiltfinHunter_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SiltfinHunter_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17192, 1, "SiltfinHunter_OnCombat")
RegisterUnitEvent(17192, 2, "SiltfinHunter_OnLeaveCombat")
RegisterUnitEvent(17192, 3, "SiltfinHunter_OnKilledTarget")
RegisterUnitEvent(17192, 4, "SiltfinHunter_OnDied")


--[[ Azuremyst Isle -- Siltfin Oracle.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function SiltfinOracle_OnCombat(Unit, Event)
Unit:RegisterEvent("SiltfinOracle_LightningShield", 5000, 0)
Unit:RegisterEvent("SiltfinOracle_Wrath", 8000, 0)
end

function SiltfinOracle_LightningShield(pUnit, Event) 
pUnit:CastSpell(12550) 
end

function SiltfinOracle_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9739, pUnit:GetMainTank()) 
end

function SiltfinOracle_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SiltfinOracle_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SiltfinOracle_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17191, 1, "SiltfinOracle_OnCombat")
RegisterUnitEvent(17191, 2, "SiltfinOracle_OnLeaveCombat")
RegisterUnitEvent(17191, 3, "SiltfinOracle_OnKilledTarget")
RegisterUnitEvent(17191, 4, "SiltfinOracle_OnDied")


--[[ Azuremyst Isle -- Surveyor Candress.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function SurveyorCandress_OnCombat(Unit, Event)
Unit:RegisterEvent("SurveyorCandress_Fireball", 8000, 0)
end

function SurveyorCandress_Fireball(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9487, pUnit:GetMainTank()) 
end

function SurveyorCandress_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function SurveyorCandress_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function SurveyorCandress_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(16522, 1, "SurveyorCandress_OnCombat")
RegisterUnitEvent(16522, 2, "SurveyorCandress_OnLeaveCombat")
RegisterUnitEvent(16522, 3, "SurveyorCandress_OnKilledTarget")
RegisterUnitEvent(16522, 4, "SurveyorCandress_OnDied")


--[[ Azuremyst Isle -- Warlord Srisstiz.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WarlordSrisstiz_OnCombat(Unit, Event)
Unit:RegisterEvent("WarlordSrisstiz_WateryStrike", 6000, 0)
end

function WarlordSrisstiz_WateryStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31275, pUnit:GetMainTank()) 
end

function WarlordSrisstiz_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WarlordSrisstiz_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WarlordSrisstiz_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17298, 1, "WarlordSrisstiz_OnCombat")
RegisterUnitEvent(17298, 2, "WarlordSrisstiz_OnLeaveCombat")
RegisterUnitEvent(17298, 3, "WarlordSrisstiz_OnKilledTarget")
RegisterUnitEvent(17298, 4, "WarlordSrisstiz_OnDied")


--[[ Azuremyst Isle -- Wrathscale Myrmidon.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WrathscaleMyrmidon_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleMyrmidon_Strike", 6000, 0)
end

function WrathscaleMyrmidon_Strike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(11976, pUnit:GetMainTank()) 
end

function WrathscaleMyrmidon_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleMyrmidon_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleMyrmidon_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17194, 1, "WrathscaleMyrmidon_OnCombat")
RegisterUnitEvent(17194, 2, "WrathscaleMyrmidon_OnLeaveCombat")
RegisterUnitEvent(17194, 3, "WrathscaleMyrmidon_OnKilledTarget")
RegisterUnitEvent(17194, 4, "WrathscaleMyrmidon_OnDied")


--[[ Azuremyst Isle -- Wrathscale Naga.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WrathscaleNaga_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleNaga_Hamstring", 8000, 0)
end

function WrathscaleNaga_Hamstring(pUnit, Event) 
pUnit:FullCastSpellOnTarget(9080, pUnit:GetMainTank()) 
end

function WrathscaleNaga_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleNaga_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleNaga_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17193, 1, "WrathscaleNaga_OnCombat")
RegisterUnitEvent(17193, 2, "WrathscaleNaga_OnLeaveCombat")
RegisterUnitEvent(17193, 3, "WrathscaleNaga_OnKilledTarget")
RegisterUnitEvent(17193, 4, "WrathscaleNaga_OnDied")


--[[ Azuremyst Isle -- Wrathscale Siren.lua

This script was written and is protected
by the GPL v2. This script was released
by BlackHer0  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- BlackHer0, November, 5th, 2008. ]]


function WrathscaleSiren_OnCombat(Unit, Event)
Unit:RegisterEvent("WrathscaleSiren_Screech", 8000, 0)
end

function WrathscaleSiren_Screech(pUnit, Event) 
pUnit:CastSpell(31273) 
end

function WrathscaleSiren_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function WrathscaleSiren_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function WrathscaleSiren_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(17195, 1, "WrathscaleSiren_OnCombat")
RegisterUnitEvent(17195, 2, "WrathscaleSiren_OnLeaveCombat")
RegisterUnitEvent(17195, 3, "WrathscaleSiren_OnKilledTarget")
RegisterUnitEvent(17195, 4, "WrathscaleSiren_OnDied")

--[[ ALL CREDITS GO TO BLUA SCRIPTING AND THE
                 WRITER OF THESE SCRIPTS BLACKHER0 and Mikebeck
    BlackHer0, Novembar, 5th, 2008. --]]