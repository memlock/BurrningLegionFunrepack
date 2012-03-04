--[[ Howling Fjord -- Mad Jonah Sterling.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function MadJonahSterling_OnCombat(Unit, Event)
Unit:RegisterEvent("MadJonahSterling_WildlyFlailing", 6000, 0)
end

function MadJonahSterling_WildlyFlailing(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50188, pUnit:GetMainTank()) 
end

function MadJonahSterling_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function MadJonahSterling_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function MadJonahSterling_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24742, 1, "MadJonahSterling_OnCombat")
RegisterUnitEvent(24742, 2, "MadJonahSterling_OnLeaveCombat")
RegisterUnitEvent(24742, 3, "MadJonahSterling_OnKilledTarget")
RegisterUnitEvent(24742, 4, "MadJonahSterling_OnDied")


--[[ Howling Fjord -- Scoodles.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Scoodles_OnCombat(Unit, Event)
Unit:RegisterEvent("Scoodles_FlipperThwack", 7000, 0)
Unit:RegisterEvent("Scoodles_PowerfulBite", 6000, 0)
end

function Scoodles_FlipperThwack(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50169, pUnit:GetMainTank()) 
end

function Scoodles_PowerfulBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48287, pUnit:GetMainTank()) 
end

function Scoodles_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Scoodles_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Scoodles_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24899, 1, "Scoodles_OnCombat")
RegisterUnitEvent(24899, 2, "Scoodles_OnLeaveCombat")
RegisterUnitEvent(24899, 3, "Scoodles_OnKilledTarget")
RegisterUnitEvent(24899, 4, "Scoodles_OnDied")


--[[ Howling Fjord -- Animated Plague Slime.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function AnimatedPlagueSlime_OnCombat(Unit, Event)
Unit:RegisterEvent("AnimatedPlagueSlime_DarkSludge", 4000, 2)
end

function AnimatedPlagueSlime_DarkSludge(pUnit, Event) 
pUnit:FullCastSpellOnTarget(3335, pUnit:GetMainTank()) 
end

function AnimatedPlagueSlime_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function AnimatedPlagueSlime_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function AnimatedPlagueSlime_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24279, 1, "AnimatedPlagueSlime_OnCombat")
RegisterUnitEvent(24279, 2, "AnimatedPlagueSlime_OnLeaveCombat")
RegisterUnitEvent(24279, 3, "AnimatedPlagueSlime_OnKilledTarget")
RegisterUnitEvent(24279, 4, "AnimatedPlagueSlime_OnDied")


--[[ Howling Fjord -- Apothecary Hanes.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function ApothecaryHanes_OnCombat(Unit, Event)
Unit:RegisterEvent("ApothecaryHanes_HealingPotion", 12000, 0)
end

function ApothecaryHanes_HealingPotion(pUnit, Event) 
pUnit:CastSpell(17534) 
end

function ApothecaryHanes_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function ApothecaryHanes_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function ApothecaryHanes_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23784, 1, "ApothecaryHanes_OnCombat")
RegisterUnitEvent(23784, 2, "ApothecaryHanes_OnLeaveCombat")
RegisterUnitEvent(23784, 3, "ApothecaryHanes_OnKilledTarget")
RegisterUnitEvent(23784, 4, "ApothecaryHanes_OnDied")


--[[ Howling Fjord -- Binder Murdis.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BinderMurdis_OnCombat(Unit, Event)
Unit:RegisterEvent("BinderMurdis_FlameShock", 7000, 0)
Unit:RegisterEvent("BinderMurdis_RuneofBinding", 11000, 0)
end

function BinderMurdis_FlameShock(pUnit, Event) 
pUnit:FullCastSpellOnTarget(15039, pUnit:GetMainTank()) 
end

function BinderMurdis_RuneofBinding(pUnit, Event) 
pUnit:FullCastSpellOnTarget(48599, pUnit:GetMainTank()) 
end

function BinderMurdis_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BinderMurdis_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BinderMurdis_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24334, 1, "BinderMurdis_OnCombat")
RegisterUnitEvent(24334, 2, "BinderMurdis_OnLeaveCombat")
RegisterUnitEvent(24334, 3, "BinderMurdis_OnKilledTarget")
RegisterUnitEvent(24334, 4, "BinderMurdis_OnDied")


--[[ Howling Fjord -- Bjomolf.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function Bjomolf_OnCombat(Unit, Event)
Unit:RegisterEvent("Bjomolf_GnawBone", 8000, 0)
end

function Bjomolf_GnawBone(pUnit, Event) 
pUnit:FullCastSpellOnTarget(50046, pUnit:GetMainTank()) 
end

function Bjomolf_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function Bjomolf_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function Bjomolf_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24516, 1, "Bjomolf_OnCombat")
RegisterUnitEvent(24516, 2, "Bjomolf_OnLeaveCombat")
RegisterUnitEvent(24516, 3, "Bjomolf_OnKilledTarget")
RegisterUnitEvent(24516, 4, "Bjomolf_OnDied")


--[[ Howling Fjord -- Bjorn Halgurdsson.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BjornHalgurdsson_OnCombat(Unit, Event)
Unit:RegisterEvent("BjornHalgurdsson_CrushArmor", 5000, 0)
Unit:RegisterEvent("BjornHalgurdsson_MortalStrike", 7000, 0)
end

function BjornHalgurdsson_CrushArmor(pUnit, Event) 
pUnit:FullCastSpellOnTarget(33661, pUnit:GetMainTank()) 
end

function BjornHalgurdsson_MortalStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(32736, pUnit:GetMainTank()) 
end

function BjornHalgurdsson_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BjornHalgurdsson_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BjornHalgurdsson_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24238, 1, "BjornHalgurdsson_OnCombat")
RegisterUnitEvent(24238, 2, "BjornHalgurdsson_OnLeaveCombat")
RegisterUnitEvent(24238, 3, "BjornHalgurdsson_OnKilledTarget")
RegisterUnitEvent(24238, 4, "BjornHalgurdsson_OnDied")


--[[ Howling Fjord -- Black Conrads Ghost.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BlackConradsGhost_OnCombat(Unit, Event)
Unit:RegisterEvent("BlackConradsGhost_BladeFlurry", 11000, 0)
Unit:RegisterEvent("BlackConradsGhost_GhostlyStrike", 8000, 0)
end

function BlackConradsGhost_BladeFlurry(pUnit, Event) 
pUnit:CastSpell(51211) 
end

function BlackConradsGhost_GhostlyStrike(pUnit, Event) 
pUnit:FullCastSpellOnTarget(31022, pUnit:GetMainTank()) 
end

function BlackConradsGhost_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlackConradsGhost_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlackConradsGhost_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24790, 1, "BlackConradsGhost_OnCombat")
RegisterUnitEvent(24790, 2, "BlackConradsGhost_OnLeaveCombat")
RegisterUnitEvent(24790, 3, "BlackConradsGhost_OnKilledTarget")
RegisterUnitEvent(24790, 4, "BlackConradsGhost_OnDied")


--[[ Howling Fjord -- Blacksouled Keeper.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BlacksouledKeeper_OnCombat(Unit, Event)
Unit:RegisterEvent("BlacksouledKeeper_Wrath", 5000, 0)
end

function BlacksouledKeeper_Wrath(pUnit, Event) 
pUnit:FullCastSpellOnTarget(43619, pUnit:GetMainTank()) 
end

function BlacksouledKeeper_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BlacksouledKeeper_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BlacksouledKeeper_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(23875, 1, "BlacksouledKeeper_OnCombat")
RegisterUnitEvent(23875, 2, "BlacksouledKeeper_OnLeaveCombat")
RegisterUnitEvent(23875, 3, "BlacksouledKeeper_OnKilledTarget")
RegisterUnitEvent(23875, 4, "BlacksouledKeeper_OnDied")


--[[ Howling Fjord -- Blood Shade.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BloodShade_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodShade_VexedBloodoftheAncestors", 6000, 0)
end

function BloodShade_VexedBloodoftheAncestors(pUnit, Event) 
pUnit:FullCastSpellOnTarget(49843, pUnit:GetMainTank()) 
end

function BloodShade_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodShade_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodShade_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24872, 1, "BloodShade_OnCombat")
RegisterUnitEvent(24872, 2, "BloodShade_OnLeaveCombat")
RegisterUnitEvent(24872, 3, "BloodShade_OnKilledTarget")
RegisterUnitEvent(24872, 4, "BloodShade_OnDied")


--[[ Howling Fjord -- Bloodthirsty Worg.lua

This script was written and is protected
by the GPL v2. This script was released
by MikeBeck  of the BLUA Scripting
Project. Please give proper accredidations
when re-releasing or sharing this script
with others in the emulation community.

~~End of License Agreement
-- MikeBeck, January, 4th, 2009. ]]


function BloodthirstyWorg_OnCombat(Unit, Event)
Unit:RegisterEvent("BloodthirstyWorg_InfectedBite", 10000, 0)
end

function BloodthirstyWorg_InfectedBite(pUnit, Event) 
pUnit:FullCastSpellOnTarget(7367, pUnit:GetMainTank()) 
end

function BloodthirstyWorg_OnLeaveCombat(Unit, Event) 
Unit:RemoveEvents() 
end

function BloodthirstyWorg_OnDied(Unit, Event) 
Unit:RemoveEvents()
end

function BloodthirstyWorg_OnKilledTarget(Unit, Event) 
end

RegisterUnitEvent(24475, 1, "BloodthirstyWorg_OnCombat")
RegisterUnitEvent(24475, 2, "BloodthirstyWorg_OnLeaveCombat")
RegisterUnitEvent(24475, 3, "BloodthirstyWorg_OnKilledTarget")
RegisterUnitEvent(24475, 4, "BloodthirstyWorg_OnDied")


