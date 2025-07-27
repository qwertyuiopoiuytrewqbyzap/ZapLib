--!nonstrict
isfolder, makefolder, isfile, writefile, readfile, get_hidden_gui, gethui = isfolder, makefolder, isfile, writefile, readfile, get_hidden_gui, gethui

local Fixer = Instance.new("ScreenGui")
Fixer.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
Fixer.ResetOnSpawn = false
local TempFrame = Instance.new("Frame", Fixer)
TempFrame.Size = UDim2.new(0, 0, 0.85, 0)
while task.wait() do if TempFrame.AbsoluteSize.Y > 0 then break end end
local Height = TempFrame.AbsoluteSize.Y
Fixer:Destroy()

local Players = game:GetService('Players')
local LocalPlayer = Players.LocalPlayer
local RunService = game:GetService('RunService')
local HttpService = game:GetService("HttpService")
local UserInputService = game:GetService("UserInputService")
local TweenService = game:GetService("TweenService")

local Library = {
	Flags = {}, 
	SelectedTab = nil, 
	Tabs = {}, 
}

local hiddenUI = get_hidden_gui or gethui
local True, UseParent = pcall(function()
	return game:GetService('CoreGui').RobloxGui
end)

UseParent = (hiddenUI and hiddenUI()) or (True and UseParent) or LocalPlayer.PlayerGui

if UseParent:FindFirstChild("ZapLib Close/Open") then
	UseParent["ZapLib Close/Open"]:Destroy()
end

local ScreenGui
if hiddenUI or not True then
	ScreenGui = Instance.new("ScreenGui")
	ScreenGui.Name = "ZapLib Close/Open"
	ScreenGui.Parent = UseParent
	ScreenGui.ResetOnSpawn = false
	ScreenGui.IgnoreGuiInset = true
	ScreenGui.Enabled = false
end

local Frame_1 = Instance.new("Frame", ScreenGui or UseParent)
Frame_1.BackgroundTransparency = 1
Frame_1.Size = UDim2.new(1, 0, 0, 36)

local Frame_2 = Instance.new("Frame", Frame_1)
Frame_2.BackgroundTransparency = 1
Frame_2.LayoutOrder = 1
Frame_2.Size = UDim2.new(0, 100, 0, 32)
Frame_2.Position = UDim2.new(0.5, 0, 0, 15)
Frame_2.AnchorPoint = Vector2.new(0.5, 0)

local TextButton = Instance.new("TextButton", Frame_2)
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BackgroundTransparency = 0.6
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 1, 0)
TextButton.ZIndex = 10
TextButton.AutoButtonColor = false
TextButton.Text = ""
TextButton.TextTransparency = 1

local UICorner = Instance.new("UICorner", TextButton)
UICorner.CornerRadius = UDim.new(0.25, 0)

local TextLabel = Instance.new("TextLabel", TextButton)
TextLabel.AnchorPoint = Vector2.new(0, 0.5)
TextLabel.BackgroundTransparency = 1
TextLabel.ClipsDescendants = true
TextLabel.Position = UDim2.new(0, 40, 0.5, 0)
TextLabel.Size = UDim2.new(1, -52, 0.45, 7)
TextLabel.ZIndex = 11
TextLabel.Font = Enum.Font.GothamMedium
TextLabel.Text = "Close"
TextLabel.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel.TextSize = 14
TextLabel.TextXAlignment = Enum.TextXAlignment.Left

local ImageLabel = Instance.new("ImageLabel", TextButton)
ImageLabel.AnchorPoint = Vector2.new(0, 0.5)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Position = UDim2.new(0, 12, 0.5, 0)
ImageLabel.Size = UDim2.new(0, 20, 0.63, 0)
ImageLabel.ZIndex = 11
ImageLabel.Image = "http://www.roblox.com/asset/?id=15637381756"
ImageLabel.ScaleType = Enum.ScaleType.Fit

for _, v in ipairs(ScreenGui:GetDescendants()) do
	v.Name = math.random()
end

local MainUi

if not True then
	MainUi = script.ScriptedUI.Value
	for FuncName, Func in pairs(require(script.FileSystem)) do
		getfenv()[FuncName] = Func
	end
else
	for _, PreviusUI in ipairs(UseParent:GetChildren()) do
		if PreviusUI.Name == "ScriptedUI" then
			PreviusUI:Destroy()
		end
	end

	MainUi = loadstring(game:HttpGet("https://raw.githubusercontent.com/qwertyuiopoiuytrewqbyzap/ZapLib/refs/heads/main/GUI.lua"))
	if type(MainUi) ~= "function" then
		return warn("Failed to Load - ZapLib")
	end

	MainUi = MainUi()
end

MainUi.Name = "ScriptedUI"
MainUi.Parent = UseParent

local BackgroundFrame = MainUi.BackgroundFrame
BackgroundFrame.Visible = false
local FrameScale = BackgroundFrame:FindFirstChildWhichIsA("UIScale")
FrameScale.Scale = 1

local BackgrounNotification = MainUi.BackgrounNotification.Notifications
BackgrounNotification.Template.Visible = false
local NotifyScale = MainUi.BackgrounNotification:FindFirstChildWhichIsA("UIScale")
NotifyScale.Scale = 1

local Top = BackgroundFrame.Top
local CloseButton = Top.CloseButton
local UITitle = Top.UITitle
local Bottom = BackgroundFrame.Bottom
local SettingsButton = Bottom.SettingsButton
local WelcomeText = Bottom.WelcomeFrame.WelcomeText
local Avatar = Bottom.WelcomeFrame.AvatarBorder.Avatar
local Options = BackgroundFrame.Options
local TabButtons = Options.TabButtons
local frame = BackgroundFrame

local dragToggle = nil
local dragSpeed = 0.2
local dragStart = nil
local startPos = nil

local ConfigurationFolder = "ZapLib"
local ConfigurationFile = "ZapHubFolder.zaplib"
local ZapPath = ConfigurationFolder .. "/" .. ConfigurationFile

if not isfolder(ConfigurationFolder) then
	makefolder(ConfigurationFolder)
end

if not isfile(ZapPath) then
	writefile(ZapPath, "")
end

local function LoadConfiguration()
	local Data, Loaded = {}, false
	if type(_G.ZapSettings) == "table" then
		Data, Loaded = _G.ZapSettings, true
	elseif isfile(ZapPath) then
		pcall(function()
			Data, Loaded = HttpService:JSONDecode(readfile(ZapPath)), true
		end)
	end

	for FlagName, FlagValue in pairs(Data) do
		Library.Flags[FlagName] = FlagValue
	end

	table.clear(Data)
	return Loaded
end

local OldConfiguration = ""
local function SaveConfiguration()
	local Data = {}
	for FlagName, FlagValue in pairs(Library.Flags) do
		Data[FlagName] = FlagValue
	end

	local ActualConfiguration = HttpService:JSONEncode(Data)
	table.clear(Data)

	if OldConfiguration ~= ActualConfiguration then
		OldConfiguration = ActualConfiguration
		writefile(ZapPath, ActualConfiguration)
	end
end

local InputTweenInfo = TweenInfo.new(dragSpeed)
local function updateInput(input)
	local delta = input.Position - dragStart
	local position = UDim2.new(startPos.X.Scale, startPos.X.Offset + delta.X, startPos.Y.Scale, startPos.Y.Offset + delta.Y)
	TweenService:Create(frame, InputTweenInfo, {Position = position}):Play()
end

Top.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

Bottom.InputBegan:Connect(function(input)
	if (input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch) then 
		dragToggle = true
		dragStart = input.Position
		startPos = frame.Position
		input.Changed:Connect(function()
			if input.UserInputState == Enum.UserInputState.End then
				dragToggle = false
			end
		end)
	end
end)

UserInputService.InputChanged:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
		if dragToggle then
			updateInput(input)
		end
	end
end)

local CachedTime = {}
local function CreateAnimation(Waiting, Ins, Time, Data)
	local NewTweenInfo = CachedTime[Time]
	if not NewTweenInfo then
		NewTweenInfo = TweenInfo.new(Time, Enum.EasingStyle.Quad, Enum.EasingDirection.Out)
		CachedTime[Time] = NewTweenInfo
	end

	local Animation = TweenService:Create(Ins, NewTweenInfo, Data)

	Animation:Play()
	table.clear(Data)

	if Waiting == true then
		Animation.Completed:Wait()
	end
end

local OnToggle = true
function Library:Toggle()
	if OnToggle == true then
		OnToggle = false
		local SizeNeed = 1
		local SizeNeed2 = ((Height) / BackgroundFrame.Size.Y.Offset) - 0.35
		if SizeNeed2 < SizeNeed then
			FrameScale.Scale = SizeNeed2
			NotifyScale.Scale = SizeNeed2
		else
			FrameScale.Scale = SizeNeed
			NotifyScale.Scale = SizeNeed
		end

		if BackgroundFrame.Visible then
			TextLabel.Text = "Open"
			CreateAnimation(true, BackgroundFrame, 0.5, {Position = UDim2.new(0.5, 0, 1.5, 0)})
			BackgroundFrame.Visible = false
		else
			TextLabel.Text = "Close"
			BackgroundFrame.Visible = true
			CreateAnimation(true, BackgroundFrame, 0.5, {Position = UDim2.new(0.5, 0, 0.5, 0)})
		end
		OnToggle = true
	end
end

UserInputService.InputBegan:Connect(function(input, gameProcessedEvent)
	if input.KeyCode == Enum.KeyCode.RightControl then
		Library:Toggle()
	end
end)

CloseButton.MouseEnter:Connect(function()
	CreateAnimation(false, CloseButton, 0.25, {BackgroundColor3 = Color3.fromRGB(65, 65, 65)})
end)

CloseButton.MouseLeave:Connect(function()
	CreateAnimation(false, CloseButton, 0.25, {BackgroundColor3 = Color3.fromRGB(55, 55, 55)})
end)

CloseButton.MouseButton1Click:Connect(function()
	CreateAnimation(false, CloseButton, 0.25, {BackgroundColor3 = Color3.fromRGB(75, 75, 75)})
	Library:Toggle()
	CreateAnimation(false, CloseButton, 0.25, {BackgroundColor3 = Color3.fromRGB(55, 55, 55)})
end)

local Templates = BackgroundFrame.Tabs["! Template"]
Templates.Visible = false

local function CallbackCaller(Callback, ...)
	if type(Callback) == "function" then
		local NewCallBack = coroutine.wrap(Callback)
		local Succes, Error = pcall(NewCallBack, ...)
		if not Succes then
			warn("[ZapLib] Callback Error:", Error)
		end
	end
end

function Library:Notify(Settings)
	task.spawn(function()
		local Title, Content, Duration, Image = Settings.Title, Settings.Content, Settings.Duration, Settings.Image

		local Notification = BackgrounNotification.Template:Clone()
		Notification.Parent = BackgrounNotification
		Notification.Visible = true
		Notification.Size = UDim2.new(1, 0, 0, 0)

		local MainNotification = Notification.Main
		MainNotification.BackgroundTransparency = 1
		MainNotification.UIStroke.Transparency = 1

		local TitleFrame = MainNotification.TitleFrame
		local TitleText = TitleFrame.Icon.Title
		TitleText.Text = Title or "Unknown"
		TitleText.TextTransparency = 1

		local IconImage = TitleFrame.Icon

		if Image then
			IconImage.Image = (tonumber(Image) and "rbxassetid://"..Image) or Image
		else
			IconImage.Image = "rbxassetid://15642579187"
		end

		IconImage.ImageTransparency = 1

		local ContentText = MainNotification.Content
		ContentText.Text = Content or "Unknown"
		ContentText.Size = UDim2.new(1, 0, 0, ContentText.TextBounds.Y)
		ContentText.TextTransparency = 1

		local Velocity = 0.4

		local RealSize = UDim2.new(1, 0, 0, (TitleFrame.AbsoluteSize.Y + ContentText.AbsoluteSize.Y + MainNotification.BottomPadding.AbsoluteSize.Y) / NotifyScale.Scale)

		MainNotification.Position = UDim2.new(1.5, 0, 0.15, 0)

		CreateAnimation(false, Notification, Velocity, {Size = RealSize})
		task.wait(Velocity / 2)
		CreateAnimation(false, MainNotification, Velocity, {Position = UDim2.new(0, 0, 0, 0)})
		CreateAnimation(false, MainNotification, Velocity, {BackgroundTransparency = 0})
		CreateAnimation(false, MainNotification.UIStroke, 0.5, {Transparency = 0.75})
		CreateAnimation(false, TitleText, Velocity, {TextTransparency = 0})
		CreateAnimation(false, IconImage, Velocity, {ImageTransparency = 0.25})
		CreateAnimation(true, ContentText, Velocity, {TextTransparency = 0.25})

		task.wait(Duration or 5)

		CreateAnimation(false, MainNotification, Velocity, {BackgroundTransparency = 1})
		CreateAnimation(false, MainNotification.UIStroke, Velocity, {Transparency = 1})
		CreateAnimation(false, TitleText, Velocity, {TextTransparency = 1})
		CreateAnimation(false, IconImage, Velocity, {ImageTransparency = 1})
		CreateAnimation(true, ContentText, Velocity, {TextTransparency = 1})
		CreateAnimation(true, Notification, Velocity / 1.5, {Size = UDim2.new(1, 0, 0, 0)})

		Notification:Destroy()
	end)
end

function Library:CreateWindow(Settings)
	local Current, CurrentFunctions = {}, {}
	local Name, OpenButtonPosition = Settings.Name, Settings.OpenButtonPosition

	UITitle.Text = tostring(Name) or "ZapLib | By 'zap.xyz' and '1dnt'"

	local LocalPlayerName = LocalPlayer.Name
	local LocalPlayerNameLenght = math.ceil(#LocalPlayerName / 2)
	local CensoredPart = string.rep("*", LocalPlayerNameLenght)
	local VisiblePart = string.sub(LocalPlayerName, LocalPlayerNameLenght + 1)
	WelcomeText.Text = "Welcome, " .. CensoredPart .. VisiblePart

	Avatar.Image = Players:GetUserThumbnailAsync(LocalPlayer.UserId, Enum.ThumbnailType.HeadShot, Enum.ThumbnailSize.Size420x420)

	Frame_2.Position = OpenButtonPosition or UDim2.new(0.5, 0, 0, 15)

	if LoadConfiguration() then
		Library:Notify({
			Title = "Configuration Loaded", 
			Content = "The configuration of ZapHub has been loaded from a previous session.", 
			Duration = 5, 
			Image = 15642579187
		})
	end

	function Current:CreateTab(TabName, TabLogo)
		local TabFunctions = {}
		TabButtons.TabButton.Visible = false

		local TabsCount = #TabButtons:GetChildren()

		if TabsCount <= 10 then
			TabButtons.ScrollingEnabled = false
			TabButtons.ScrollBarImageTransparency = 1
			TabButtons.ScrollBarThickness = 0
		elseif TabsCount > 11 then
			TabButtons.ScrollingEnabled = true
			TabButtons.ScrollBarImageTransparency = 0.25
			TabButtons.ScrollBarThickness = 3

			Options.MouseEnter:Connect(function()
				CreateAnimation(false, TabButtons, 0.25, {ScrollBarImageTransparency = 0})
			end)

			Options.MouseLeave:Connect(function()
				CreateAnimation(false, TabButtons, 0.25, {ScrollBarImageTransparency = 0.25})
			end)
		end

		local OldTabButtonTextColor3 = TabButtons.TabButton.TextColor3
		local OldTabButtonBackgroundColor3 = TabButtons.TabButton.BackgroundColor3

		local TabButton = TabButtons.TabButton:Clone()
		TabButton.Name = TabName or "Tab"
		TabButton.Visible = true
		TabButton.Parent = TabButtons
		TabButton.BackgroundTransparency = #Library.Tabs == 0 and 0 or 1
		TabButton.BackgroundColor3 = #Library.Tabs == 0 and TabButton.BackgroundColor3 or Color3.fromRGB(35, 35, 35)
		TabButton.Icon.BackgroundColor3 = TabButton.BackgroundColor3
		if TabLogo then
			TabButton.Icon.Image = (tonumber(TabLogo) and "rbxassetid://"..TabLogo) or TabLogo
		else
			TabButton.Icon.Image = "rbxassetid://16259403210"
		end
		TabButton.Text = TabName or "Tab"
		TabButton.TextColor3 = #Library.Tabs == 0 and TabButton.TextColor3 or Color3.fromRGB(70, 70, 70)

		local OldsectionBGPosition = Templates.Position

		local sectionBG = Templates:Clone()
		sectionBG.Parent = BackgroundFrame.Tabs
		sectionBG.Visible = true
		sectionBG.Name = TabName or "Tab"
		sectionBG.Position = #Library.Tabs == 0 and OldsectionBGPosition or UDim2.new(0, 200, 1, 0)
		sectionBG.ScrollingFrame.Visible = false

		for i, v in ipairs(sectionBG.ScrollingFrame:GetChildren()) do
			if v:IsA("GuiObject") then
				v.Visible = false
			end
		end

		local ScrollingFrameReal = sectionBG.ScrollingFrame
		ScrollingFrameReal.Visible = true
		ScrollingFrameReal.Parent = sectionBG

		for _, v in ipairs(ScrollingFrameReal:GetChildren()) do
			if v:IsA("GuiObject") then
				if v.Visible == false then
					v:Destroy()
				end
			end
		end

		local UILayout = ScrollingFrameReal.UIListLayout

		local tabtable = {
			button = TabButton, 
			sectionBG = sectionBG, 
		}

		table.insert(Library.Tabs, tabtable)

		Library.SelectedTab = Library.SelectedTab or tabtable

		TabButton.MouseButton1Click:Connect(function()
			if TabButtons.Wait.Value == false and (not Library.SelectedTab or Library.SelectedTab.button ~= tabtable.button) then
				TabButtons.Wait.Value = true
				tabtable.sectionBG.ZIndex = 2
				for _, v in ipairs(BackgroundFrame.Tabs:GetChildren()) do
					if v.Name ~= "! Template" and v:IsA("GuiObject") then
						v.Visible = true
					end
				end

				task.spawn(function()
					task.wait(0.51)
					tabtable.sectionBG.ZIndex = 1
					TabButtons.Wait.Value = false
					for _, v in ipairs(BackgroundFrame.Tabs:GetChildren()) do
						if v.Name ~= "! Template" and v ~= tabtable.sectionBG and v:IsA("GuiObject") then
							v.Visible = false
						end
					end
				end)

				for _, v in ipairs(BackgroundFrame.Tabs:GetChildren()) do
					if v.Name ~= "! Template" and v ~= tabtable.sectionBG and v:IsA("GuiObject") then
						CreateAnimation(false, Library.SelectedTab.sectionBG, 0.5, {Position = UDim2.new(0, 200, 1, 0)})
					end
				end

				Library.SelectedTab.button.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
				Library.SelectedTab.button.Icon.BackgroundColor3 = Library.SelectedTab.button.BackgroundColor3
				Library.SelectedTab.button.BackgroundTransparency = 1
				Library.SelectedTab.button.TextColor3 = Color3.fromRGB(70, 70, 70)
				Library.SelectedTab = tabtable
				Library.SelectedTab.button.BackgroundColor3 = OldTabButtonBackgroundColor3
				Library.SelectedTab.button.Icon.BackgroundColor3 = Library.SelectedTab.button.BackgroundColor3
				Library.SelectedTab.button.BackgroundTransparency = 0
				Library.SelectedTab.button.TextColor3 = OldTabButtonTextColor3

				CreateAnimation(false, Library.SelectedTab.sectionBG, 0.5, {Position = OldsectionBGPosition})
			end
		end)

		function TabFunctions:CreateSection(SectionText)
			local Section = Templates.ScrollingFrame.Section:Clone()
			Section.Visible = true
			Section.Text = SectionText
			Section.Parent = ScrollingFrameReal

			local Table = {}

			function Table:Set(NewText)
				Section.Text = NewText
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateButton(Table)
			local Name, Callback = Table.Name, Table.Callback

			local Button = Templates.ScrollingFrame.Button:Clone()
			Button.Visible = true
			Button.Text = Name
			Button.Parent = ScrollingFrameReal

			local Image = Button.ImageLabel
			Image.ImageTransparency = 0.25

			Button.MouseEnter:Connect(function()
				CreateAnimation(false, Button, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
			end)

			Button.MouseLeave:Connect(function()
				CreateAnimation(false, Button, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
			end)

			Button.MouseButton1Click:Connect(function()
				CallbackCaller(Callback)
				CreateAnimation(false, Button, 0.5, {TextTransparency = 0})
				CreateAnimation(false, Image, 0.5, {ImageTransparency = 0})
				task.wait(0.5)
				CreateAnimation(false, Button, 0.5, {TextTransparency = 0.25})
				CreateAnimation(false, Image, 0.5, {ImageTransparency = 0.25})
			end)

			function Table:Set(NewText)
				Button.Text = NewText
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateToggle(Table)
			local Name, CurrentValue, Flag, Callback = Table.Name, Table.CurrentValue, Table.Flag, Table.Callback

			local Toggle = Templates.ScrollingFrame.Toggle:Clone()
			Toggle.Visible = true
			Toggle.Parent = ScrollingFrameReal

			local ToggleText = Toggle.ToggleText
			ToggleText.Name = Name
			ToggleText.Text = Name

			local Checkbox = Toggle.Checkbox
			Checkbox.Name = Name

			local ImageLabel = Checkbox.ImageLabel

			local EnabledFunction = false
			if Flag and Library.Flags[Flag] then
				EnabledFunction = Library.Flags[Flag]
			elseif type(CurrentValue) == "boolean" then
				EnabledFunction = CurrentValue
			end

			CallbackCaller(Callback, EnabledFunction)

			Toggle.MouseEnter:Connect(function()
				CreateAnimation(false, Toggle, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
			end)

			Toggle.MouseLeave:Connect(function()
				CreateAnimation(false, Toggle, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
			end)

			if not EnabledFunction then
				ImageLabel.ImageTransparency = 1
				ToggleText.TextTransparency = 0.25
				Checkbox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
			elseif EnabledFunction then
				ImageLabel.ImageTransparency = 0
				ToggleText.TextTransparency = 0
				Checkbox.BackgroundColor3 = Color3.fromRGB(100, 120, 140)
			end

			local function Execute()
				EnabledFunction = not EnabledFunction
				if not EnabledFunction then
					CreateAnimation(false, ImageLabel, 0.25, {ImageTransparency = 1})
					CreateAnimation(false, ToggleText, 0.25, {TextTransparency = 0.25})
					CreateAnimation(false, Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
				elseif EnabledFunction then
					CreateAnimation(false, ImageLabel, 0.25, {ImageTransparency = 0})
					CreateAnimation(false, ToggleText, 0.25, {TextTransparency = 0})
					CreateAnimation(false, Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(100, 120, 140)})
				end

				CallbackCaller(Callback, EnabledFunction)

				if Flag then
					Library.Flags[Flag] = EnabledFunction
					task.spawn(SaveConfiguration)
				end				
			end

			Toggle.MouseButton1Click:Connect(Execute)
			Checkbox.MouseButton1Click:Connect(Execute)

			function Table:Set(NewValue)
				EnabledFunction = not NewValue
				task.spawn(Execute)
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateSlider(Table)
			local Name, Range, Increment, Suffix, CurrentValue, Flag, Callback = Table.Name, Table.Range, Table.Increment, Table.Suffix, tonumber(Table.CurrentValue), Table.Flag, Table.Callback

			Increment = tonumber(Increment) or 1

			local DecimalFormat = "%.0f"
			if Increment < 1 then
				local DecimalPrecision = #(tostring(Increment):sub(3))

				DecimalFormat = "%." .. DecimalPrecision .."f"
			end

			local Slider = Templates.ScrollingFrame.Slider:Clone()
			Slider.Visible = true
			Slider.Parent = ScrollingFrameReal

			local SliderBG = Slider.SliderBG

			local SliderText = Slider.SliderText
			SliderText.Text = Name

			local SliderValue = Slider.SliderValue
			local MainBar = SliderBG.MainBar
			local Bar = MainBar.Bar

			local NewValue = CurrentValue
			if Flag and Library.Flags[Flag] then
				NewValue = tonumber(Library.Flags[Flag]) or NewValue
			end

			local Dragging = false

			CallbackCaller(Callback, NewValue)

			Bar.Size = UDim2.new((NewValue - Range[1])/(Range[2] - Range[1]), 0, 1, 0)

			Slider.MouseEnter:Connect(function()
				CreateAnimation(false, Slider, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
			end)

			Slider.MouseLeave:Connect(function()
				CreateAnimation(false, Slider, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
			end)

			SliderValue.Text = tostring(NewValue) .. " " .. (Suffix or "")

			task.spawn(function()
				local Last = NewValue
				while task.wait(1/24) do
					if NewValue ~= Last then
						Last = NewValue
						CreateAnimation(false, Bar, 0.25, {Size = UDim2.new((NewValue - Range[1])/(Range[2] - Range[1]), 0, 1, 0)})
					end
				end
			end)

			SliderBG.InputBegan:Connect(function(Input)
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
					Dragging = true 
				end 
			end)

			SliderBG.InputEnded:Connect(function(Input) 
				if Input.UserInputType == Enum.UserInputType.MouseButton1 or Input.UserInputType == Enum.UserInputType.Touch then 
					Dragging = false 
				end 
			end)

			SliderBG.MouseButton1Down:Connect(function(X)
				local Current = Bar.AbsolutePosition.X + Bar.AbsoluteSize.X
				local Start = Current
				local Location = 0
				local Loop
				Loop = RunService.Stepped:Connect(function()
					if not Dragging then
						CreateAnimation(false, Bar, 0.25, {Size = UDim2.new((NewValue - Range[1])/(Range[2] - Range[1]), 0, 1, 0)})
						return Loop:Disconnect()
					end

					Location = UserInputService:GetMouseLocation().X
					Current = Current + 0.025 * (Location - Start)

					if Location < SliderBG.AbsolutePosition.X then
						Location = SliderBG.AbsolutePosition.X
					elseif Location > SliderBG.AbsolutePosition.X + SliderBG.AbsoluteSize.X then
						Location = SliderBG.AbsolutePosition.X + SliderBG.AbsoluteSize.X
					end

					if Current < SliderBG.AbsolutePosition.X + 5 then
						Current = SliderBG.AbsolutePosition.X + 5
					elseif Current > SliderBG.AbsolutePosition.X + SliderBG.AbsoluteSize.X then
						Current = SliderBG.AbsolutePosition.X + SliderBG.AbsoluteSize.X
					end

					if Current <= Location and (Location - Start) < 0 then
						Start = Location
					elseif Current >= Location and (Location - Start) > 0 then
						Start = Location
					end

					NewValue = Range[1] + (Location - SliderBG.AbsolutePosition.X) / SliderBG.AbsoluteSize.X * (Range[2] - Range[1])
					NewValue = tonumber(string.format(DecimalFormat, NewValue + (0.5 * Increment)))

					SliderValue.Text = tostring(NewValue) .. " " .. (Suffix or "")

					if CurrentValue ~= NewValue then
						CallbackCaller(Callback, NewValue)

						if Flag then
							Library.Flags[Flag] = NewValue
							task.spawn(SaveConfiguration)
						end

						CurrentValue = NewValue
					end
				end)
			end)

			function Table:Set(UpdatedValue)
				NewValue = tonumber(UpdatedValue) or NewValue
				CallbackCaller(Callback, NewValue)

				if Flag then
					Library.Flags[Flag] = NewValue
					task.spawn(SaveConfiguration)
				end

				SliderValue.Text = tostring(NewValue) .. " " .. (Suffix or "")
				CreateAnimation(false, Bar, 0.25, {Size = UDim2.new((NewValue - Range[1])/(Range[2] - Range[1]), 0, 1, 0)})
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateInput(Table)
			local Name, PlaceholderText, RemoveTextAfterFocusLost, Flag, Callback = Table.Name, Table.PlaceholderText, Table.RemoveTextAfterFocusLost, Table.Flag, Table.Callback

			local TextBox = Templates.ScrollingFrame.TextBox:Clone()
			TextBox.Visible = true
			TextBox.Parent = ScrollingFrameReal

			local BoxText = TextBox.BoxText
			BoxText.Text = Name

			local Box = TextBox.TextBox
			Box.PlaceholderText = PlaceholderText
			Box.TextEditable = true
			Box.TextTransparency = 0

			TextBox.MouseEnter:Connect(function()
				CreateAnimation(false, TextBox, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
			end)

			TextBox.MouseLeave:Connect(function()
				CreateAnimation(false, TextBox, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
			end)

			if Flag and Library.Flags[Flag] then
				Box.Text = Library.Flags[Flag]
			end

			CallbackCaller(Callback, Library.Flags[Flag])

			Box.Focused:Connect(function()
				CreateAnimation(false, Box, 0.25, {TextTransparency = 0})
			end)

			Box.FocusLost:Connect(function()
				CallbackCaller(Callback, Box.Text)

				if Flag then
					Library.Flags[Flag] = Box.Text
					task.spawn(SaveConfiguration)
				end

				if RemoveTextAfterFocusLost then
					Box.TextEditable = false
					CreateAnimation(true, Box, 0.25, {TextTransparency = 1})
					Box.Text = ""
					CreateAnimation(false, Box, 0.25, {TextTransparency = 0.25})
					Box.TextEditable = true
				else
					CreateAnimation(false, Box, 0.25, {TextTransparency = 0.25})
				end
			end)

			function Table:Set(NewText)
				CallbackCaller(Callback, NewText)

				Box.TextEditable = false
				CreateAnimation(true, Box, 0.25, {TextTransparency = 1})
				Box.Text = NewText
				CreateAnimation(false, Box, 0.25, {TextTransparency = 0.25})
				Box.TextEditable = true
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateKeybind(Table)
			local Name, CurrentKeybind, HoldToInteract, Flag, Callback = Table.Name, Table.CurrentKeybind, Table.HoldToInteract, Table.Flag, Table.Callback

			if Flag and Library.Flags[Flag] then
				CurrentKeybind = Library.Flags[Flag]
			end

			if not string.find(tostring(CurrentKeybind), "Enum.") then
				CurrentKeybind = Enum.KeyCode[CurrentKeybind]
			end

			local KeyBind = Templates.ScrollingFrame.KeyBind:Clone()
			KeyBind.Visible = true
			KeyBind.Parent = ScrollingFrameReal

			local KeyBox = KeyBind.KeyBox
			KeyBox.Text = CurrentKeybind.Name

			local NameText = KeyBind.TextName
			NameText.Text = Name

			local CheckingForKey = false

			KeyBind.MouseEnter:Connect(function()
				CreateAnimation(false, KeyBind, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
			end)

			KeyBind.MouseLeave:Connect(function()
				CreateAnimation(false, KeyBind, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
			end)

			local ActualKey = CurrentKeybind
			local FirstTouchKey = true
			local CoolDown = tick()

			KeyBox.MouseButton1Click:Connect(function()
				CreateAnimation(true, KeyBox, 0.12, {TextTransparency = 1})
				KeyBox.Text = "Select a Key"
				CreateAnimation(false, KeyBox, 0.12, {TextTransparency = 0.25})
				UserInputService.InputBegan:Once(function(input)
					if input.KeyCode.Name ~= "Unknown" then 
						ActualKey = input.KeyCode
						if Flag then
							Library.Flags[Flag] = ActualKey.Name
							task.spawn(SaveConfiguration)
						end
					end

					FirstTouchKey, CoolDown = false, tick()
					CreateAnimation(true, KeyBox, 0.12, {TextTransparency = 1})
					KeyBox.Text = ActualKey.Name
					CreateAnimation(false, KeyBox, 0.12, {TextTransparency = 0.25})
				end)
			end)

			if not HoldToInteract then
				UserInputService.InputBegan:Connect(function(input)
					if input.KeyCode == ActualKey and tick() - CoolDown > 0.1 then
						CallbackCaller(Callback)
						CreateAnimation(true, KeyBox, 0.25, {TextTransparency = 0})
						CreateAnimation(false, KeyBox, 0.25, {TextTransparency = 0.25})
					end
				end)
			else
				UserInputService.InputBegan:Connect(function(input)
					if input.KeyCode == ActualKey and tick() - CoolDown > 0.1 then
						CallbackCaller(Callback, true)
						CreateAnimation(false, KeyBox, 0.25, {TextTransparency = 0})
					end
				end)

				UserInputService.InputEnded:Connect(function(input)
					if input.KeyCode == ActualKey then
						if FirstTouchKey then
							CallbackCaller(Callback, false)
							CreateAnimation(false, KeyBox, 0.25, {TextTransparency = 0.25})
						else
							FirstTouchKey = true
						end
					end
				end)
			end

			function Table:Set(NewKey)
				local NewKeyCode
				if not string.find(tostring(NewKey), "Enum.") then
					warn("Please use Enum.KeyCode: From '" .. Name .. "'  - ZapLib")
					NewKeyCode = Enum.KeyCode[NewKey]
				else
					NewKeyCode = NewKey
				end
				if ActualKey ~= NewKeyCode then
					ActualKey = NewKeyCode
					FirstTouchKey = true
					CreateAnimation(true, KeyBox, 0.12, {TextTransparency = 1})
					KeyBox.Text = ActualKey.Name
					CreateAnimation(false, KeyBox, 0.12, {TextTransparency = 0.25})
				end
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateDropdown(Table)
			local Name, Options, CurrentOption, Flag, Callback = Table.Name, Table.Options, Table.CurrentOption, Table.Flag, Table.Callback

			local DropdownMain = Templates.ScrollingFrame.DropdownMain:Clone()
			DropdownMain.Size = UDim2.new(0.975, 0, 0, 50)
			DropdownMain.Parent = ScrollingFrameReal
			DropdownMain.Visible = true

			local Dropdown = DropdownMain.Dropdown
			local NameText = Dropdown.NameText
			NameText.Text = Name

			local OptionText = Dropdown.OptionText
			OptionText.Text = CurrentOption or "Select a Option"

			if Flag and Library.Flags[Flag] then
				CurrentOption = Library.Flags[Flag]
				OptionText.Text = CurrentOption
			end

			local FrameList = Dropdown.FrameList
			FrameList.Visible = false

			local List = FrameList.List
			List.ScrollingEnabled = false
			List.ScrollBarImageTransparency = 1
			List.ScrollBarThickness = 0
			List.Option.Visible = false
			List.Visible = false
			
			local OptionTemplate = List.Option

			local BrowserTextBox = List.Browser.TextBox

			local Enabled = true
			local NeedOpen = true
			local NewOption = CurrentOption

			if CurrentOption then
				CallbackCaller(Callback, CurrentOption)
			end

			DropdownMain.MouseEnter:Connect(function()
				CreateAnimation(false, DropdownMain, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
				CreateAnimation(false, Dropdown, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
				CreateAnimation(false, FrameList, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
				if #Options > 3 then
					CreateAnimation(false, List, 0.25, {ScrollBarImageTransparency = 0})
				end
			end)

			DropdownMain.MouseLeave:Connect(function()
				CreateAnimation(false, DropdownMain, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
				CreateAnimation(false, Dropdown, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
				CreateAnimation(false, FrameList, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
				if #Options > 3 then
					CreateAnimation(false, List, 0.25, {ScrollBarImageTransparency = 0.25})
				end
			end)

			BrowserTextBox.Focused:Connect(function()
				CreateAnimation(false, BrowserTextBox, 0.25, {TextTransparency = 0})
			end)

			BrowserTextBox.FocusLost:Connect(function()
				CreateAnimation(false, BrowserTextBox, 0.25, {TextTransparency = 0.25})

				for _, Option in ipairs(List:GetChildren()) do
					if Option ~= OptionTemplate then
						if BrowserTextBox.Text ~= "" and not string.find(Option.Text, BrowserTextBox.Text) then
							Option.Visible = false
						else
							Option.Visible = true
						end
					end
				end
			end)

			local OptionsObjectRefer = {}
			local function OptionsMaker(TableList)
				local Connections = {}

				for _, v in ipairs(TableList) do
					local OptionConnections = {}

					local Option = OptionTemplate:Clone()
					Option.Parent = List
					Option.Visible = true
					Option.Text = v

					table.insert(OptionConnections, Option.MouseEnter:Connect(function()
						CreateAnimation(false, Option, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
						CreateAnimation(false, Option, 0.25, {TextTransparency = 0})
					end))

					table.insert(OptionConnections, Option.MouseLeave:Connect(function()
						CreateAnimation(false, Option, 0.25, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
						CreateAnimation(false, Option, 0.25, {TextTransparency = 0.2})
					end))

					table.insert(OptionConnections, Option.MouseButton1Click:Connect(function()
						if Enabled == true then
							Enabled = false
							if v ~= NewOption then
								CallbackCaller(Callback, v)

								if Flag then
									Library.Flags[Flag] = v
									task.spawn(SaveConfiguration)
								end

								OptionText.Text = v
								NewOption = v
							end

							if #TableList < 3 then
								CreateAnimation(false, Dropdown.Icon, 0.2, {Rotation = 0})
								CreateAnimation(true, DropdownMain, 0.2, {Size = UDim2.new(0.975, 0, 0, 50)})
							else
								CreateAnimation(false, Dropdown.Icon, 0.3, {Rotation = 0})
								CreateAnimation(true, DropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 50)})
							end

							FrameList.Visible = false
							List.Visible = false
							NeedOpen = true
							Enabled = true
						end
					end))

					Connections[v] = OptionConnections
				end

				return Connections
			end

			local OptionsConnections = OptionsMaker(Options)

			Dropdown.MouseButton1Click:Connect(function()
				if Enabled then
					if NeedOpen then
						Enabled = false
						FrameList.Visible = true
						List.Visible = true

						if #Options < 3 then
							CreateAnimation(false, Dropdown.Icon, 0.2, {Rotation = 180})
							CreateAnimation(true, DropdownMain, 0.2, {Size = UDim2.new(0.975, 0, 0, 195)})
						else
							CreateAnimation(false, Dropdown.Icon, 0.3, {Rotation = 180})
							CreateAnimation(true, DropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 240)})
						end

						NeedOpen = false
						Enabled = true
					else
						Enabled = false
						if #Options < 3 then
							CreateAnimation(false, Dropdown.Icon, 0.2, {Rotation = 0})
						else
							CreateAnimation(false, Dropdown.Icon, 0.3, {Rotation = 0})
						end

						CreateAnimation(true, DropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 50)})
						FrameList.Visible = false
						List.Visible = false

						NeedOpen = true
						Enabled = true
					end
				end
			end)

			local UILayout = List.UIListLayout
			local UIPadding = List.UIPadding

			local function UpdateCanvas(TableList)
				if #TableList < 3 then
					List.Size = UDim2.new(1, -5, 0, 150)
					List.ScrollingEnabled = false
				elseif #TableList == 3 then
					List.Size = UDim2.new(1, -5, 0, 195)
					List.ScrollingEnabled = false
				elseif #TableList > 3 then
					List.Size = UDim2.new(1, -5, 0, 195)
					List.ScrollingEnabled = true
					List.ScrollBarImageTransparency = 0.25
					List.ScrollBarThickness = 5
				end
			end

			task.spawn(UpdateCanvas, Options)

			function Table:Set(NewOptions) -- OPTIMIZAR, se pueden simplemente ignorar las que ya existan
				if Enabled then
					Enabled = false
					CreateAnimation(false, Dropdown.Icon, 0.3, {Rotation = 0})
					CreateAnimation(true, DropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 50)})
					FrameList.Visible = false
					List.Visible = false

					BrowserTextBox.Text = ""

					for _, Option in ipairs(List:GetChildren()) do
						if Option:IsA("TextButton") and Option ~= OptionTemplate then
							Option:Destroy()
						end
					end

					for i, OptionConnections in pairs(OptionsConnections) do
						for i, Connections in ipairs(OptionConnections) do
							Connections:Disconnect()
						end

						table.clear(OptionConnections)
					end

					table.clear(OptionsConnections)

					Options = NewOptions
					OptionsConnections = OptionsMaker(Options)
					task.spawn(UpdateCanvas, Options)

					NeedOpen = true
					Enabled = true
				end
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateMultiDropdown(Table)	
			local Name, Options, CurrentOption, Flag, Callback = Table.Name, table.clone(Table.Options), Table.CurrentOption, Table.Flag, Table.Callback

			local MultiDropdownMain = Templates.ScrollingFrame.MultiDropdownMain:Clone()
			MultiDropdownMain.Size = UDim2.new(0.975, 0, 0, 50)
			MultiDropdownMain.Parent = ScrollingFrameReal
			MultiDropdownMain.Visible = true

			local MultiDropdown = MultiDropdownMain.MultiDropdown
			local NameText = MultiDropdown.NameText
			NameText.Text = Name

			local PackedCurrentOption = {}
			
			if Flag and type(Library.Flags[Flag]) == "table" then
				PackedCurrentOption = Library.Flags[Flag]
			elseif type(CurrentOption) == "table" then
				PackedCurrentOption = CurrentOption
			end

			local OptionText = MultiDropdown.OptionText

			local Value = {}
			
			if #PackedCurrentOption == 0 then
				OptionText.Text = "Select Options"
			else
				OptionText.Text = "Options Selected"
			end

			local FrameList = MultiDropdown.FrameList
			FrameList.Visible = false

			local List = FrameList.List
			List.ScrollingEnabled = false
			List.ScrollBarImageTransparency = 1
			List.ScrollBarThickness = 0
			List.Option.Visible = false
			List.Visible = false

			local BrowserTextBox = List.MiscList.Browser.TextBox
			local TurnAllButton = List.MiscList.TurnAll
			
			local OptionTemplate = List.Option

			local Enabled = true
			local NeedOpen = true

			if PackedCurrentOption then
				CallbackCaller(Callback, PackedCurrentOption)
			end

			MultiDropdownMain.MouseEnter:Connect(function()
				CreateAnimation(false, MultiDropdownMain, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
				CreateAnimation(false, MultiDropdown, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
				CreateAnimation(false, FrameList, 0.25, {BackgroundColor3 = Color3.fromRGB(45, 45, 45)})
				if #Options > 3 then
					CreateAnimation(false, List, 0.25, {ScrollBarImageTransparency = 0})
				end
			end)

			MultiDropdownMain.MouseLeave:Connect(function()
				CreateAnimation(false, MultiDropdownMain, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
				CreateAnimation(false, MultiDropdown, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
				CreateAnimation(false, FrameList, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
				if #Options > 3 then
					CreateAnimation(false, List, 0.25, {ScrollBarImageTransparency = 0.25})
				end
			end)

			BrowserTextBox.Focused:Connect(function()
				CreateAnimation(false, BrowserTextBox, 0.25, {TextTransparency = 0})
			end)

			BrowserTextBox.FocusLost:Connect(function()
				CreateAnimation(false, BrowserTextBox, 0.25, {TextTransparency = 0.25})

				for _, Option in ipairs(List:GetChildren()) do
					if Option ~= OptionTemplate then
						if BrowserTextBox.Text ~= "" and not string.find(Option.Text, BrowserTextBox.Text) then
							Option.Visible = false
						else
							Option.Visible = true
						end
					end
				end
			end)

			local OldCallback, IgnoreChange = Callback, false
			local OldOptions = {}
			local OldTimeAll = tick()

			local OnOffFunction
			OnOffFunction = function()
				if tick() - OldTimeAll < 0.25 then return end

				local CurrentValue = not TurnAllButton:GetAttribute("All")

				TurnAllButton:SetAttribute("All", CurrentValue)

				if CurrentValue then
					CreateAnimation(false, TurnAllButton.Checkbox.ImageLabel, 0.25, {ImageTransparency = 0})
					CreateAnimation(false, TurnAllButton, 0.25, {TextTransparency = 0})
					CreateAnimation(false, TurnAllButton.Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(100, 120, 140)})
				else
					CreateAnimation(false, TurnAllButton.Checkbox.ImageLabel, 0.25, {ImageTransparency = 1})
					CreateAnimation(false, TurnAllButton, 0.25, {TextTransparency = 0.2})
					CreateAnimation(false, TurnAllButton.Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
				end

				IgnoreChange = true
				Callback = function()end

				local TotalMods = 0
				for _, Info in ipairs(OldOptions) do
					if CurrentValue and Info.Object.ImageTransparency == 1 then
						Enabled, PackedCurrentOption = true, {}
						task.spawn(Info.Function)
						TotalMods = TotalMods + 1
					elseif not CurrentValue and Info.Object.ImageTransparency ~= 1 then
						Enabled, PackedCurrentOption = true, {}
						task.spawn(Info.Function)
						TotalMods = TotalMods + 1
					end
				end

				IgnoreChange = false
				Callback = OldCallback

				if CurrentValue then
					PackedCurrentOption = table.clone(Options)
					CallbackCaller(Callback, Options)
				else
					PackedCurrentOption = {}
					CallbackCaller(Callback, {})
				end

				if Flag then
					Library.Flags[Flag] = PackedCurrentOption
					task.spawn(SaveConfiguration)
				end

				OldTimeAll = tick()
			end

			TurnAllButton.MouseButton1Click:Connect(OnOffFunction)
			TurnAllButton.Checkbox.MouseButton1Click:Connect(OnOffFunction)

			local function OptionsMaker(TableList)
				for _, v in ipairs(TableList) do
					local Option = OptionTemplate:Clone()
					Option.Parent = List
					Option.Visible = true
					Option.Text = v
					Option.Name = v

					local Checkbox = Option.Checkbox

					local ImageLabel = Checkbox.ImageLabel

					local EnabledFunction = false

					if table.find(PackedCurrentOption, v) then
						EnabledFunction = true
					end

					if not EnabledFunction then
						ImageLabel.ImageTransparency = 1
						Option.TextTransparency = 0.2
						Checkbox.BackgroundColor3 = Color3.fromRGB(25, 25, 25)
					elseif EnabledFunction then
						ImageLabel.ImageTransparency = 0
						Option.TextTransparency = 0
						Checkbox.BackgroundColor3 = Color3.fromRGB(100, 120, 140)
					end

					Option.MouseEnter:Connect(function()
						CreateAnimation(false, Option, 0.25, {BackgroundColor3 = Color3.fromRGB(35, 35, 35)})
						CreateAnimation(false, Option, 0.25, {TextTransparency = 0})
					end)

					Option.MouseLeave:Connect(function()
						CreateAnimation(false, Option, 0.25, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
						CreateAnimation(false, Option, 0.25, {TextTransparency = 0.2})
					end)

					local function MultiDropdownFunction(AllModifier)
						if Enabled == true then
							Enabled = false
							EnabledFunction = ImageLabel.ImageTransparency == 1--not EnabledFunction
							if EnabledFunction == true then
								if not table.find(PackedCurrentOption, v) then
									table.insert(PackedCurrentOption, v)
								end
							else
								if table.find(PackedCurrentOption, v) then
									table.remove(PackedCurrentOption, table.find(PackedCurrentOption, v))
								end
							end

							if AllModifier then
								if #PackedCurrentOption == #Options then
									TurnAllButton:SetAttribute("All", true)

									CreateAnimation(false, TurnAllButton.Checkbox.ImageLabel, 0.25, {ImageTransparency = 0})
									CreateAnimation(false, TurnAllButton, 0.25, {TextTransparency = 0})
									CreateAnimation(false, TurnAllButton.Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(100, 120, 140)})
								else
									TurnAllButton:SetAttribute("All", false)

									CreateAnimation(false, TurnAllButton.Checkbox.ImageLabel, 0.25, {ImageTransparency = 1})
									CreateAnimation(false, TurnAllButton, 0.25, {TextTransparency = 0.2})
									CreateAnimation(false, TurnAllButton.Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
								end
							end

							CallbackCaller(Callback, PackedCurrentOption)
							if Flag and not IgnoreChange then
								Library.Flags[Flag] = PackedCurrentOption
								task.spawn(SaveConfiguration)
							end

							if not EnabledFunction then
								CreateAnimation(false, ImageLabel, 0.25, {ImageTransparency = 1})
								CreateAnimation(false, Option, 0.25, {TextTransparency = 0.2})
								CreateAnimation(false, Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(25, 25, 25)})
							elseif EnabledFunction then
								CreateAnimation(false, ImageLabel, 0.25, {ImageTransparency = 0})
								CreateAnimation(false, Option, 0.25, {TextTransparency = 0})
								CreateAnimation(false, Checkbox, 0.25, {BackgroundColor3 = Color3.fromRGB(100, 120, 140)})
							end
							if #PackedCurrentOption == 0 then
								OptionText.Text = "Select Options"
							else
								OptionText.Text = "Options Selected"
							end
							NeedOpen = true
							Enabled = true
						end
					end

					Option.MouseButton1Click:Connect(function()
						MultiDropdownFunction(true)
					end)

					Checkbox.MouseButton1Click:Connect(function()
						MultiDropdownFunction(true)
					end)

					table.insert(OldOptions, {Function = MultiDropdownFunction, Object = ImageLabel})
				end
			end

			OptionsMaker(Options)

			MultiDropdown.MouseButton1Click:Connect(function()
				if Enabled == true then
					if NeedOpen == true then
						Enabled = false
						FrameList.Visible = true
						List.Visible = true
						if #Options < 3 then
							CreateAnimation(false, MultiDropdown.Icon, 0.2, {Rotation = 180})
							CreateAnimation(true, MultiDropdownMain, 0.2, {Size = UDim2.new(0.975, 0, 0, 230)})
						else
							CreateAnimation(false, MultiDropdown.Icon, 0.3, {Rotation = 180})
							CreateAnimation(true, MultiDropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 290)})
						end
						NeedOpen = false
						Enabled = true
					else
						Enabled = false
						if #Options < 3 then
							CreateAnimation(false, MultiDropdown.Icon, 0.2, {Rotation = 0})
						else
							CreateAnimation(false, MultiDropdown.Icon, 0.3, {Rotation = 0})
						end
						CreateAnimation(true, MultiDropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 50)})
						FrameList.Visible = false
						List.Visible = false
						NeedOpen = true
						Enabled = true
					end
				end
			end)

			local UILayout = List.UIListLayout
			local UIPadding = List.UIPadding

			local function UpdateCanvas(TableList)
				if #TableList < 3 then
					List.Size = UDim2.new(1, -5, 0, 180)
					List.ScrollingEnabled = false
				elseif #TableList == 3 then
					List.Size = UDim2.new(1, -5, 0, 240)
					List.ScrollingEnabled = false
				elseif #TableList > 3 then
					List.Size = UDim2.new(1, -5, 0, 240)
					List.ScrollingEnabled = true
					List.ScrollBarImageTransparency = 0.25
					List.ScrollBarThickness = 5
				end
			end

			UpdateCanvas(Options)

			local function OptionsDestroyer()
				local OptionTable = {}
				for _, Option in ipairs(List:GetChildren()) do
					table.insert(OptionTable, Option)
				end
				for _, Option in ipairs(List:GetChildren()) do
					if Option:IsA("TextButton") and Option ~= OptionTemplate then
						Option:Destroy()
					end
				end
			end

			function Table:Set(NewOptions)
				if Enabled == true then
					Enabled = false
					CreateAnimation(false, MultiDropdown.Icon, 0.3, {Rotation = 0})
					CreateAnimation(true, MultiDropdownMain, 0.3, {Size = UDim2.new(0.975, 0, 0, 50)})
					FrameList.Visible = false
					List.Visible = false
					OptionsDestroyer()
					BrowserTextBox.Text = ""
					Options = NewOptions
					OptionsMaker(Options)
					UpdateCanvas(Options)
					TurnAllButton:SetAttribute("All", not TurnAllButton:GetAttribute("All"))
					OnOffFunction()
					NeedOpen = true
					Enabled = true
				end
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateParagraph(Table)
			local Title, PContent = Table.Title, Table.Content

			local Paragraph = Templates.ScrollingFrame.Paragraph:Clone()
			Paragraph.Parent = ScrollingFrameReal
			Paragraph.Visible = true

			local function Update()
				local TitleText = Paragraph.Title
				TitleText.Text = Title

				local ContentText = Paragraph.Content
				ContentText.Text = PContent

				TitleText.Size = UDim2.new(TitleText.Size.X.Scale, TitleText.Size.X.Offset, TitleText.Size.Y.Scale, (TitleText.TextBounds.Y + 8) / FrameScale.Scale)
				ContentText.Size = UDim2.new(ContentText.Size.X.Scale, ContentText.Size.X.Offset, ContentText.Size.Y.Scale, (ContentText.TextBounds.Y + 16) / FrameScale.Scale)
				Paragraph.Size = UDim2.new(Paragraph.Size.X.Scale, Paragraph.Size.X.Offset, Paragraph.Size.Y.Scale, TitleText.Size.Y.Offset + ContentText.Size.Y.Offset)
			end

			task.spawn(Update)

			function Table:Set(NewTable)
				Title = NewTable.Title
				PContent = NewTable.Content
				task.spawn(Update)
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		function TabFunctions:CreateLabel(LabelContentText)
			local Label = Templates.ScrollingFrame.Label:Clone()
			Label.Parent = ScrollingFrameReal
			Label.Visible = true

			local function Update()
				Label.Text = LabelContentText
				Label.Size = UDim2.new(Label.Size.X.Scale, Label.Size.X.Offset, Label.Size.Y.Scale, (Label.TextBounds.Y + 16) / FrameScale.Scale)
			end

			task.spawn(Update)

			local Table = {}

			function Table:Set(NewText)
				LabelContentText = NewText
				task.spawn(Update)
			end

			table.insert(CurrentFunctions, Table)
			return Table
		end

		return TabFunctions
	end

	task.spawn(function()
		MainUi.Enabled = true
		ScreenGui.Enabled = true
		Library:Toggle()
		TextButton.MouseButton1Click:Connect(function()
			Library:Toggle()
		end)
	end)

	local EmpyFunc = function() end

	MainUi.Destroying:Once(function()
		for _, TabObjectResult in ipairs(CurrentFunctions) do
			TabObjectResult.Set = EmpyFunc
		end

		table.clear(CurrentFunctions)
	end)

	return Current
end

return Library
