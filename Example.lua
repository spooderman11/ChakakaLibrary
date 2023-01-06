-- poorly made example

local lib = loadstring(game:HttpGet(("https://raw.githubusercontent.com/spooderman11/ChakakaLibrary/main/source.lua"), true))()

local a = lib:CreateWindow("ChakakaLib ez")

local Tab1 = a:CreateTab("Elements")

local Section = Tab1:Section("A section")

local Button = Tab1:Button("Button", function()
    print("Button Pressed")
end)

local Toggle = Tab1:Toggle("Toggle", function(state)
    print("Toggle State: " .. tostring(state))
end)

local Dropdown = Tab1:DropDown("Dropdown", {"Option 1", "Option 2", "Option 3"}, function(option)
    print("Dropdown Option: " .. option)
end)

local Slider = Tab1:Slider("Slider", 0, 100, 50, "WalkSpeed", function(value)
    print("Slider Value: " .. value)
end)

local Label = Tab1:Label("Label")

local Paragraph = Tab1:Paragraph("Paragraph", "This is the paragraph body, you can put anthything you want here, even if its very long, text will be automatically wrapped and sized for you, no need to worry how long it is, it will automatically expand accordingly, see how much i have in the body? makes me feel like this can go a looong way.")

local Input = Tab1:DynamicInput("Input", "Input", function(text)
    print("Input Text: " .. text)
end)
