-- Gui to Lua
-- Version: 3.2

-- Instances:

local QuickMessage = Instance.new("ScreenGui")
local Topbar = Instance.new("Frame")
local QuickMessageTitle = Instance.new("TextLabel")
local Frame = Instance.new("Frame")
local ScrollingFrame = Instance.new("ScrollingFrame")
local UIListLayout = Instance.new("UIListLayout")
local DefaultTextButton = Instance.new("TextButton")
local Input = Instance.new("TextBox")
local Delete = Instance.new("TextButton")
local Add = Instance.new("TextButton")
local Close = Instance.new("TextButton")
local BoolValue = Instance.new("BoolValue")

--Properties:

QuickMessage.Name = "QuickMessage"
QuickMessage.Parent = game:WaitForChild("CoreGui")
QuickMessage.ResetOnSpawn = false

Topbar.Name = "Topbar"
Topbar.Parent = QuickMessage
Topbar.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Topbar.BorderColor3 = Color3.fromRGB(48, 48, 48)
Topbar.BorderSizePixel = 0
Topbar.Position = UDim2.new(0, 123, 0, 312)
Topbar.Size = UDim2.new(0, 430, 0, 25)

QuickMessageTitle.Name = "QuickMessageTitle"
QuickMessageTitle.Parent = Topbar
QuickMessageTitle.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
QuickMessageTitle.BackgroundTransparency = 1.000
QuickMessageTitle.Position = UDim2.new(-0.00118450786, 0, -0.0399999991, 0)
QuickMessageTitle.Size = UDim2.new(0, 430, 0, 25)
QuickMessageTitle.Font = Enum.Font.SciFi
QuickMessageTitle.Text = "QuickMessage v.1.0"
QuickMessageTitle.TextColor3 = Color3.fromRGB(255, 255, 255)
QuickMessageTitle.TextSize = 16.000
QuickMessageTitle.TextWrapped = true

Frame.Parent = Topbar
Frame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
Frame.BorderSizePixel = 0
Frame.Position = UDim2.new(0, 0, 0.979613066, 0)
Frame.Size = UDim2.new(0, 429, 0, 265)

ScrollingFrame.Parent = Frame
ScrollingFrame.Active = true
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(30, 30, 30)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(0.00118450786, 0, 0.00192329835, 0)
ScrollingFrame.Size = UDim2.new(0, 429, 0, 209)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 1, 0)
ScrollingFrame.ScrollBarThickness = 2
ScrollingFrame.AutomaticCanvasSize = "Y"

UIListLayout.Parent = ScrollingFrame
UIListLayout.SortOrder = Enum.SortOrder.LayoutOrder
UIListLayout.Padding = UDim.new(0, 3)

Input.Name = "Input"
Input.Parent = Frame
Input.BackgroundColor3 = Color3.fromRGB(33, 33, 33)
Input.BorderColor3 = Color3.fromRGB(48, 48, 48)
Input.BorderSizePixel = 0
Input.Position = UDim2.new(0, 0, 0.792452931, 0)
Input.Size = UDim2.new(0, 320, 0, 55)
Input.Font = Enum.Font.SourceSans
Input.PlaceholderText = "Input"
Input.Text = ""
Input.TextColor3 = Color3.fromRGB(255, 255, 255)
Input.TextSize = 14.000
Input.TextWrapped = true

Delete.Name = "Delete"
Delete.Parent = Frame
Delete.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Delete.BorderColor3 = Color3.fromRGB(27, 42, 53)
Delete.BorderSizePixel = 0
Delete.Position = UDim2.new(0.872093022, 0, 0.792452812, 0)
Delete.Size = UDim2.new(0, 55, 0, 55)
Delete.Font = Enum.Font.SourceSans
Delete.Text = "-"
Delete.TextColor3 = Color3.fromRGB(255, 255, 255)
Delete.TextSize = 40.000

Add.Name = "Add"
Add.Parent = Frame
Add.BackgroundColor3 = Color3.fromRGB(27, 27, 27)
Add.BorderSizePixel = 0
Add.Position = UDim2.new(0.744186044, 0, 0.792452812, 0)
Add.Size = UDim2.new(0, 55, 0, 55)
Add.Font = Enum.Font.SourceSans
Add.Text = "+"
Add.TextColor3 = Color3.fromRGB(255, 255, 255)
Add.TextSize = 40.000

Close.Name = "Close"
Close.Parent = Topbar
Close.BackgroundColor3 = Color3.fromRGB(216, 0, 0)
Close.BorderSizePixel = 0
Close.Position = UDim2.new(0.920930266, 0, 0, 0)
Close.Size = UDim2.new(0, 34, 0, 24)
Close.Font = Enum.Font.SourceSans
Close.Text = "×"
Close.TextColor3 = Color3.fromRGB(0, 0, 0)
Close.TextSize = 24.000

BoolValue.Name = "DeleteEnabled"
BoolValue.Parent = ScrollingFrame

-- Scripts:

local function CRXUT_fake_script() -- QuickMessage.Print 
	local script = Instance.new('LocalScript', QuickMessage)

	print("QuickMessage v.1.0 Made with ❤ by Lozarth")
end
coroutine.wrap(CRXUT_fake_script)()
local function TKHQ_fake_script() -- Topbar.Dragify 
	local script = Instance.new('LocalScript', Topbar)

	local UIS = game:GetService("UserInputService")
	function dragify(Frame)
	    dragToggle = nil
	    local dragSpeed = 0
	    dragInput = nil
	    dragStart = nil
	    local dragPos = nil
	    function updateInput(input)
	        local Delta = input.Position - dragStart
	        local Position = UDim2.new(startPos.X.Scale, startPos.X.Offset + Delta.X, startPos.Y.Scale, startPos.Y.Offset + Delta.Y)
	        game:GetService("TweenService"):Create(Frame, TweenInfo.new(0.25), {Position = Position}):Play()
	    end
	    Frame.InputBegan:Connect(function(input)
	        if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) and UIS:GetFocusedTextBox() == nil then
	            dragToggle = true
	            dragStart = input.Position
	            startPos = Frame.Position
	            input.Changed:Connect(function()
	                if input.UserInputState == Enum.UserInputState.End then
	                    dragToggle = false
	                end
	            end)
	        end
	    end)
	    Frame.InputChanged:Connect(function(input)
	        if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
	            dragInput = input
	        end
	    end)
	    game:GetService("UserInputService").InputChanged:Connect(function(input)
	        if input == dragInput and dragToggle then
	            updateInput(input)
	        end
	    end)
	end
	
	dragify(script.Parent)
end
coroutine.wrap(TKHQ_fake_script)()

local function VMCQAJ_fake_script() -- Delete.LocalScript 
	local script = Instance.new('LocalScript', Delete)

	script.Parent.MouseButton1Click:Connect(function()
		if script.Parent.Parent.ScrollingFrame.DeleteEnabled.Value == false then
			script.Parent.Parent.ScrollingFrame.DeleteEnabled.Value = true
		else
			script.Parent.Parent.ScrollingFrame.DeleteEnabled.Value = false
		end
	end)
end
coroutine.wrap(VMCQAJ_fake_script)()
local function NWSAMHR_fake_script() -- Add.LocalScript 
	local script = Instance.new('LocalScript', Add)

	script.Parent.MouseButton1Click:Connect(function()
		local NewText = Instance.new("TextButton")
		NewText.Parent = script.Parent.Parent.ScrollingFrame
		--<setting values>
		NewText.Size = UDim2.new(0, 428, 0, 50)
		NewText.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
		NewText.BorderSizePixel = 0
		NewText.Font = "Arial"
		NewText.TextSize = 14
		NewText.TextColor3 = Color3.new(1, 1, 1)
		NewText.TextWrapped = true
		--</settingvalues>
		NewText:SetAttribute("Text", script.Parent.Parent.Input.Text)
		NewText.Text = NewText:GetAttribute("Text")
		if NewText.Parent.DeleteEnabled.Value == false then
			NewText.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
		else
			NewText.BackgroundColor3 = Color3.new(0.756863, 0, 0)
		end
		local function RETARD_fake_script() -- Close.LocalScript 
			local script = Instance.new('Script', NewText)

			script.Parent.MouseButton1Click:Connect(function()
				if script.Parent.Parent.DeleteEnabled.Value == false then
					local args = {
						[1] = script.Parent:GetAttribute("Text"),
						[2] = "All",
					}
					game:GetService("ReplicatedStorage").DefaultChatSystemChatEvents.SayMessageRequest:FireServer(unpack(args))
				else
					script.Parent:Destroy()
				end
			end)

			script.Parent.Parent.DeleteEnabled.Changed:Connect(function()
				if script.Parent.Parent.DeleteEnabled.Value == true then
					script.Parent.BackgroundColor3 = Color3.new(0.756863, 0, 0)
				else
					script.Parent.BackgroundColor3 = Color3.new(0.137255, 0.137255, 0.137255)
				end
			end)
		end
		coroutine.wrap(RETARD_fake_script)()
	end)
end
coroutine.wrap(NWSAMHR_fake_script)()
local function VPRGRU_fake_script() -- Close.LocalScript 
	local script = Instance.new('LocalScript', Close)

	script.Parent.MouseButton1Click:Connect(function()
		script.Parent.Parent.Parent:Destroy()
	end)
end
coroutine.wrap(VPRGRU_fake_script)()
