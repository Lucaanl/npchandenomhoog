Citizen.CreateThread(function()
    while true do
        Citizen.Wait(1)
        local richtOpNpc, keeper = GetEntityPlayerIsFreeAimingAt(PlayerId())
        if richtOpNpc then
            PlayAmbientSpeech1(keeper, speech[math.random(1, #speech)], "SPEECH_PARAMS_FORCE")
            --TaskPlayAnim(keeper, "mp_am_hold_up","guard_handsup_loop", 8.0, 1.0, -1, 1, 0, false, false, false);
            TaskHandsUp(keeper,5000,1,0,0)
        end
    end
end)