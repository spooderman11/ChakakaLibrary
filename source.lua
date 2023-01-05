local lib = {}
local UIS = game:GetService("UserInputService")

-- // Tweening Variables and services \\ --
local TweenService = game:GetService("TweenService")
local buttonHoverTween = TweenInfo.new(0.2, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)

-- // Functions \\ --
function bTween(obj, props)
    TweenService:Create(obj, buttonHoverTween, props):Play()
end

function dragui(ui)
    local dragging
    local dragInput
    local dragStart
    local startPos

    local function update(input)
        local delta = input.Position - dragStart
        ui.Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
    end

    ui.InputBegan:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
            dragging = true
            dragStart = input.Position
            startPos = ui.Position

            input.Changed:Connect(function()
                if input.UserInputState == Enum.UserInputState.End then
                    dragging = false
                end
            end)
        end
    end)

    ui.InputChanged:Connect(function(input)
        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
            dragInput = input
        end
    end)

    UIS.InputChanged:Connect(function(input)
        if input == dragInput and dragging then
            update(input)
        end
    end)
end


function lib:CreateWindow(name)
    local ChakakaLib = Instance.new("ScreenGui")
    local Main = Instance.new("Frame")
    local DropShadowHolder = Instance.new("Frame")
    local DropShadow = Instance.new("ImageLabel")
    local UICorner = Instance.new("UICorner")
    local SideBar = Instance.new("Frame")
    local UICorner_2 = Instance.new("UICorner")
    local SideBar_2 = Instance.new("Frame")
    local TabDIv = Instance.new("Frame")
    local TabContainer = Instance.new("ScrollingFrame")
    local UIListLayout = Instance.new("UIListLayout")
    local TextLabel = Instance.new("TextLabel")
    local PageHolder = Instance.new("Frame")
    local UICorner_5 = Instance.new("UICorner")
    local Pages = Instance.new("Folder")

    
    local p;
    if not gethui then
        -- get the coregui service
        p = game:GetService("CoreGui")
    else
        -- call gethidden ui if the exploit is supported
        p = gethui()
    end

    ChakakaLib.Name = "ChakakaLib"
    ChakakaLib.Parent = p

    Main.Name = "Main"
    Main.Parent = ChakakaLib
    Main.AnchorPoint = Vector2.new(0.5, 0.5)
    Main.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
    Main.Position = UDim2.new(0.499688864, 0, 0.50934577, 0)
    Main.Size = UDim2.new(0, 611, 0, 340)

    DropShadowHolder.Name = "DropShadowHolder"
    DropShadowHolder.Parent = Main
    DropShadowHolder.BackgroundTransparency = 1.000
    DropShadowHolder.BorderSizePixel = 0
    DropShadowHolder.Size = UDim2.new(1, 0, 1, 0)
    DropShadowHolder.ZIndex = 0

    DropShadow.Name = "DropShadow"
    DropShadow.Parent = DropShadowHolder
    DropShadow.AnchorPoint = Vector2.new(0.5, 0.5)
    DropShadow.BackgroundTransparency = 1.000
    DropShadow.BorderSizePixel = 0
    DropShadow.Position = UDim2.new(0.5, 0, 0.5, 0)
    DropShadow.Size = UDim2.new(1, 47, 1, 47)
    DropShadow.ZIndex = 0
    DropShadow.Image = "rbxassetid://6014261993"
    DropShadow.ImageColor3 = Color3.fromRGB(0, 0, 0)
    DropShadow.ImageTransparency = 0.500
    DropShadow.ScaleType = Enum.ScaleType.Slice
    DropShadow.SliceCenter = Rect.new(49, 49, 450, 450)

    UICorner.CornerRadius = UDim.new(0, 4)
    UICorner.Parent = Main

    SideBar.Name = "SideBar"
    SideBar.Parent = Main
    SideBar.AnchorPoint = Vector2.new(0.5, 0.5)
    SideBar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    SideBar.Position = UDim2.new(0.108738676, 0, 0.498790503, 0)
    SideBar.Size = UDim2.new(0, 133, 0, 339)

    UICorner_2.CornerRadius = UDim.new(0, 4)
    UICorner_2.Parent = SideBar

    SideBar_2.Name = "SideBar"
    SideBar_2.Parent = SideBar
    SideBar_2.AnchorPoint = Vector2.new(0.5, 0.5)
    SideBar_2.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    SideBar_2.BorderSizePixel = 0
    SideBar_2.Position = UDim2.new(1.01717794, 0, 0.501740336, 0)
    SideBar_2.Size = UDim2.new(0, 5, 0, 339)

    TabDIv.Name = "TabDIv"
    TabDIv.Parent = SideBar_2
    TabDIv.AnchorPoint = Vector2.new(0.5, 0.5)
    TabDIv.BackgroundColor3 = Color3.fromRGB(68, 68, 68)
    TabDIv.BorderSizePixel = 0
    TabDIv.Position = UDim2.new(-12.7731304, 0, 0.103510231, 0)
    TabDIv.Size = UDim2.new(0, 139, 0, 1)

    TabContainer.Name = "TabContainer"
    TabContainer.Parent = SideBar_2
    TabContainer.Active = true
    TabContainer.AnchorPoint = Vector2.new(0.5, 0.5)
    TabContainer.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TabContainer.BackgroundTransparency = 1.000
    TabContainer.BorderColor3 = Color3.fromRGB(27, 42, 53)
    TabContainer.BorderSizePixel = 0
    TabContainer.Position = UDim2.new(-12.9065189, 0, 0.557625294, 0)
    TabContainer.Size = UDim2.new(0, 121, 0, 279)
    TabContainer.ScrollBarThickness = 0

    UIListLayout.Parent = TabContainer
    UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
    UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
    UIListLayout.Padding = UDim.new(0, 7)

    TextLabel.Parent = SideBar
    TextLabel.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.BackgroundTransparency = 1.000
    TextLabel.Position = UDim2.new(0.0640882924, 0, 0.0353028066, 0)
    TextLabel.Size = UDim2.new(0, 121, 0, 13)
    TextLabel.Font = Enum.Font.GothamBold
    TextLabel.Text = name or "ChakakaLib"
    TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
    TextLabel.TextScaled = true
    TextLabel.TextSize = 14.000
    TextLabel.TextWrapped = true

    PageHolder.Name = "PageHolder"
    PageHolder.Parent = Main
    PageHolder.AnchorPoint = Vector2.new(0.5, 0.5)
    PageHolder.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
    PageHolder.Position = UDim2.new(0.61211127, 0, 0.501553595, 0)
    PageHolder.Size = UDim2.new(0, 456, 0, 324)

    UICorner_5.CornerRadius = UDim.new(0, 4)
    UICorner_5.Parent = PageHolder

    Pages.Name = "Pages"
    Pages.Parent = PageHolder

    dragui(Main)

    local lib2 = {}

    function lib2:CreateTab(name)
        local Tab = Instance.new("TextButton")
        local UICorner_3 = Instance.new("UICorner")
        local Page = Instance.new("ScrollingFrame") 
        local UIListLayout_2 = Instance.new("UIListLayout")


        Tab.Name = "Tab"
        Tab.Parent = TabContainer
        Tab.AnchorPoint = Vector2.new(0.5, 0.5)
        Tab.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
        Tab.Position = UDim2.new(0.503771067, 0, 0.0327071249, 0)
        Tab.Size = UDim2.new(0, 114, 0, 23)
        Tab.Font = Enum.Font.GothamMedium
        Tab.Text = name or "Tab"
        Tab.TextColor3 = Color3.fromRGB(255, 255, 255)
        Tab.TextSize = 14.000
        Tab.TextWrapped = true

        UICorner_3.CornerRadius = UDim.new(0, 4)
        UICorner_3.Parent = Tab

        Page.Name = "Page"
        Page.Parent = Pages
        Page.Active = true
        Page.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
        Page.BackgroundTransparency = 1.000
        Page.BorderSizePixel = 0
        Page.Size = UDim2.new(1.0000006, 0, 1.00000024, 0)
        Page.ScrollBarThickness = 1
        Page.Visible = false

        UIListLayout_2.Parent = Page
        UIListLayout_2.HorizontalAlignment = Enum.HorizontalAlignment.Center
        UIListLayout_2.SortOrder = Enum.SortOrder.LayoutOrder
        UIListLayout_2.Padding = UDim.new(0, 8)

        -- // Button Hover sizing \\ --

        Tab.MouseEnter:Connect(function()
            Tab:TweenSize(UDim2.new(0, 116, 0, 25), "Out", "Quad", 0.1)
        end)

        Tab.MouseLeave:Connect(function()
            Tab:TweenSize(UDim2.new(0, 114, 0, 23), "Out", "Quad", 0.1)
        end)

        -- // Mouse down and up sizing \\ --

        Tab.MouseButton1Down:Connect(function()
            Tab:TweenSize(UDim2.new(0, 110, 0, 23), "Out", "Quad", 0.1)
        end)

        Tab.MouseButton1Up:Connect(function()
            Tab:TweenSize(UDim2.new(0, 114, 0, 23), "Out", "Quad", 0.1)
        end)


        Tab.MouseButton1Click:Connect(function()
            --[[
                1.) Loops through all the pages.
                2.) Makes them all invisible.
            ]]
            for i,v in pairs(Pages:GetChildren()) do
                v.Visible = false
            end

            --[[
                1.) Makes the current page visible.
            ]]
            Page.Visible = true

            --[[
                1.) Loops through all the tabs.
                2.) If the tab is a TextButton, make it's background color 45, 45, 45.
            ]]
            for i,v in pairs(TabContainer:GetChildren()) do
                if v:IsA("TextButton") then
                    v.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
                end
            end

            --[[
                1.) Sets the current tab's background color to 30, 30, 30.
            ]]
            Tab.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
        end)


        local elements = {}

        function elements:Button(name, callBack)
            local Button = Instance.new("TextButton")
            local UICorner_6 = Instance.new("UICorner")

            Button.Name = "Button"
            Button.Parent = Page
            Button.AnchorPoint = Vector2.new(0.5, 0.5)
            Button.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Button.Position = UDim2.new(0.499385059, 0, 0.0202491954, 0)
            Button.Size = UDim2.new(0, 442, 0, 29)
            Button.Text = name or "Button"
            Button.Font = Enum.Font.GothamMedium
            Button.TextColor3 = Color3.fromRGB(255, 255, 255)
            Button.TextSize = 14.000
            Button.TextWrapped = true

            UICorner_6.CornerRadius = UDim.new(0, 4)
            UICorner_6.Parent = Button

            -- // Button Hover sizing \\ --
            Button.MouseEnter:Connect(function()
                Button:TweenSize(UDim2.new(0, 444, 0, 25), "Out", "Quad", 0.1)
            end)

            Button.MouseLeave:Connect(function()
                Button:TweenSize(UDim2.new(0, 442, 0, 23), "Out", "Quad", 0.1)
            end)

            -- // Mouse down and up sizing \\ --
            Button.MouseButton1Down:Connect(function()
                Button:TweenSize(UDim2.new(0, 436, 0, 23), "Out", "Quad", 0.1)
            end)

            Button.MouseButton1Up:Connect(function()
                Button:TweenSize(UDim2.new(0, 442, 0, 23), "Out", "Quad", 0.1)
            end)

            Button.MouseButton1Click:Connect(function()
                callBack()
            end)
        end

        function elements:Section(name)
            local TextLabel_2 = Instance.new("TextLabel")

            TextLabel_2.Parent = Page
            TextLabel_2.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TextLabel_2.BackgroundTransparency = 1.000
            TextLabel_2.Position = UDim2.new(0.00767570175, 0, -4.76135007e-08, 0)
            TextLabel_2.Size = UDim2.new(0, 452, 0, 19)
            TextLabel_2.Font = Enum.Font.GothamBold
            TextLabel_2.Text = name or "Section"
            TextLabel_2.TextColor3 = Color3.fromRGB(194, 194, 194)
            TextLabel_2.TextSize = 14.000
            TextLabel_2.TextWrapped = true
        end
        
        function elements:Toggle(name, callBack)
            local toggled = false

            local Toggle = Instance.new("Frame")
            local UICorner_7 = Instance.new("UICorner")
            local TogolText = Instance.new("TextLabel")
            local ToggleBar = Instance.new("Frame")
            local UICorner_8 = Instance.new("UICorner")
            local Toggler = Instance.new("TextButton")
            local UICorner_9 = Instance.new("UICorner")

            Toggle.Name = "Toggle"
            Toggle.Parent = Page
            Toggle.AnchorPoint = Vector2.new(0.5, 0.5)
            Toggle.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Toggle.Position = UDim2.new(0.390350908, 0, 0.180983067, 0)
            Toggle.Size = UDim2.new(0, 442, 0, 29)
            
            UICorner_7.CornerRadius = UDim.new(0, 4)
            UICorner_7.Parent = Toggle
            
            TogolText.Name = "TogolText"
            TogolText.Parent = Toggle
            TogolText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            TogolText.BackgroundTransparency = 1.000
            TogolText.Position = UDim2.new(0.0211018696, 0, 0.2421996, 0)
            TogolText.Size = UDim2.new(0, 337, 0, 13)
            TogolText.Font = Enum.Font.GothamBold
            TogolText.Text = "Toggol example"
            TogolText.TextColor3 = Color3.fromRGB(255, 255, 255)
            TogolText.TextScaled = true
            TogolText.TextSize = 14.000
            TogolText.TextWrapped = true
            TogolText.TextXAlignment = Enum.TextXAlignment.Left
            
            ToggleBar.Name = "ToggleBar"
            ToggleBar.Parent = Toggle
            ToggleBar.AnchorPoint = Vector2.new(0.5, 0.5)
            ToggleBar.BackgroundColor3 = Color3.fromRGB(113, 113, 113)
            ToggleBar.Position = UDim2.new(0.919683278, 0, 0.448275864, 0)
            ToggleBar.Size = UDim2.new(0, 40, 0, 16)
            
            UICorner_8.CornerRadius = UDim.new(1, 0)
            UICorner_8.Parent = ToggleBar
            
            Toggler.Name = "Toggler"
            Toggler.Parent = ToggleBar
            Toggler.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Toggler.Position = UDim2.new(-2.98023224e-08, 0, -0.125, 0)
            Toggler.Size = UDim2.new(0, 20, 0, 20)
            Toggler.Font = Enum.Font.SourceSans
            Toggler.Text = ""
            Toggler.TextColor3 = Color3.fromRGB(0, 0, 0)
            Toggler.TextSize = 14.000
            
            UICorner_9.CornerRadius = UDim.new(1, 0)
            UICorner_9.Parent = Toggler

            Toggler.MouseButton1Click:Connect(function()
                if not toggled then
                    bTween(Toggler, {Position = UDim2.new(0.5, 0, -0.125, 0)})
                    bTween(ToggleBar, {BackgroundColor3 = Color3.fromRGB(84, 171, 65)})
                else
                    bTween(Toggler, {Position = UDim2.new(-2.98023224e-08, 0, -0.125, 0)})
                    bTween(ToggleBar, {BackgroundColor3 = Color3.fromRGB(113, 113, 113)})
                end
                toggled = not toggled  
                pcall(callBack, toggled)
            end)
        end

        return elements
    end 

    return lib2
end
