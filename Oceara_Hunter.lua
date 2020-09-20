import("TemBot.Lua.TemBotLua")

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1500)

if tblua:IsInWorld() == true then
    while (true) do
        tblua:Sleep(100)
        --check pause and logout user settings
        tblua:CheckPause()
        tblua:CheckLogout()
        while tblua:IsInWorld() == true do
            --full random movement
            local MovementSwitch = math.random(2)
            if MovementSwitch == 1 then
                tblua:RandomArea()
            elseif MovementSwitch == 2 then
                tblua:CircleArea()
            end
        end
        tblua:StopMovement()

        --loop if minimap not detected
        while tblua:IsInWorld() == false do
            local sex = math.random(100, 200)
            tblua:Sleep(sex)
            --if bot is in fight
            if tblua:IsInFight() == true then
                local Platypet = math.random(100, 200)
                tblua:Sleep(Platypet)
                --Luma check positive (message and notification)
                if tblua:CheckLuma() == true then
                    tblua:SendTelegramMessage("Luma Found! Waiting...")
                    tblua:TestMessage("Luma Found! Waiting...")
                    tblua:PressKey(0x71)
                else
                    local RandomSleepy = tblua:GetSleepTime()
                    local cr = tblua:GetSleepTime()
                    local RandomRun = math.random(100, 300)
                    -- exhausted
                    if tblua:GetPixelColor(276, 631) == "0xFFFFFF" then
                        tblua:Sleep(RandomSleepy)
                        tblua:PressKey(0x36)
                        tblua:Sleep(RandomSleepy)
                    else
                        if tblua:GetPixelColor(1056, 59) == "0xFFFFFF" then
                            if tblua:GetPixelColor(1226, 82) == "0x86C249" then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            else
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            end
                        elseif tblua:GetPixelColor(1052, 58) == "0xECECEC" then
                            if tblua:GetPixelColor(1226, 82) == "0x86C249" then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            else
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            end
                        elseif tblua:GetPixelColor(786, 24) == "0x" then
                            if tblua:GetPixelColor(960, 46) == "0x86C249" then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x26)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            else
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            end
                        elseif tblua:GetPixelColor(790, 22) == "0xFFFFFF" then
                            if tblua:GetPixelColor(960, 46) == "0x86C249" then
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x26)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x31)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            else
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x37)
                                tblua:Sleep(cr)
                                tblua:PressKey(0x46)
                            end
                        else
                            tblua:Sleep(RandomRun)
                            tblua:PressKey(0x38)
                            tblua:Sleep(RandomRun)
                            tblua:PressKey(0x38)
                        end
                    end
                end
            else
                local crx = tblua:GetSleepTime()
                local crxxx = math.random(1534, 2857)
                local ExpScreen = tblua:GetSleepTime()
                -- Catch screen Release
                if tblua:GetPixelColor(750, 530) == "0x1CD1D3" then
                    -- Skill learn
                    tblua:Sleep(crxxx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crxxx)
                    tblua:PressKey(0x46)
                    tblua:Sleep(crx)
                elseif tblua:GetPixelColor(215, 255) == "0x1CD1D3" then
                    -- Exp screen F
                    tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                elseif tblua:GetPixelColor(590, 245) == "0x1CD1D3" then
                    -- Swap dead tem
                    tblua:PressKey(0x1B)
                    tblua:Sleep(crx)
                elseif tblua:GetPixelColor(1180, 455) == "0x1E1E1E" then
                    local swap = math.random(4)
                    if swap == 4 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    elseif swap == 3 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    elseif swap == 2 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    elseif swap == 1 then
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x28)
                        tblua:Sleep(crx)
                        tblua:PressKey(0x46)
                        tblua:Sleep(crx)
                    end
                else
                    tblua:Sleep(crx)
                end
            end
        end
    end
else
    tblua:TestMessage("Error: Not ready to start the script")
end
