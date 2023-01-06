local lib = {}
local UIS = game:GetService("UserInputService")

local Players = game:GetService("Players")
local LocalPlayer = Players.LocalPlayer
local mouse = LocalPlayer:GetMouse()

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

    TabContainer.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 7)
    TabContainer.ChildAdded:Connect(function()
       TabContainer.CanvasSize = UDim2.new(0,0,0,UIListLayout.AbsoluteContentSize.Y + 7)
    end) 

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

        Page.CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y +45)
        Page.ChildAdded:Connect(function()
           Page.CanvasSize = UDim2.new(0,0,0,UIListLayout_2.AbsoluteContentSize.Y +45)
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
                1.) Sets the current tab's background color to 35, 35, 35.
            ]]
            Tab.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
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
                callBack() -- Calls the callback function.
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
            TogolText.Text = name or "Toggle"
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

            Toggler.MouseButton1Click:Connect(function() -- when the toggle is clicked do this
                if not toggled then -- if the toggle is not toggled then do this
                    bTween(Toggler, {Position = UDim2.new(0.5, 0, -0.125, 0)})
                    bTween(ToggleBar, {BackgroundColor3 = Color3.fromRGB(84, 171, 65)})
                else -- if the toggle is toggled then do this
                    bTween(Toggler, {Position = UDim2.new(-2.98023224e-08, 0, -0.125, 0)})
                    bTween(ToggleBar, {BackgroundColor3 = Color3.fromRGB(113, 113, 113)})
                end 
                toggled = not toggled  -- toggle the toggled value
                pcall(callBack, toggled) -- pcall to the callback function with the toggled value so we can set a custom value for example bool or Value
            end)
        end

        function elements:DropDown(name, list, callBack)
            list = list or {}
            callBack = callBack or function() end

            local dropped = false
            
            local DropDown = Instance.new("Frame")
            local UICorner_13 = Instance.new("UICorner")
            local DropdownText = Instance.new("TextLabel")
            local DropDownToggle = Instance.new("ImageButton")
            local Option = Instance.new("TextLabel")
            local OptionsHolder = Instance.new("ScrollingFrame")
            local UIListLayout_3 = Instance.new("UIListLayout")

            DropDown.Name = "DropDown"
            DropDown.Parent = Page
            DropDown.AnchorPoint = Vector2.new(0.5, 0)
            DropDown.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            DropDown.Position = UDim2.new(0.49999997, 0, 0.393170148, 0)
            DropDown.Size = UDim2.new(0, 442, 0, 29)

            UICorner_13.CornerRadius = UDim.new(0, 4)
            UICorner_13.Parent = DropDown

            DropdownText.Name = "DropdownText"
            DropdownText.Parent = DropDown
            DropdownText.AnchorPoint = Vector2.new(0.5, 0.5)
            DropdownText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.BackgroundTransparency = 1.000
            DropdownText.Position = UDim2.new(0.281282872, 0, 0.483579427, 0)
            DropdownText.Size = UDim2.new(0, 231, 0, 13)
            DropdownText.Font = Enum.Font.GothamBold
            DropdownText.Text = name or "Dropdown"
            DropdownText.TextColor3 = Color3.fromRGB(255, 255, 255)
            DropdownText.TextScaled = true
            DropdownText.TextSize = 14.000
            DropdownText.TextWrapped = true
            DropdownText.TextXAlignment = Enum.TextXAlignment.Left

            DropDownToggle.Name = "DropDownToggle"
            DropDownToggle.Parent = DropDown
            DropDownToggle.AnchorPoint = Vector2.new(0.5, 0.5)
            DropDownToggle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            DropDownToggle.BackgroundTransparency = 1.000
            DropDownToggle.Position = UDim2.new(0.962967396, 0, 0.465596437, 0)
            DropDownToggle.Size = UDim2.new(0, 20, 0, 20)
            DropDownToggle.Image = "rbxassetid://12065915474"

            Option.Name = "Option"
            Option.Parent = DropDown
            Option.AnchorPoint = Vector2.new(0.5, 0.5)
            Option.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Option.BackgroundTransparency = 1.000
            Option.Position = UDim2.new(0.832532346, 0, 0.483579427, 0)
            Option.Size = UDim2.new(0, 95, 0, 13)
            Option.Font = Enum.Font.GothamMedium
            Option.Text = "Option"
            Option.TextColor3 = Color3.fromRGB(191, 191, 191)
            Option.TextScaled = true
            Option.TextSize = 14.000
            Option.TextWrapped = true
            Option.TextXAlignment = Enum.TextXAlignment.Left

            OptionsHolder.Name = "OptionsHolder"
            OptionsHolder.Parent = DropDown
            OptionsHolder.Active = true
            OptionsHolder.AnchorPoint = Vector2.new(0.5, 0.5)
            OptionsHolder.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            OptionsHolder.BackgroundTransparency = 1.000
            OptionsHolder.Position = UDim2.new(0.502976894, 0, 0.605912447, 0)
            OptionsHolder.Size = UDim2.new(0, 426, 0, 76)
            OptionsHolder.Visible = false
            OptionsHolder.ScrollBarThickness = 1

            UIListLayout_3.Parent = OptionsHolder
            UIListLayout_3.HorizontalAlignment = Enum.HorizontalAlignment.Center
            UIListLayout_3.SortOrder = Enum.SortOrder.LayoutOrder
            UIListLayout_3.Padding = UDim.new(0, 5)

            OptionsHolder.CanvasSize = UDim2.new(0,0,0,UIListLayout_3.AbsoluteContentSize.Y +10)
            OptionsHolder.ChildAdded:Connect(function()
               OptionsHolder.CanvasSize = UDim2.new(0,0,0,UIListLayout_3.AbsoluteContentSize.Y +10)
            end) 

            DropDownToggle.MouseButton1Click:Connect(function()
                if not dropped then
                    bTween(DropDown, {Size = UDim2.new(0, 442, 0, 115)})
                    OptionsHolder.Visible = true
                    bTween(DropdownText, {Position = UDim2.new(0.281, 0, 0.118, 0)})
                    bTween(Option, {Position = UDim2.new(0.832, 0, 0.118, 0)})
                    bTween(DropDownToggle, {Position = UDim2.new(0.962, 0, 0.118, 0)})
                    bTween(DropDownToggle, {Rotation = 180})
                else
                    OptionsHolder.Visible = false
                    bTween(DropDown, {Size = UDim2.new(0, 442, 0, 29)})
                    bTween(DropdownText, {Position = UDim2.new(0.281, 0, 0.483, 0)})
                    bTween(Option, {Position = UDim2.new(0.832, 0, 0.483, 0)})
                    bTween(DropDownToggle, {Position = UDim2.new(0.962, 0, 0.483, 0)})
                    bTween(DropDownToggle, {Rotation = 0})
                end

                for i, v in next, list do -- loop through the list
                    local Tab_4 = Instance.new("TextButton") 
                    local UICorner_15 = Instance.new("UICorner")

                    Tab_4.Name = "Tab"
                    Tab_4.Parent = OptionsHolder
                    Tab_4.AnchorPoint = Vector2.new(0.5, 0.5)
                    Tab_4.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
                    Tab_4.Position = UDim2.new(0.482765019, 0, 0.190789476, 0)
                    Tab_4.Size = UDim2.new(0, 401, 0, 29)
                    Tab_4.Font = Enum.Font.GothamMedium
                    Tab_4.Text = v
                    Tab_4.TextColor3 = Color3.fromRGB(255, 255, 255)
                    Tab_4.TextSize = 14.000
                    Tab_4.TextWrapped = true

                    UICorner_15.CornerRadius = UDim.new(0, 4)
                    UICorner_15.Parent = Tab_4

                    Tab_4.MouseButton1Click:Connect(function() -- when clicked
                        OptionsHolder.Visible = false -- hide the options
                        bTween(DropDown, {Size = UDim2.new(0, 442, 0, 29)}) -- tween the size of the dropdown
                        bTween(DropdownText, {Position = UDim2.new(0.281, 0, 0.483, 0)}) -- tween the text
                        bTween(Option, {Position = UDim2.new(0.832, 0, 0.483, 0)}) -- tween the option
                        bTween(DropDownToggle, {Position = UDim2.new(0.962, 0, 0.483, 0)}) -- tween the toggle
                        bTween(DropDownToggle, {Rotation = 0}) -- tween the toggle
                        Option.Text = v -- set the option text to the value of the option in the list
                        callBack(v) -- call the callback with the value of thne option in the list
                    end)
                end

                dropped = not dropped
            end)
        end

        function elements:Slider(name, min, max, def, Increment, callBack)
            local Slider = Instance.new("Frame")
            local UICorner_14 = Instance.new("UICorner")
            local SliderText = Instance.new("TextLabel")
            local SliderBar = Instance.new("Frame")
            local UICorner_15 = Instance.new("UICorner")
            local SildePart = Instance.new("TextButton")
            local UICorner_16 = Instance.new("UICorner")
            local Val = Instance.new("TextLabel")

            Slider.Name = "Slider"
            Slider.Parent = Page
            Slider.AnchorPoint = Vector2.new(0.5, 0)
            Slider.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Slider.Position = UDim2.new(0.49999997, 0, 0.499263704, 0)
            Slider.Size = UDim2.new(0, 442, 0, 58)
            
            UICorner_14.CornerRadius = UDim.new(0, 4)
            UICorner_14.Parent = Slider
            
            SliderText.Name = "SliderText"
            SliderText.Parent = Slider
            SliderText.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.BackgroundTransparency = 1.000
            SliderText.Position = UDim2.new(0.281663448, 0, 0.229033902, 0)
            SliderText.Size = UDim2.new(0, 231, 0, 13)
            SliderText.Font = Enum.Font.GothamBold
            SliderText.Text = name or "slider"
            SliderText.TextColor3 = Color3.fromRGB(255, 255, 255)
            SliderText.TextScaled = true
            SliderText.TextSize = 14.000
            SliderText.TextWrapped = true
            SliderText.TextXAlignment = Enum.TextXAlignment.Left
            
            SliderBar.Name = "SliderBar"
            SliderBar.Parent = Slider
            SliderBar.AnchorPoint = Vector2.new(0.5, 0.5)
            SliderBar.BackgroundColor3 = Color3.fromRGB(74, 71, 171)
            SliderBar.Position = UDim2.new(0.501999974, 0, 0.670000017, 0)
            SliderBar.Size = UDim2.new(0, 427, 0, 24)
            
            UICorner_15.CornerRadius = UDim.new(0, 4)
            UICorner_15.Parent = SliderBar
            
            SildePart.Name = "SildePart"
            SildePart.Parent = SliderBar
            SildePart.AnchorPoint = Vector2.new(0, 0.5)
            SildePart.BackgroundColor3 = Color3.fromRGB(44, 43, 104)
            SildePart.Position = UDim2.new(0, 0, 0.5, 0)
            SildePart.Size = UDim2.new(0, 18, 0, 24)
            SildePart.Font = Enum.Font.SourceSans
            SildePart.Text = ""
            SildePart.TextColor3 = Color3.fromRGB(0, 0, 0)
            SildePart.TextSize = 14.000
            SildePart.AutoButtonColor = false
            
            UICorner_16.CornerRadius = UDim.new(0, 4)
            UICorner_16.Parent = SildePart
            
            Val.Name = "Val"
            Val.Parent = Slider
            Val.AnchorPoint = Vector2.new(0.5, 0.5)
            Val.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            Val.BackgroundTransparency = 1.000
            Val.Position = UDim2.new(0.763944626, 0, 0.224137932, 0)
            Val.Size = UDim2.new(0, 195, 0, 13)
            Val.ZIndex = 2
            Val.Font = Enum.Font.GothamBold
            Val.Text = def.."/"..max.." "..Increment
            Val.TextColor3 = Color3.fromRGB(255, 255, 255)
            Val.TextScaled = true
            Val.TextSize = 14.000
            Val.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
            Val.TextWrapped = true
            Val.TextXAlignment = Enum.TextXAlignment.Right
            
            local dragging = false -- asinging a value so we can make sure the player is dragging the slider or not

            SildePart.MouseButton1Down:Connect(function() -- checks to see if the player has clicked the slider
                dragging = true  -- sets dragging to true
            end)

            game:GetService("UserInputService").InputEnded:Connect(function(input) -- checks to see if the player has stopped dragging the slider
                if input.UserInputType == Enum.UserInputType.MouseButton1 then -- checks to see if the InputType is MouseButton1
                    dragging = false -- sets dragging to false
                end 
            end) 

            game:GetService("UserInputService").InputChanged:Connect(function(input)
                if input.UserInputType == Enum.UserInputType.MouseMovement then -- checks to see if the InputType is MouseMovement
                    if dragging then -- checks to see if the player is dragging the slider
                        local mouseLocation = UIS:GetMouseLocation() -- gets the mouse location
                        local realtivePos = mouseLocation-SliderBar.AbsolutePosition -- gets the relative position of the mouse, subtracted by the sliderbar's position
                        local percent = math.clamp(realtivePos.X/SliderBar.AbsoluteSize.X, 0, 1) -- gets the percent of the slider, clamped between 0 and 1
                        SildePart.Size = UDim2.new(0, percent*427, 0, 24) -- sets the size of the slider part to the percent of the sliderbar
                        Val.Text = math.floor(min + (max-min)*percent).."/"..max.." "..Increment -- sets the text of the value to the percent of the slider multiplied by the max value of the slider
                        callBack(math.floor(min + (max-min)*percent)) -- calls the callback function with the percent of the slider multiplied by the max value of the slider
                    end
                end
            end)
        end

        function elements:Label(text)
            local Label = Instance.new("Frame")
            local UICorner_17 = Instance.new("UICorner")
            local LabelText = Instance.new("TextLabel")

            Label.Name = "Label"
            Label.Parent = Page
            Label.AnchorPoint = Vector2.new(0.5, 0.5)
            Label.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Label.Position = UDim2.new(0.390350908, 0, 0.180983067, 0)
            Label.Size = UDim2.new(0, 442, 0, 29)

            UICorner_17.CornerRadius = UDim.new(0, 4)
            UICorner_17.Parent = Label

            LabelText.Name = "LabelText"
            LabelText.Parent = Label
            LabelText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.BackgroundTransparency = 1.000
            LabelText.Position = UDim2.new(0.0211018696, 0, 0.242200121, 0)
            LabelText.Size = UDim2.new(0, 425, 0, 13)
            LabelText.Font = Enum.Font.GothamBold
            LabelText.Text = text or "This is a textlabel, you can put anything you want here, anything"
            LabelText.TextColor3 = Color3.fromRGB(255, 255, 255)
            LabelText.TextScaled = true
            LabelText.TextSize = 14.000
            LabelText.TextWrapped = true
            LabelText.TextXAlignment = Enum.TextXAlignment.Left
        end

        function elements:Paragraph(title, body)
            local Paragraph = Instance.new("Frame")
            local UICorner_18 = Instance.new("UICorner")
            local ParagraphTitle = Instance.new("TextLabel")
            local ParagraphBody = Instance.new("TextLabel")

            Paragraph.Name = "Paragraph"
            Paragraph.Parent = Page
            Paragraph.AnchorPoint = Vector2.new(0.5, 0.5)
            Paragraph.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Paragraph.Position = UDim2.new(0.49999997, 0, 0.465313673, 0)
            Paragraph.Size = UDim2.new(0, 442, 0, 84)

            UICorner_18.CornerRadius = UDim.new(0, 4)
            UICorner_18.Parent = Paragraph

            ParagraphTitle.Name = "ParagraphTitle"
            ParagraphTitle.Parent = Paragraph
            ParagraphTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ParagraphTitle.BackgroundTransparency = 1.000
            ParagraphTitle.Position = UDim2.new(0.0233643129, 0, 0.123152502, 0)
            ParagraphTitle.Size = UDim2.new(0, 425, 0, 13)
            ParagraphTitle.Font = Enum.Font.GothamBold
            ParagraphTitle.Text = title or "this is a paragraph"
            ParagraphTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
            ParagraphTitle.TextScaled = true
            ParagraphTitle.TextSize = 14.000
            ParagraphTitle.TextWrapped = true
            ParagraphTitle.TextXAlignment = Enum.TextXAlignment.Left

            ParagraphBody.Name = "ParagraphBody"
            ParagraphBody.Parent = Paragraph
            ParagraphBody.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            ParagraphBody.BackgroundTransparency = 1.000
            ParagraphBody.Position = UDim2.new(0.0233643129, 0, 0.313628793, 0)
            ParagraphBody.Size = UDim2.new(0, 423, 0, 51)
            ParagraphBody.Font = Enum.Font.GothamMedium
            ParagraphBody.Text = body or "This is the paragraph body, you can put anthything you want here, even if its very long, text will be automatically wrapped and sized for you, no need to worry how long it is, it will automatically expand accordingly, see how much i have in the body? makes me feel like this can go a looong way."
            ParagraphBody.TextColor3 = Color3.fromRGB(223, 223, 223)
            ParagraphBody.TextSize = 12.000
            ParagraphBody.TextWrapped = true
            ParagraphBody.TextXAlignment = Enum.TextXAlignment.Left
            ParagraphBody.TextYAlignment = Enum.TextYAlignment.Top

            -- make it size according to the amount of text in the body
            ParagraphBody.Size = UDim2.new(0, 423, 0, ParagraphBody.TextBounds.Y) -- set the height of the body to the height of the text
            Paragraph.Size = UDim2.new(0, 442, 0, ParagraphBody.TextBounds.Y + 30) -- add 30 to the height of the paragraph to make it look better
        end

        function elements:DynamicInput(name, PlaceHolderText, callback)
            local Input = Instance.new("Frame")
            local UICorner_19 = Instance.new("UICorner")
            local InputText = Instance.new("TextLabel")
            local InputBox = Instance.new("TextBox")
            local UICorner_20 = Instance.new("UICorner")

            Input.Name = "Input"
            Input.Parent = Page
            Input.AnchorPoint = Vector2.new(0.5, 0.5)
            Input.BackgroundColor3 = Color3.fromRGB(40, 40, 40)
            Input.Position = UDim2.new(0.390350908, 0, 0.180983067, 0)
            Input.Size = UDim2.new(0, 442, 0, 29)

            UICorner_19.CornerRadius = UDim.new(0, 4)
            UICorner_19.Parent = Input

            InputText.Name = "InputText"
            InputText.Parent = Input
            InputText.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
            InputText.BackgroundTransparency = 1.000
            InputText.Position = UDim2.new(0.0211018696, 0, 0.242200121, 0)
            InputText.Size = UDim2.new(0, 208, 0, 13)
            InputText.Font = Enum.Font.GothamBold
            InputText.Text = name or "Input"
            InputText.TextColor3 = Color3.fromRGB(255, 255, 255)
            InputText.TextScaled = true
            InputText.TextSize = 14.000
            InputText.TextWrapped = true
            InputText.TextXAlignment = Enum.TextXAlignment.Left

            InputBox.Name = "InputBox"
            InputBox.Parent = Input
            InputBox.AnchorPoint = Vector2.new(1, 0.5)
            InputBox.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
            InputBox.Position = UDim2.new(0.985, 0, 0.483, 0)
            InputBox.Size = UDim2.new(0, 49, 0, 20)
            InputBox.Font = Enum.Font.GothamMedium
            InputBox.PlaceholderText = PlaceHolderText or "Input"
            InputBox.Text = ""
            InputBox.TextColor3 = Color3.fromRGB(255, 255, 255)
            InputBox.TextSize = 12.000
            InputBox.TextWrapped = true

            UICorner_20.CornerRadius = UDim.new(0, 4)
            UICorner_20.Parent = InputBox

            InputBox.Size = UDim2.new(0, InputBox.TextBounds.X + 10, 0, 20) -- set the width of the input box to the width of the text

            -- When the Text changes, Increase the Width of the InputBox
            InputBox:GetPropertyChangedSignal("TextBounds"):Connect(function()
                InputBox.Size = UDim2.new(0, InputBox.TextBounds.X + 10, 0, 20)
            end)

            InputBox.FocusLost:Connect(function(enterPressed)
                if enterPressed then
                    local text = InputBox.Text
                    callback(text)
                    wait(0.1)
                    InputBox.Text = ""
                end
            end)
        end

        return elements
    end 

    return lib2
end
return lib
