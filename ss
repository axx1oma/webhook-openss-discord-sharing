--webhook-openss-discord-sharing

local button2 = menu.Button("Share server information to discord", "Share!")
local webHookURL = menu.TextBox("Webhook", "Webhook URL", 148, "", "Enter your webhook URL")


local function hook(msg)

    http.PostAsync(string.format("%s", webHookURL:GetString()), 
    
    string.format("content=%s",msg))

		end
    
local message = (" Hello! " .. "***"..cheat.GetCheatUserName().."***".. " joined on ".."***"..g_EngineClient:GetLevelNameShort().."***".. " at ".."***".. g_EngineClient:GetNetChannelInfo():GetAddress().."***")

button2:RegisterCallback(function()

    hook(message)
    
end)
