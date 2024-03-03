local Library = 
loadstring(Game:HttpGet("https://raw.githubusercontent.com/bloodball/-back-ups-for-libs/main/wizard"))()
local Window_1 = Library:NewWindow("Main")

local Tab1 = Window_1:NewSection("Money")
local Tab2 = Window_1:NewSection("Farm gems")

Tab1:CreateToggle("Get Money",function(value)
        _G.money = value
        while wait() do
         if _G.money == false then break end
             game:GetService("ReplicatedStorage")["RF"]["Computer"]["SellPrograms"]:InvokeServer(-9e9,"Assembly")
             game:GetService("ReplicatedStorage")["RF"]["Computer"]["SellPrograms"]:InvokeServer(9e9,"Assembly")
    end
end)

Tab2:CreateToggle("Auto click [ LUA ]",function(value)
    _G.luaclick = value
    while wait() do
     if _G.luaclick == false then break end
      game:GetService("ReplicatedStorage")["RE"]["Server"]["General"]["CodeKeyPress"]:FireServer("Lua")
    end
end)

Tab2:CreateToggle("Auto click [ Python ]",function(value)
    _G.pyclick = value
    while wait() do
     if _G.pyclick == false then break end
      game:GetService("ReplicatedStorage")["RE"]["Server"]["General"]["CodeKeyPress"]:FireServer("Python")
    end
end)

Tab2:CreateToggle("Auto click [ C++ ]",function(value)
    _G.cppclick = value
    while wait() do
     if _G.cppclick == false then break end
      game:GetService("ReplicatedStorage")["RE"]["Server"]["General"]["CodeKeyPress"]:FireServer("C++")
    end
end)
