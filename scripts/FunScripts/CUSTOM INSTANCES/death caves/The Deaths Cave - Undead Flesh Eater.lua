function UndeadFleshEaterCharge(pUnit, Event)
pUnit:SendChatMessage(9, 0, "Me Eat You!");
pUnit:CastSpellOnTarget(6268, pUnit:GetClosestPlayer());
end

RegisterUnitEvent(515154, 1, "UndeadFleshEaterCharge");
