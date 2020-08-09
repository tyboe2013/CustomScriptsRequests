import ('TemBot.Lua.TemBotLua')

--Registering the Temtem Window
tblua:RegisterTemTemWindow()

tblua:Sleep(1500)

if tblua:IsInWorld() == true then
 while(true)
 do
    tblua:Sleep(100)
    --check pause and logout user settings
    tblua:CheckPause()
    tblua:CheckLogout()
    if tblua:IsInFight() == true then
        tblua:Sleep(500)
        tblua:PressKey(0x35)
        tblua:Sleep(500)
        tblua:PressKey(0x53)
        tblua:Sleep(500)
        tblua:PressKey(0x53)
        tblua:Sleep(500)
        tblua:PressKey(0x46)
        tblua:Sleep(25000)
        tblua:WaitLoop(false)
    end

end
else
tblua:TestMessage('Error: Not ready to start the script')
end