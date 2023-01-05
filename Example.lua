-- poorly made example

local lib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/spooderman11/ChakakaLibrary/main/source.lua"), true))()

local a = lib:CreateWindow("ChakakaLib ez")

local Tab1 = a:CreateTab("Tab1")
local Tab2 = a:CreateTab("Tab2")
local Tab3 = a:CreateTab("Tab3")
local Tab4 = a:CreateTab("Tab4")
local Tab5 = a:CreateTab("Tab5")
local Tab6 = a:CreateTab("Tab6")
local Tab7 = a:CreateTab("Tab7")

Tab1:Section("Better to have a section for cleaner look :D")

Tab1:Button("Button1", function()
    print("Button1")
end)

Tab1:Toggle("Toggle1", function(toggled)
    if toggled then
        print("Toggle1 is toggled")
    else
        print("Toggle1 is untoggled")
    end
end)

Tab1:Section("Chakakalib is the best one ever")

Tab1:Button("Button2", function()
    print("Button2")
end)

Tab2:Section("Chakakdwasaalib is the best one ever")

Tab2:Button("Button3", function()
    print("Button3")
end)

Tab2:Section("Chakaasdwaskalib is tasdasdhe best one ever")

Tab2:Button("Button4", function()
    print("Button4")
end)
