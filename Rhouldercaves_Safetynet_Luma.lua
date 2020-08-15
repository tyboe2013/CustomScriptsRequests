import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()
tblua:GetAreaColor()

tblua:Sleep(1500)

if tblua:IsInWorld() == true then
 while(true)
 do
    tblua:Sleep(100)
    --check pause and logout user settings
    tblua:CheckPause()
    tblua:CheckLogout()
    while tblua:IsInWorld() == true
    do
       --full random movement
       local MovementSwitch = math.random(2)
       if MovementSwitch == 1 then
        if cc == "0x357887" then
            tblua:KeyDown(0x57)
            tblua:Sleep(2000)
            tblua:PressKey(0x57)
        end
        tblua:RandomArea()
       elseif MovementSwitch == 2 then
        if cc == "0x357887" then
            tblua:KeyDown(0x57)
            tblua:Sleep(2000)
            tblua:PressKey(0x57)
        end
        tblua:CircleArea()
       end
    end
    tblua:StopMovement()

    --loop if minimap not detected
    while tblua:IsInWorld() == false
    do
      --if bot is in fight
      if tblua:IsInFight() == true then
        --Luma check positive (message and notification)
        if tblua:CheckLuma() == true then
          tblua:SendTelegramMessage("Luma Found!")
          tblua:TestMessage("Luma Found!")
          tblua:PressKey(0x71)
        else
          --Else no Luma, so run away
          while tblua:IsInWorld() == false
          do
            if tblua:IsInFight() == true then
              tblua:Sleep(300)
              tblua:PressKey(0x38)
            end
          end
        end
      end
    end
  end
else
tblua:TestMessage('Error: Not ready to start the script')
end