--[=[
 d888b  db    db d888888b      .d888b.      db      db    db  .d8b.  
88' Y8b 88    88   `88'        VP  `8D      88      88    88 d8' `8b 
88      88    88    88            odD'      88      88    88 88ooo88 
88  ooo 88    88    88          .88'        88      88    88 88~~~88 
88. ~8~ 88b  d88   .88.        j88.         88booo. 88b  d88 88   88    @uniquadev
 Y888P  ~Y8888P' Y888888P      888888D      Y88888P ~Y8888P' YP   YP  CONVERTER 
]=]

-- Instances: 197 | Scripts: 0 | Modules: 0 | Tags: 0
local G2L = {};

-- StarterGui.ScriptedUI
G2L["1"] = Instance.new("ScreenGui", game:GetService("Players").LocalPlayer:WaitForChild("PlayerGui"));
G2L["1"]["IgnoreGuiInset"] = true;
G2L["1"]["DisplayOrder"] = 1000000000;
G2L["1"]["ScreenInsets"] = Enum.ScreenInsets.DeviceSafeInsets;
G2L["1"]["Name"] = [[ScriptedUI]];
G2L["1"]["ZIndexBehavior"] = Enum.ZIndexBehavior.Sibling;
G2L["1"]["ResetOnSpawn"] = false;


-- StarterGui.ScriptedUI.BackgroundFrame
G2L["2"] = Instance.new("Frame", G2L["1"]);
G2L["2"]["Active"] = true;
G2L["2"]["ZIndex"] = 2;
G2L["2"]["BackgroundColor3"] = Color3.fromRGB(18, 18, 18);
G2L["2"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["2"]["Size"] = UDim2.new(0, 840, 0, 465);
G2L["2"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["2"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2"]["Name"] = [[BackgroundFrame]];


-- StarterGui.ScriptedUI.BackgroundFrame.UICorner
G2L["3"] = Instance.new("UICorner", G2L["2"]);
G2L["3"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Options
G2L["4"] = Instance.new("Frame", G2L["2"]);
G2L["4"]["Active"] = true;
G2L["4"]["ZIndex"] = 2;
G2L["4"]["BorderSizePixel"] = 0;
G2L["4"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["4"]["Selectable"] = true;
G2L["4"]["Size"] = UDim2.new(0.226, 0, 0.785, 0);
G2L["4"]["Position"] = UDim2.new(0, 0, 0.10753, 0);
G2L["4"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4"]["Name"] = [[Options]];
G2L["4"]["SelectionGroup"] = true;


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons
G2L["5"] = Instance.new("ScrollingFrame", G2L["4"]);
G2L["5"]["Active"] = true;
G2L["5"]["BorderSizePixel"] = 0;
G2L["5"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["5"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["5"]["Name"] = [[TabButtons]];
G2L["5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["5"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["5"]["Size"] = UDim2.new(0, 175, 1, -20);
G2L["5"]["ScrollBarImageColor3"] = Color3.fromRGB(56, 56, 56);
G2L["5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["5"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5"]["ScrollBarThickness"] = 3;


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.UIListLayout
G2L["6"] = Instance.new("UIListLayout", G2L["5"]);
G2L["6"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.TabButton
G2L["7"] = Instance.new("TextButton", G2L["5"]);
G2L["7"]["TextWrapped"] = true;
G2L["7"]["BorderSizePixel"] = 0;
G2L["7"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7"]["AutoButtonColor"] = false;
G2L["7"]["TextSize"] = 14;
G2L["7"]["TextColor3"] = Color3.fromRGB(101, 121, 141);
G2L["7"]["TextScaled"] = true;
G2L["7"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["7"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["7"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["7"]["Size"] = UDim2.new(0, 160, 0, 35);
G2L["7"]["Name"] = [[TabButton]];
G2L["7"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["7"]["Text"] = [[Tab]];


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.TabButton.UICorner
G2L["8"] = Instance.new("UICorner", G2L["7"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.TabButton.UIPadding
G2L["9"] = Instance.new("UIPadding", G2L["7"]);
G2L["9"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["9"]["PaddingRight"] = UDim.new(0, 3);
G2L["9"]["PaddingLeft"] = UDim.new(0.25, 0);
G2L["9"]["PaddingBottom"] = UDim.new(0.25, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.TabButton.Icon
G2L["a"] = Instance.new("ImageLabel", G2L["7"]);
G2L["a"]["BorderSizePixel"] = 0;
G2L["a"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["ImageColor3"] = Color3.fromRGB(101, 121, 141);
G2L["a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a"]["Image"] = [[rbxassetid://16259403210]];
G2L["a"]["Size"] = UDim2.new(1.2, 0, 1.2, 0);
G2L["a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a"]["BackgroundTransparency"] = 1;
G2L["a"]["Name"] = [[Icon]];
G2L["a"]["Position"] = UDim2.new(-0.175, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.TabButton.Icon.UIAspectRatioConstraint
G2L["b"] = Instance.new("UIAspectRatioConstraint", G2L["a"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.Wait
G2L["c"] = Instance.new("BoolValue", G2L["5"]);
G2L["c"]["Name"] = [[Wait]];


-- StarterGui.ScriptedUI.BackgroundFrame.Options.TabButtons.UIPadding
G2L["d"] = Instance.new("UIPadding", G2L["5"]);
G2L["d"]["PaddingLeft"] = UDim.new(0, 3);


-- StarterGui.ScriptedUI.BackgroundFrame.Top
G2L["e"] = Instance.new("Frame", G2L["2"]);
G2L["e"]["ZIndex"] = 4;
G2L["e"]["BorderSizePixel"] = 0;
G2L["e"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 46);
G2L["e"]["AnchorPoint"] = Vector2.new(0.5, 0);
G2L["e"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["e"]["Position"] = UDim2.new(0.5, 0, 0, 0);
G2L["e"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["e"]["Name"] = [[Top]];


-- StarterGui.ScriptedUI.BackgroundFrame.Top.UICorner
G2L["f"] = Instance.new("UICorner", G2L["e"]);
G2L["f"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Top.BottomFrame
G2L["10"] = Instance.new("Frame", G2L["e"]);
G2L["10"]["BorderSizePixel"] = 0;
G2L["10"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 46);
G2L["10"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["10"]["Position"] = UDim2.new(0, 0, 0, 40);
G2L["10"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["10"]["Name"] = [[BottomFrame]];


-- StarterGui.ScriptedUI.BackgroundFrame.Top.UITitle
G2L["11"] = Instance.new("TextLabel", G2L["e"]);
G2L["11"]["TextWrapped"] = true;
G2L["11"]["BorderSizePixel"] = 0;
G2L["11"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["11"]["TextScaled"] = true;
G2L["11"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["11"]["TextSize"] = 20;
G2L["11"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Heavy, Enum.FontStyle.Normal);
G2L["11"]["TextColor3"] = Color3.fromRGB(114, 126, 141);
G2L["11"]["BackgroundTransparency"] = 1;
G2L["11"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["11"]["Size"] = UDim2.new(0.934, 0, 1, 0);
G2L["11"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["11"]["Text"] = [[Tittle]];
G2L["11"]["Name"] = [[UITitle]];
G2L["11"]["Position"] = UDim2.new(0, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Top.UITitle.UIPadding
G2L["12"] = Instance.new("UIPadding", G2L["11"]);
G2L["12"]["PaddingTop"] = UDim.new(0.3, 0);
G2L["12"]["PaddingLeft"] = UDim.new(0.05, 0);
G2L["12"]["PaddingBottom"] = UDim.new(0.3, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Top.CloseButton
G2L["13"] = Instance.new("ImageButton", G2L["e"]);
G2L["13"]["BorderSizePixel"] = 0;
G2L["13"]["AutoButtonColor"] = false;
G2L["13"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
G2L["13"]["ImageColor3"] = Color3.fromRGB(114, 126, 141);
G2L["13"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["13"]["Image"] = [[rbxassetid://16723946195]];
G2L["13"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["13"]["Name"] = [[CloseButton]];
G2L["13"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["13"]["Position"] = UDim2.new(0.987, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Top.CloseButton.UICorner
G2L["14"] = Instance.new("UICorner", G2L["13"]);
G2L["14"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Top.CloseButton.UIPadding
G2L["15"] = Instance.new("UIPadding", G2L["13"]);
G2L["15"]["PaddingTop"] = UDim.new(0.1, 0);
G2L["15"]["PaddingRight"] = UDim.new(0.1, 0);
G2L["15"]["PaddingLeft"] = UDim.new(0.13, 0);
G2L["15"]["PaddingBottom"] = UDim.new(0.1, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Shadow
G2L["16"] = Instance.new("Frame", G2L["2"]);
G2L["16"]["ZIndex"] = 0;
G2L["16"]["BorderSizePixel"] = 0;
G2L["16"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["16"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["16"]["Size"] = UDim2.new(1, 60, 1, 40);
G2L["16"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["16"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["16"]["Name"] = [[Shadow]];
G2L["16"]["BackgroundTransparency"] = 1;
-- Attributes
G2L["16"]:SetAttribute([[InitialTransparency]], 1);


-- StarterGui.ScriptedUI.BackgroundFrame.Shadow.Image
G2L["17"] = Instance.new("ImageLabel", G2L["16"]);
G2L["17"]["ZIndex"] = 0;
G2L["17"]["BorderSizePixel"] = 0;
G2L["17"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["17"]["ImageColor3"] = Color3.fromRGB(21, 21, 21);
G2L["17"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["17"]["Image"] = [[rbxassetid://5587865193]];
G2L["17"]["Size"] = UDim2.new(1.43, 0, 1.24, 0);
G2L["17"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["17"]["BackgroundTransparency"] = 1;
G2L["17"]["Name"] = [[Image]];
G2L["17"]["Position"] = UDim2.new(0.49168, 0, 0.4999, 0);
-- Attributes
G2L["17"]:SetAttribute([[InitialTransparency]], 0);


-- StarterGui.ScriptedUI.BackgroundFrame.UIStroke
G2L["18"] = Instance.new("UIStroke", G2L["2"]);
G2L["18"]["Transparency"] = 0.75;
G2L["18"]["Thickness"] = 5;
G2L["18"]["Color"] = Color3.fromRGB(27, 49, 69);


-- StarterGui.ScriptedUI.BackgroundFrame.UIScale
G2L["19"] = Instance.new("UIScale", G2L["2"]);
G2L["19"]["Scale"] = 0.9;


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom
G2L["1a"] = Instance.new("Frame", G2L["2"]);
G2L["1a"]["ZIndex"] = 4;
G2L["1a"]["BorderSizePixel"] = 0;
G2L["1a"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 46);
G2L["1a"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["1a"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["1a"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["1a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1a"]["Name"] = [[Bottom]];


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.UICorner
G2L["1b"] = Instance.new("UICorner", G2L["1a"]);
G2L["1b"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.TopFrame
G2L["1c"] = Instance.new("Frame", G2L["1a"]);
G2L["1c"]["BorderSizePixel"] = 0;
G2L["1c"]["BackgroundColor3"] = Color3.fromRGB(42, 42, 46);
G2L["1c"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["1c"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["1c"]["Position"] = UDim2.new(0, 0, 0, 10);
G2L["1c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1c"]["Name"] = [[TopFrame]];


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.SettingsButton
G2L["1d"] = Instance.new("ImageButton", G2L["1a"]);
G2L["1d"]["BorderSizePixel"] = 0;
G2L["1d"]["AutoButtonColor"] = false;
G2L["1d"]["BackgroundColor3"] = Color3.fromRGB(56, 56, 56);
G2L["1d"]["ImageColor3"] = Color3.fromRGB(114, 126, 141);
G2L["1d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["1d"]["Image"] = [[rbxassetid://16873802789]];
G2L["1d"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["1d"]["Name"] = [[SettingsButton]];
G2L["1d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["1d"]["Visible"] = false;
G2L["1d"]["Position"] = UDim2.new(0.987, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.SettingsButton.UICorner
G2L["1e"] = Instance.new("UICorner", G2L["1d"]);
G2L["1e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.SettingsButton.UIPadding
G2L["1f"] = Instance.new("UIPadding", G2L["1d"]);
G2L["1f"]["PaddingTop"] = UDim.new(0.1, 0);
G2L["1f"]["PaddingRight"] = UDim.new(0.1, 0);
G2L["1f"]["PaddingLeft"] = UDim.new(0.13, 0);
G2L["1f"]["PaddingBottom"] = UDim.new(0.1, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame
G2L["20"] = Instance.new("Frame", G2L["1a"]);
G2L["20"]["BorderSizePixel"] = 0;
G2L["20"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["20"]["Size"] = UDim2.new(0.925, 0, 1, 0);
G2L["20"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["20"]["Name"] = [[WelcomeFrame]];
G2L["20"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame.AvatarBorder
G2L["21"] = Instance.new("Frame", G2L["20"]);
G2L["21"]["BorderSizePixel"] = 0;
G2L["21"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["21"]["Size"] = UDim2.new(0, 30, 0, 30);
G2L["21"]["Position"] = UDim2.new(0, 10, 0, 10);
G2L["21"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["21"]["Name"] = [[AvatarBorder]];


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame.AvatarBorder.UICorner
G2L["22"] = Instance.new("UICorner", G2L["21"]);
G2L["22"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame.AvatarBorder.Avatar
G2L["23"] = Instance.new("ImageLabel", G2L["21"]);
G2L["23"]["ZIndex"] = 2;
G2L["23"]["BorderSizePixel"] = 0;
G2L["23"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["23"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["23"]["Image"] = [[rbxasset://textures/ui/GuiImagePlaceholder.png]];
G2L["23"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["23"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["23"]["Name"] = [[Avatar]];
G2L["23"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame.AvatarBorder.Avatar.UICorner
G2L["24"] = Instance.new("UICorner", G2L["23"]);
G2L["24"]["CornerRadius"] = UDim.new(1, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame.WelcomeText
G2L["25"] = Instance.new("TextLabel", G2L["20"]);
G2L["25"]["TextWrapped"] = true;
G2L["25"]["BorderSizePixel"] = 0;
G2L["25"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["25"]["TextScaled"] = true;
G2L["25"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["25"]["TextSize"] = 20;
G2L["25"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["25"]["TextColor3"] = Color3.fromRGB(114, 126, 141);
G2L["25"]["BackgroundTransparency"] = 1;
G2L["25"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["25"]["Size"] = UDim2.new(0.934, 0, 1, 0);
G2L["25"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["25"]["Text"] = [[Welcome, ...]];
G2L["25"]["Name"] = [[WelcomeText]];
G2L["25"]["Position"] = UDim2.new(0, 50, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Bottom.WelcomeFrame.WelcomeText.UIPadding
G2L["26"] = Instance.new("UIPadding", G2L["25"]);
G2L["26"]["PaddingTop"] = UDim.new(0.375, 0);
G2L["26"]["PaddingBottom"] = UDim.new(0.375, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.UIAspectRatioConstraint
G2L["27"] = Instance.new("UIAspectRatioConstraint", G2L["2"]);
G2L["27"]["AspectRatio"] = 1.8;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs
G2L["28"] = Instance.new("Frame", G2L["2"]);
G2L["28"]["BorderSizePixel"] = 0;
G2L["28"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["28"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["28"]["ClipsDescendants"] = true;
G2L["28"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["28"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);
G2L["28"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["28"]["Name"] = [[Tabs]];
G2L["28"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template
G2L["29"] = Instance.new("Frame", G2L["28"]);
G2L["29"]["BorderSizePixel"] = 0;
G2L["29"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["29"]["Size"] = UDim2.new(1, -210, 1, -120);
G2L["29"]["Position"] = UDim2.new(0, 200, 0, 60);
G2L["29"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["29"]["Name"] = [[! Template]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.UICorner
G2L["2a"] = Instance.new("UICorner", G2L["29"]);
G2L["2a"]["CornerRadius"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame
G2L["2b"] = Instance.new("ScrollingFrame", G2L["29"]);
G2L["2b"]["Active"] = true;
G2L["2b"]["ZIndex"] = 50;
G2L["2b"]["BorderSizePixel"] = 0;
G2L["2b"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["2b"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["2b"]["AutomaticCanvasSize"] = Enum.AutomaticSize.Y;
G2L["2b"]["Size"] = UDim2.new(0.968, 0, 0.95, 0);
G2L["2b"]["ScrollBarImageColor3"] = Color3.fromRGB(56, 56, 56);
G2L["2b"]["Position"] = UDim2.new(0.01587, 0, 0.02532, 0);
G2L["2b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["2b"]["ScrollBarThickness"] = 5;
G2L["2b"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind
G2L["2c"] = Instance.new("Frame", G2L["2b"]);
G2L["2c"]["BorderSizePixel"] = 0;
G2L["2c"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["2c"]["Size"] = UDim2.new(0.975, 0, 0, 50);
G2L["2c"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2c"]["Name"] = [[KeyBind]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.KeyBox
G2L["2d"] = Instance.new("TextButton", G2L["2c"]);
G2L["2d"]["BorderSizePixel"] = 0;
G2L["2d"]["AutoButtonColor"] = false;
G2L["2d"]["TextTransparency"] = 0.25;
G2L["2d"]["TextSize"] = 14;
G2L["2d"]["TextColor3"] = Color3.fromRGB(101, 121, 141);
G2L["2d"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["2d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["2d"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["2d"]["Size"] = UDim2.new(0.242, 0, 0.6, 0);
G2L["2d"]["Name"] = [[KeyBox]];
G2L["2d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["2d"]["Text"] = [[Select a Key]];
G2L["2d"]["Position"] = UDim2.new(0.973, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.KeyBox.UIStroke
G2L["2e"] = Instance.new("UIStroke", G2L["2d"]);
G2L["2e"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["2e"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.KeyBox.UICorner
G2L["2f"] = Instance.new("UICorner", G2L["2d"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.TextName
G2L["30"] = Instance.new("TextLabel", G2L["2c"]);
G2L["30"]["TextWrapped"] = true;
G2L["30"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["30"]["TextTransparency"] = 0.25;
G2L["30"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["30"]["TextSize"] = 14;
G2L["30"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["30"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["30"]["BackgroundTransparency"] = 1;
G2L["30"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["30"]["Size"] = UDim2.new(0.4, 0, 0.5, 0);
G2L["30"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["30"]["Text"] = [[Key Bind]];
G2L["30"]["Name"] = [[TextName]];
G2L["30"]["Position"] = UDim2.new(0.01, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.TextName.UIPadding
G2L["31"] = Instance.new("UIPadding", G2L["30"]);
G2L["31"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["31"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.UIPadding
G2L["32"] = Instance.new("UIPadding", G2L["2c"]);
G2L["32"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.KeyBind.UICorner
G2L["33"] = Instance.new("UICorner", G2L["2c"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox
G2L["34"] = Instance.new("Frame", G2L["2b"]);
G2L["34"]["BorderSizePixel"] = 0;
G2L["34"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["34"]["Size"] = UDim2.new(0.975, 0, 0, 50);
G2L["34"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["34"]["Name"] = [[TextBox]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.BoxText
G2L["35"] = Instance.new("TextLabel", G2L["34"]);
G2L["35"]["TextWrapped"] = true;
G2L["35"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["35"]["TextTransparency"] = 0.25;
G2L["35"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["35"]["TextSize"] = 14;
G2L["35"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["35"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["35"]["BackgroundTransparency"] = 1;
G2L["35"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["35"]["Size"] = UDim2.new(0.4, 0, 0.5, 0);
G2L["35"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["35"]["Text"] = [[Text Box]];
G2L["35"]["Name"] = [[BoxText]];
G2L["35"]["Position"] = UDim2.new(0.01, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.BoxText.UIPadding
G2L["36"] = Instance.new("UIPadding", G2L["35"]);
G2L["36"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["36"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.TextBox
G2L["37"] = Instance.new("TextBox", G2L["34"]);
G2L["37"]["TextColor3"] = Color3.fromRGB(101, 121, 141);
G2L["37"]["PlaceholderColor3"] = Color3.fromRGB(106, 101, 101);
G2L["37"]["BorderSizePixel"] = 0;
G2L["37"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["37"]["TextTransparency"] = 0.25;
G2L["37"]["TextSize"] = 14;
G2L["37"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["37"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["37"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["37"]["ClearTextOnFocus"] = false;
G2L["37"]["PlaceholderText"] = [[Text Here]];
G2L["37"]["Size"] = UDim2.new(0.483, 0, 0.6, 0);
G2L["37"]["Position"] = UDim2.new(0.49, 0, 0.5, 0);
G2L["37"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["37"]["Text"] = [[]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.TextBox.UIStroke
G2L["38"] = Instance.new("UIStroke", G2L["37"]);
G2L["38"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["38"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.TextBox.UIPadding
G2L["39"] = Instance.new("UIPadding", G2L["37"]);
G2L["39"]["PaddingLeft"] = UDim.new(0.05, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.TextBox.UICorner
G2L["3a"] = Instance.new("UICorner", G2L["37"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.UIPadding
G2L["3b"] = Instance.new("UIPadding", G2L["34"]);
G2L["3b"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.TextBox.UICorner
G2L["3c"] = Instance.new("UICorner", G2L["34"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider
G2L["3d"] = Instance.new("Frame", G2L["2b"]);
G2L["3d"]["BorderSizePixel"] = 0;
G2L["3d"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["3d"]["Size"] = UDim2.new(0.975, 0, 0, 50);
G2L["3d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3d"]["Name"] = [[Slider]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG
G2L["3e"] = Instance.new("TextButton", G2L["3d"]);
G2L["3e"]["TextWrapped"] = true;
G2L["3e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["3e"]["AutoButtonColor"] = false;
G2L["3e"]["TextTransparency"] = 0.2;
G2L["3e"]["TextSize"] = 16;
G2L["3e"]["TextColor3"] = Color3.fromRGB(106, 122, 145);
G2L["3e"]["TextScaled"] = true;
G2L["3e"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["3e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["3e"]["Size"] = UDim2.new(0.948, 0, 1, 0);
G2L["3e"]["BackgroundTransparency"] = 1;
G2L["3e"]["Name"] = [[SliderBG]];
G2L["3e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["3e"]["Text"] = [[]];
G2L["3e"]["Position"] = UDim2.new(0.026, 0, 0, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG.MainBar
G2L["3f"] = Instance.new("Frame", G2L["3e"]);
G2L["3f"]["BorderSizePixel"] = 0;
G2L["3f"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["3f"]["Size"] = UDim2.new(1, 0, 0.14, 0);
G2L["3f"]["Position"] = UDim2.new(0, 0, 0.7, 0);
G2L["3f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["3f"]["Name"] = [[MainBar]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG.MainBar.UIStroke
G2L["40"] = Instance.new("UIStroke", G2L["3f"]);
G2L["40"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["40"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG.MainBar.UICorner
G2L["41"] = Instance.new("UICorner", G2L["3f"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG.MainBar.Bar
G2L["42"] = Instance.new("Frame", G2L["3f"]);
G2L["42"]["BorderSizePixel"] = 0;
G2L["42"]["BackgroundColor3"] = Color3.fromRGB(101, 121, 141);
G2L["42"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["42"]["Size"] = UDim2.new(0.5, 0, 1, 0);
G2L["42"]["Position"] = UDim2.new(0, 0, 0.5, 0);
G2L["42"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["42"]["Name"] = [[Bar]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG.MainBar.Bar.UICorner
G2L["43"] = Instance.new("UICorner", G2L["42"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderBG.MainBar.Bar.UIStroke
G2L["44"] = Instance.new("UIStroke", G2L["42"]);
G2L["44"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["44"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderValue
G2L["45"] = Instance.new("TextLabel", G2L["3d"]);
G2L["45"]["TextWrapped"] = true;
G2L["45"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["45"]["TextTransparency"] = 0.6;
G2L["45"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["45"]["TextSize"] = 14;
G2L["45"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["45"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["45"]["BackgroundTransparency"] = 1;
G2L["45"]["AnchorPoint"] = Vector2.new(1, 0);
G2L["45"]["Size"] = UDim2.new(0.47541, 0, 0.5, 0);
G2L["45"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["45"]["Text"] = [[50 Suffix]];
G2L["45"]["Name"] = [[SliderValue]];
G2L["45"]["Position"] = UDim2.new(0.974, 0, 0.1, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderValue.UIPadding
G2L["46"] = Instance.new("UIPadding", G2L["45"]);
G2L["46"]["PaddingTop"] = UDim.new(0.17, 0);
G2L["46"]["PaddingBottom"] = UDim.new(0.17, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderText
G2L["47"] = Instance.new("TextLabel", G2L["3d"]);
G2L["47"]["TextWrapped"] = true;
G2L["47"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["47"]["TextTransparency"] = 0.25;
G2L["47"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["47"]["TextSize"] = 14;
G2L["47"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["47"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["47"]["BackgroundTransparency"] = 1;
G2L["47"]["Size"] = UDim2.new(0.46259, 0, 0.5, 0);
G2L["47"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["47"]["Text"] = [[Slider]];
G2L["47"]["Name"] = [[SliderText]];
G2L["47"]["Position"] = UDim2.new(0.026, 0, 0.1, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.SliderText.UIPadding
G2L["48"] = Instance.new("UIPadding", G2L["47"]);
G2L["48"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["48"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Slider.UICorner
G2L["49"] = Instance.new("UICorner", G2L["3d"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle
G2L["4a"] = Instance.new("TextButton", G2L["2b"]);
G2L["4a"]["AutoButtonColor"] = false;
G2L["4a"]["TextSize"] = 14;
G2L["4a"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["4a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4a"]["Size"] = UDim2.new(0.975, 0, 0, 50);
G2L["4a"]["Name"] = [[Toggle]];
G2L["4a"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4a"]["Text"] = [[]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.Checkbox
G2L["4b"] = Instance.new("TextButton", G2L["4a"]);
G2L["4b"]["BorderSizePixel"] = 0;
G2L["4b"]["AutoButtonColor"] = false;
G2L["4b"]["TextSize"] = 14;
G2L["4b"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["4b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4b"]["Size"] = UDim2.new(0.034, 0, 0.4, 0);
G2L["4b"]["Name"] = [[Checkbox]];
G2L["4b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["4b"]["Text"] = [[]];
G2L["4b"]["Position"] = UDim2.new(0.94, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.Checkbox.ImageLabel
G2L["4c"] = Instance.new("ImageLabel", G2L["4b"]);
G2L["4c"]["BorderSizePixel"] = 0;
G2L["4c"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
G2L["4c"]["ImageTransparency"] = 1;
G2L["4c"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["4c"]["Image"] = [[rbxassetid://16250460302]];
G2L["4c"]["Size"] = UDim2.new(1, -5, 1, -5);
G2L["4c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4c"]["BackgroundTransparency"] = 1;
G2L["4c"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.Checkbox.UIStroke
G2L["4d"] = Instance.new("UIStroke", G2L["4b"]);
G2L["4d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["4d"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.Checkbox.UICorner
G2L["4e"] = Instance.new("UICorner", G2L["4b"]);
G2L["4e"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.ToggleText
G2L["4f"] = Instance.new("TextLabel", G2L["4a"]);
G2L["4f"]["TextWrapped"] = true;
G2L["4f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["4f"]["TextTransparency"] = 0.25;
G2L["4f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["4f"]["TextSize"] = 14;
G2L["4f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["4f"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["4f"]["BackgroundTransparency"] = 1;
G2L["4f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["4f"]["Size"] = UDim2.new(0.8335, 0, 0.5, 0);
G2L["4f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["4f"]["Text"] = [[Toggle]];
G2L["4f"]["Name"] = [[ToggleText]];
G2L["4f"]["Position"] = UDim2.new(0.026, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.ToggleText.UIPadding
G2L["50"] = Instance.new("UIPadding", G2L["4f"]);
G2L["50"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["50"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Toggle.UICorner
G2L["51"] = Instance.new("UICorner", G2L["4a"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Button
G2L["52"] = Instance.new("TextButton", G2L["2b"]);
G2L["52"]["TextWrapped"] = true;
G2L["52"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["52"]["AutoButtonColor"] = false;
G2L["52"]["TextTransparency"] = 0.25;
G2L["52"]["TextSize"] = 14;
G2L["52"]["TextColor3"] = Color3.fromRGB(106, 122, 145);
G2L["52"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["52"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["52"]["Size"] = UDim2.new(0.975, 0, 0, 35);
G2L["52"]["Name"] = [[Button]];
G2L["52"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["52"]["Position"] = UDim2.new(0, 0, 0.428, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Button.ImageLabel
G2L["53"] = Instance.new("ImageLabel", G2L["52"]);
G2L["53"]["BorderSizePixel"] = 0;
G2L["53"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["53"]["ImageTransparency"] = 0.25;
G2L["53"]["ImageColor3"] = Color3.fromRGB(141, 141, 141);
G2L["53"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["53"]["Image"] = [[rbxassetid://16089599792]];
G2L["53"]["Size"] = UDim2.new(0, 20, 0, 20);
G2L["53"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["53"]["BackgroundTransparency"] = 1;
G2L["53"]["Position"] = UDim2.new(0.973, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Button.UIPadding
G2L["54"] = Instance.new("UIPadding", G2L["52"]);
G2L["54"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["54"]["PaddingLeft"] = UDim.new(0.026, 0);
G2L["54"]["PaddingBottom"] = UDim.new(0.25, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Button.UICorner
G2L["55"] = Instance.new("UICorner", G2L["52"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Section
G2L["56"] = Instance.new("TextLabel", G2L["2b"]);
G2L["56"]["TextWrapped"] = true;
G2L["56"]["BorderSizePixel"] = 0;
G2L["56"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["56"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["56"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["TextSize"] = 18;
G2L["56"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["56"]["TextColor3"] = Color3.fromRGB(81, 81, 81);
G2L["56"]["BackgroundTransparency"] = 1;
G2L["56"]["Size"] = UDim2.new(0.975, 0, 0, 30);
G2L["56"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["56"]["Text"] = [[Section]];
G2L["56"]["Name"] = [[Section]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Section.UIPadding
G2L["57"] = Instance.new("UIPadding", G2L["56"]);
G2L["57"]["PaddingTop"] = UDim.new(0.35, 0);
G2L["57"]["PaddingLeft"] = UDim.new(0.01, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Section.UICorner
G2L["58"] = Instance.new("UICorner", G2L["56"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.UIListLayout
G2L["59"] = Instance.new("UIListLayout", G2L["2b"]);
G2L["59"]["Padding"] = UDim.new(0, 10);
G2L["59"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.UIPadding
G2L["5a"] = Instance.new("UIPadding", G2L["2b"]);
G2L["5a"]["PaddingTop"] = UDim.new(0, 1);
G2L["5a"]["PaddingLeft"] = UDim.new(0.0011, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain
G2L["5b"] = Instance.new("Frame", G2L["2b"]);
G2L["5b"]["BorderSizePixel"] = 0;
G2L["5b"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["5b"]["ClipsDescendants"] = true;
G2L["5b"]["Size"] = UDim2.new(0.975, 0, 0, 150);
G2L["5b"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["5b"]["Name"] = [[DropdownMain]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.UICorner
G2L["5c"] = Instance.new("UICorner", G2L["5b"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown
G2L["5d"] = Instance.new("TextButton", G2L["5b"]);
G2L["5d"]["AutoButtonColor"] = false;
G2L["5d"]["TextTransparency"] = 1;
G2L["5d"]["TextSize"] = 12;
G2L["5d"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["5d"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5d"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["5d"]["Name"] = [[Dropdown]];
G2L["5d"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.NameText
G2L["5e"] = Instance.new("TextLabel", G2L["5d"]);
G2L["5e"]["TextWrapped"] = true;
G2L["5e"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["5e"]["TextTransparency"] = 0.25;
G2L["5e"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["5e"]["TextSize"] = 14;
G2L["5e"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["5e"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["5e"]["BackgroundTransparency"] = 1;
G2L["5e"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["5e"]["Size"] = UDim2.new(0.6, 0, 0.5, 0);
G2L["5e"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["5e"]["Text"] = [[Dropdown]];
G2L["5e"]["Name"] = [[NameText]];
G2L["5e"]["Position"] = UDim2.new(0.027, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.NameText.UIPadding
G2L["5f"] = Instance.new("UIPadding", G2L["5e"]);
G2L["5f"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["5f"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.Icon
G2L["60"] = Instance.new("ImageLabel", G2L["5d"]);
G2L["60"]["BorderSizePixel"] = 0;
G2L["60"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["60"]["ImageColor3"] = Color3.fromRGB(141, 141, 141);
G2L["60"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["60"]["Image"] = [[rbxassetid://16093555964]];
G2L["60"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["60"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["60"]["BackgroundTransparency"] = 1;
G2L["60"]["Name"] = [[Icon]];
G2L["60"]["Position"] = UDim2.new(0.973, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.UICorner
G2L["61"] = Instance.new("UICorner", G2L["5d"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.UIAspectRatioConstraint
G2L["62"] = Instance.new("UIAspectRatioConstraint", G2L["5d"]);
G2L["62"]["AspectRatio"] = 11.82223;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.OptionText
G2L["63"] = Instance.new("TextLabel", G2L["5d"]);
G2L["63"]["TextWrapped"] = true;
G2L["63"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["63"]["TextTransparency"] = 0.6;
G2L["63"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["63"]["TextSize"] = 14;
G2L["63"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["63"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["63"]["BackgroundTransparency"] = 1;
G2L["63"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["63"]["Size"] = UDim2.new(0.278, 0, 0.5, 0);
G2L["63"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["63"]["Text"] = [[Selected Option]];
G2L["63"]["Name"] = [[OptionText]];
G2L["63"]["Position"] = UDim2.new(0.627, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.OptionText.UIPadding
G2L["64"] = Instance.new("UIPadding", G2L["63"]);
G2L["64"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["64"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList
G2L["65"] = Instance.new("Frame", G2L["5d"]);
G2L["65"]["BorderSizePixel"] = 0;
G2L["65"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["65"]["Size"] = UDim2.new(1, 0, 1.15, 0);
G2L["65"]["Position"] = UDim2.new(0, 0, 0.8, 0);
G2L["65"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["65"]["Name"] = [[FrameList]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.UIPadding
G2L["66"] = Instance.new("UIPadding", G2L["65"]);
G2L["66"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.UICorner
G2L["67"] = Instance.new("UICorner", G2L["65"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List
G2L["68"] = Instance.new("ScrollingFrame", G2L["65"]);
G2L["68"]["BorderSizePixel"] = 0;
G2L["68"]["CanvasSize"] = UDim2.new(0, 0, 0, 35);
G2L["68"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["68"]["Name"] = [[List]];
G2L["68"]["ScrollBarImageTransparency"] = 0.25;
G2L["68"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["68"]["Size"] = UDim2.new(0.975, 0, 0, 105);
G2L["68"]["ScrollBarImageColor3"] = Color3.fromRGB(26, 26, 26);
G2L["68"]["ScrollBarThickness"] = 5;
G2L["68"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.UIListLayout
G2L["69"] = Instance.new("UIListLayout", G2L["68"]);
G2L["69"]["Padding"] = UDim.new(0, 10);
G2L["69"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.UIPadding
G2L["6a"] = Instance.new("UIPadding", G2L["68"]);
G2L["6a"]["PaddingTop"] = UDim.new(0, 5);
G2L["6a"]["PaddingLeft"] = UDim.new(0, 15);
G2L["6a"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser
G2L["6b"] = Instance.new("Frame", G2L["68"]);
G2L["6b"]["BorderSizePixel"] = 0;
G2L["6b"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["6b"]["Size"] = UDim2.new(0.95, 4, 0, 50);
G2L["6b"]["Name"] = [[Browser]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.UICorner
G2L["6c"] = Instance.new("UICorner", G2L["6b"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.UIStroke
G2L["6d"] = Instance.new("UIStroke", G2L["6b"]);
G2L["6d"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["6d"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.UIPadding
G2L["6e"] = Instance.new("UIPadding", G2L["6b"]);
G2L["6e"]["PaddingLeft"] = UDim.new(0, 10);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.TextBox
G2L["6f"] = Instance.new("TextBox", G2L["6b"]);
G2L["6f"]["TextColor3"] = Color3.fromRGB(101, 121, 141);
G2L["6f"]["PlaceholderColor3"] = Color3.fromRGB(106, 101, 101);
G2L["6f"]["BorderSizePixel"] = 0;
G2L["6f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["6f"]["TextTransparency"] = 0.25;
G2L["6f"]["TextSize"] = 14;
G2L["6f"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["6f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["6f"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["6f"]["ClearTextOnFocus"] = false;
G2L["6f"]["PlaceholderText"] = [[Option Name Here]];
G2L["6f"]["Size"] = UDim2.new(0.485, 0, 0.6, 0);
G2L["6f"]["Position"] = UDim2.new(0.49, 0, 0.5, 0);
G2L["6f"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["6f"]["Text"] = [[]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.TextBox.UIStroke
G2L["70"] = Instance.new("UIStroke", G2L["6f"]);
G2L["70"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["70"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.TextBox.UIPadding
G2L["71"] = Instance.new("UIPadding", G2L["6f"]);
G2L["71"]["PaddingLeft"] = UDim.new(0.05, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.TextBox.UICorner
G2L["72"] = Instance.new("UICorner", G2L["6f"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.BrowserText
G2L["73"] = Instance.new("TextLabel", G2L["6b"]);
G2L["73"]["TextWrapped"] = true;
G2L["73"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["73"]["TextTransparency"] = 0.2;
G2L["73"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["73"]["TextSize"] = 14;
G2L["73"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["73"]["TextColor3"] = Color3.fromRGB(106, 101, 101);
G2L["73"]["BackgroundTransparency"] = 1;
G2L["73"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["73"]["Size"] = UDim2.new(0.4, 0, 0.5, 0);
G2L["73"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["73"]["Text"] = [[Browse a Option]];
G2L["73"]["Name"] = [[BrowserText]];
G2L["73"]["Position"] = UDim2.new(0.01, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Browser.BrowserText.UIPadding
G2L["74"] = Instance.new("UIPadding", G2L["73"]);
G2L["74"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["74"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Option
G2L["75"] = Instance.new("TextButton", G2L["68"]);
G2L["75"]["TextWrapped"] = true;
G2L["75"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["75"]["AutoButtonColor"] = false;
G2L["75"]["TextTransparency"] = 0.2;
G2L["75"]["TextSize"] = 14;
G2L["75"]["TextColor3"] = Color3.fromRGB(106, 101, 101);
G2L["75"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["75"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["75"]["Size"] = UDim2.new(0.95, 4, 0, 35);
G2L["75"]["Name"] = [[Option]];
G2L["75"]["Text"] = [[Option]];
G2L["75"]["Position"] = UDim2.new(0, 0, 0.428, 0);
-- Attributes
G2L["75"]:SetAttribute([[Ignore]], true);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Option.Icon
G2L["76"] = Instance.new("ImageLabel", G2L["75"]);
G2L["76"]["BorderSizePixel"] = 0;
G2L["76"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["76"]["ImageColor3"] = Color3.fromRGB(141, 141, 141);
G2L["76"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["76"]["Image"] = [[rbxassetid://16089599792]];
G2L["76"]["Size"] = UDim2.new(0, 23, 0, 23);
G2L["76"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["76"]["BackgroundTransparency"] = 1;
G2L["76"]["Name"] = [[Icon]];
G2L["76"]["Position"] = UDim2.new(0.932, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Option.UICorner
G2L["77"] = Instance.new("UICorner", G2L["75"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Option.UIPadding
G2L["78"] = Instance.new("UIPadding", G2L["75"]);
G2L["78"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["78"]["PaddingLeft"] = UDim.new(0.029, 0);
G2L["78"]["PaddingBottom"] = UDim.new(0.25, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.DropdownMain.Dropdown.FrameList.List.Option.UIStroke
G2L["79"] = Instance.new("UIStroke", G2L["75"]);
G2L["79"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["79"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Label
G2L["7a"] = Instance.new("TextLabel", G2L["2b"]);
G2L["7a"]["TextWrapped"] = true;
G2L["7a"]["BorderSizePixel"] = 0;
G2L["7a"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7a"]["TextTransparency"] = 0.5;
G2L["7a"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["7a"]["TextSize"] = 14;
G2L["7a"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["7a"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["7a"]["RichText"] = true;
G2L["7a"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["7a"]["Size"] = UDim2.new(0.975, 0, 0, 30);
G2L["7a"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7a"]["Text"] = [[Label Text]];
G2L["7a"]["Name"] = [[Label]];
G2L["7a"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Label.UIPadding
G2L["7b"] = Instance.new("UIPadding", G2L["7a"]);
G2L["7b"]["PaddingRight"] = UDim.new(0, 15);
G2L["7b"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Label.UICorner
G2L["7c"] = Instance.new("UICorner", G2L["7a"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Paragraph
G2L["7d"] = Instance.new("Frame", G2L["2b"]);
G2L["7d"]["BorderSizePixel"] = 0;
G2L["7d"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["7d"]["Size"] = UDim2.new(0.975, 0, 0, 58);
G2L["7d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7d"]["Name"] = [[Paragraph]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Paragraph.UICorner
G2L["7e"] = Instance.new("UICorner", G2L["7d"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Paragraph.Title
G2L["7f"] = Instance.new("TextLabel", G2L["7d"]);
G2L["7f"]["TextWrapped"] = true;
G2L["7f"]["BorderSizePixel"] = 0;
G2L["7f"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["7f"]["TextTransparency"] = 0.2;
G2L["7f"]["TextYAlignment"] = Enum.TextYAlignment.Bottom;
G2L["7f"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["7f"]["TextSize"] = 18;
G2L["7f"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["7f"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["7f"]["BackgroundTransparency"] = 1;
G2L["7f"]["Size"] = UDim2.new(1, 0, 0, 28);
G2L["7f"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["7f"]["Text"] = [[Paragraph Title]];
G2L["7f"]["Name"] = [[Title]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Paragraph.Title.UIPadding
G2L["80"] = Instance.new("UIPadding", G2L["7f"]);
G2L["80"]["PaddingRight"] = UDim.new(0, 15);
G2L["80"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Paragraph.Content
G2L["81"] = Instance.new("TextLabel", G2L["7d"]);
G2L["81"]["TextWrapped"] = true;
G2L["81"]["BorderSizePixel"] = 0;
G2L["81"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["81"]["TextTransparency"] = 0.5;
G2L["81"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["81"]["TextSize"] = 14;
G2L["81"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["81"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["81"]["BackgroundTransparency"] = 1;
G2L["81"]["RichText"] = true;
G2L["81"]["AnchorPoint"] = Vector2.new(0, 1);
G2L["81"]["Size"] = UDim2.new(1, 0, 0, 30);
G2L["81"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["81"]["Text"] = [[Paragraph Description]];
G2L["81"]["Name"] = [[Content]];
G2L["81"]["Position"] = UDim2.new(0, 0, 0.95, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.Paragraph.Content.UIPadding
G2L["82"] = Instance.new("UIPadding", G2L["81"]);
G2L["82"]["PaddingRight"] = UDim.new(0, 15);
G2L["82"]["PaddingLeft"] = UDim.new(0, 22);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain
G2L["83"] = Instance.new("Frame", G2L["2b"]);
G2L["83"]["BorderSizePixel"] = 0;
G2L["83"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["83"]["ClipsDescendants"] = true;
G2L["83"]["Size"] = UDim2.new(0.975, 0, 0, 165);
G2L["83"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["83"]["Name"] = [[MultiDropdownMain]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.UICorner
G2L["84"] = Instance.new("UICorner", G2L["83"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown
G2L["85"] = Instance.new("TextButton", G2L["83"]);
G2L["85"]["AutoButtonColor"] = false;
G2L["85"]["TextTransparency"] = 1;
G2L["85"]["TextSize"] = 12;
G2L["85"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["85"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["85"]["Size"] = UDim2.new(1, 0, 0, 50);
G2L["85"]["Name"] = [[MultiDropdown]];
G2L["85"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.NameText
G2L["86"] = Instance.new("TextLabel", G2L["85"]);
G2L["86"]["TextWrapped"] = true;
G2L["86"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["86"]["TextTransparency"] = 0.25;
G2L["86"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["86"]["TextSize"] = 14;
G2L["86"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["86"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["86"]["BackgroundTransparency"] = 1;
G2L["86"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["86"]["Size"] = UDim2.new(0.525, 0, 0.5, 0);
G2L["86"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["86"]["Text"] = [[Multi Dropdown]];
G2L["86"]["Name"] = [[NameText]];
G2L["86"]["Position"] = UDim2.new(0.027, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.NameText.UIPadding
G2L["87"] = Instance.new("UIPadding", G2L["86"]);
G2L["87"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["87"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.Icon
G2L["88"] = Instance.new("ImageLabel", G2L["85"]);
G2L["88"]["BorderSizePixel"] = 0;
G2L["88"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["88"]["ImageColor3"] = Color3.fromRGB(141, 141, 141);
G2L["88"]["AnchorPoint"] = Vector2.new(1, 0.5);
G2L["88"]["Image"] = [[rbxassetid://16093555964]];
G2L["88"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["88"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["88"]["BackgroundTransparency"] = 1;
G2L["88"]["Name"] = [[Icon]];
G2L["88"]["Position"] = UDim2.new(0.973, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.UICorner
G2L["89"] = Instance.new("UICorner", G2L["85"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.UIAspectRatioConstraint
G2L["8a"] = Instance.new("UIAspectRatioConstraint", G2L["85"]);
G2L["8a"]["AspectRatio"] = 11.82223;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.OptionText
G2L["8b"] = Instance.new("TextLabel", G2L["85"]);
G2L["8b"]["TextWrapped"] = true;
G2L["8b"]["TextXAlignment"] = Enum.TextXAlignment.Right;
G2L["8b"]["TextTransparency"] = 0.6;
G2L["8b"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["8b"]["TextSize"] = 14;
G2L["8b"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["8b"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["8b"]["BackgroundTransparency"] = 1;
G2L["8b"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["8b"]["Size"] = UDim2.new(0.19, 0, 0.5, 0);
G2L["8b"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["8b"]["Text"] = [[Select Options]];
G2L["8b"]["Name"] = [[OptionText]];
G2L["8b"]["Position"] = UDim2.new(0.715, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.OptionText.UIPadding
G2L["8c"] = Instance.new("UIPadding", G2L["8b"]);
G2L["8c"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["8c"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList
G2L["8d"] = Instance.new("Frame", G2L["85"]);
G2L["8d"]["BorderSizePixel"] = 0;
G2L["8d"]["BackgroundColor3"] = Color3.fromRGB(36, 36, 36);
G2L["8d"]["Size"] = UDim2.new(1, 0, 1.3, 0);
G2L["8d"]["Position"] = UDim2.new(0, 0, 0.8, 0);
G2L["8d"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["8d"]["Name"] = [[FrameList]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.UIPadding
G2L["8e"] = Instance.new("UIPadding", G2L["8d"]);
G2L["8e"]["PaddingTop"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.UICorner
G2L["8f"] = Instance.new("UICorner", G2L["8d"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List
G2L["90"] = Instance.new("ScrollingFrame", G2L["8d"]);
G2L["90"]["BorderSizePixel"] = 0;
G2L["90"]["CanvasSize"] = UDim2.new(0, 0, 0, 35);
G2L["90"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["90"]["Name"] = [[List]];
G2L["90"]["ScrollBarImageTransparency"] = 0.25;
G2L["90"]["AutomaticCanvasSize"] = Enum.AutomaticSize.XY;
G2L["90"]["Size"] = UDim2.new(1, -5, 0, 120);
G2L["90"]["ScrollBarImageColor3"] = Color3.fromRGB(26, 26, 26);
G2L["90"]["ScrollBarThickness"] = 5;
G2L["90"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.UIListLayout
G2L["91"] = Instance.new("UIListLayout", G2L["90"]);
G2L["91"]["Padding"] = UDim.new(0, 10);
G2L["91"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.UIPadding
G2L["92"] = Instance.new("UIPadding", G2L["90"]);
G2L["92"]["PaddingTop"] = UDim.new(0, 5);
G2L["92"]["PaddingLeft"] = UDim.new(0, 15);
G2L["92"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList
G2L["93"] = Instance.new("ScrollingFrame", G2L["90"]);
G2L["93"]["Active"] = true;
G2L["93"]["ScrollingDirection"] = Enum.ScrollingDirection.X;
G2L["93"]["BorderSizePixel"] = 0;
G2L["93"]["CanvasSize"] = UDim2.new(0, 0, 0, 50);
G2L["93"]["ElasticBehavior"] = Enum.ElasticBehavior.Never;
G2L["93"]["ScrollingEnabled"] = false;
G2L["93"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["93"]["Name"] = [[MiscList]];
G2L["93"]["VerticalScrollBarPosition"] = Enum.VerticalScrollBarPosition.Left;
G2L["93"]["Size"] = UDim2.new(0.95, 4, 0, 52);
G2L["93"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["93"]["ScrollBarThickness"] = 0;
G2L["93"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser
G2L["94"] = Instance.new("Frame", G2L["93"]);
G2L["94"]["BorderSizePixel"] = 0;
G2L["94"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["94"]["Size"] = UDim2.new(0.833, 0, 0, 50);
G2L["94"]["Name"] = [[Browser]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.UICorner
G2L["95"] = Instance.new("UICorner", G2L["94"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.UIStroke
G2L["96"] = Instance.new("UIStroke", G2L["94"]);
G2L["96"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["96"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.UIPadding
G2L["97"] = Instance.new("UIPadding", G2L["94"]);
G2L["97"]["PaddingLeft"] = UDim.new(0, 12);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.TextBox
G2L["98"] = Instance.new("TextBox", G2L["94"]);
G2L["98"]["TextColor3"] = Color3.fromRGB(101, 121, 141);
G2L["98"]["PlaceholderColor3"] = Color3.fromRGB(106, 101, 101);
G2L["98"]["BorderSizePixel"] = 0;
G2L["98"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["98"]["TextTransparency"] = 0.25;
G2L["98"]["TextSize"] = 14;
G2L["98"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["98"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["98"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["98"]["ClearTextOnFocus"] = false;
G2L["98"]["PlaceholderText"] = [[Options Name Here]];
G2L["98"]["Size"] = UDim2.new(0.485, 0, 0.6, 0);
G2L["98"]["Position"] = UDim2.new(0.485, 0, 0.5, 0);
G2L["98"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["98"]["Text"] = [[]];


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.TextBox.UIStroke
G2L["99"] = Instance.new("UIStroke", G2L["98"]);
G2L["99"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["99"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.TextBox.UIPadding
G2L["9a"] = Instance.new("UIPadding", G2L["98"]);
G2L["9a"]["PaddingLeft"] = UDim.new(0.05, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.TextBox.UICorner
G2L["9b"] = Instance.new("UICorner", G2L["98"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.BrowserText
G2L["9c"] = Instance.new("TextLabel", G2L["94"]);
G2L["9c"]["TextWrapped"] = true;
G2L["9c"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["9c"]["TextTransparency"] = 0.2;
G2L["9c"]["BackgroundColor3"] = Color3.fromRGB(29, 29, 29);
G2L["9c"]["TextSize"] = 14;
G2L["9c"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["9c"]["TextColor3"] = Color3.fromRGB(106, 101, 101);
G2L["9c"]["BackgroundTransparency"] = 1;
G2L["9c"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["9c"]["Size"] = UDim2.new(0.4, 0, 0.5, 0);
G2L["9c"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["9c"]["Text"] = [[Browse Options]];
G2L["9c"]["Name"] = [[BrowserText]];
G2L["9c"]["Position"] = UDim2.new(0.01, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.Browser.BrowserText.UIPadding
G2L["9d"] = Instance.new("UIPadding", G2L["9c"]);
G2L["9d"]["PaddingTop"] = UDim.new(0.13, 0);
G2L["9d"]["PaddingBottom"] = UDim.new(0.13, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.UIListLayout
G2L["9e"] = Instance.new("UIListLayout", G2L["93"]);
G2L["9e"]["Padding"] = UDim.new(0, 10);
G2L["9e"]["FillDirection"] = Enum.FillDirection.Horizontal;


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.UIPadding
G2L["9f"] = Instance.new("UIPadding", G2L["93"]);
G2L["9f"]["PaddingTop"] = UDim.new(0, 1);
G2L["9f"]["PaddingRight"] = UDim.new(0, 2);
G2L["9f"]["PaddingLeft"] = UDim.new(0, 1);
G2L["9f"]["PaddingBottom"] = UDim.new(0, 1);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll
G2L["a0"] = Instance.new("TextButton", G2L["93"]);
G2L["a0"]["TextWrapped"] = true;
G2L["a0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a0"]["AutoButtonColor"] = false;
G2L["a0"]["TextTransparency"] = 0.2;
G2L["a0"]["TextSize"] = 14;
G2L["a0"]["TextColor3"] = Color3.fromRGB(106, 101, 101);
G2L["a0"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["a0"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a0"]["Size"] = UDim2.new(0.15, 0, 0, 50);
G2L["a0"]["Name"] = [[TurnAll]];
G2L["a0"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a0"]["Text"] = [[All]];
G2L["a0"]["Position"] = UDim2.new(0, 0, 0.428, 0);
-- Attributes
G2L["a0"]:SetAttribute([[All]], false);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.UICorner
G2L["a1"] = Instance.new("UICorner", G2L["a0"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.UIPadding
G2L["a2"] = Instance.new("UIPadding", G2L["a0"]);
G2L["a2"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["a2"]["PaddingLeft"] = UDim.new(0.15, 0);
G2L["a2"]["PaddingBottom"] = UDim.new(0.25, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.UIStroke
G2L["a3"] = Instance.new("UIStroke", G2L["a0"]);
G2L["a3"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["a3"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.Checkbox
G2L["a4"] = Instance.new("TextButton", G2L["a0"]);
G2L["a4"]["BorderSizePixel"] = 0;
G2L["a4"]["AutoButtonColor"] = false;
G2L["a4"]["TextSize"] = 14;
G2L["a4"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["a4"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a4"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["a4"]["Size"] = UDim2.new(0.25, 0, 0.75, 0);
G2L["a4"]["Name"] = [[Checkbox]];
G2L["a4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["a4"]["Text"] = [[]];
G2L["a4"]["Position"] = UDim2.new(0.55, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.Checkbox.ImageLabel
G2L["a5"] = Instance.new("ImageLabel", G2L["a4"]);
G2L["a5"]["BorderSizePixel"] = 0;
G2L["a5"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
G2L["a5"]["ImageTransparency"] = 1;
G2L["a5"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["a5"]["Image"] = [[rbxassetid://16250460302]];
G2L["a5"]["Size"] = UDim2.new(1, -5, 1, -5);
G2L["a5"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a5"]["BackgroundTransparency"] = 1;
G2L["a5"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.Checkbox.UIStroke
G2L["a6"] = Instance.new("UIStroke", G2L["a4"]);
G2L["a6"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["a6"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.MiscList.TurnAll.Checkbox.UICorner
G2L["a7"] = Instance.new("UICorner", G2L["a4"]);
G2L["a7"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option
G2L["a8"] = Instance.new("TextButton", G2L["90"]);
G2L["a8"]["TextWrapped"] = true;
G2L["a8"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["a8"]["AutoButtonColor"] = false;
G2L["a8"]["TextTransparency"] = 0.2;
G2L["a8"]["TextSize"] = 14;
G2L["a8"]["TextColor3"] = Color3.fromRGB(106, 101, 101);
G2L["a8"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["a8"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["a8"]["Size"] = UDim2.new(0.95, 4, 0, 50);
G2L["a8"]["Name"] = [[Option]];
G2L["a8"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["a8"]["Text"] = [[Option]];
G2L["a8"]["Position"] = UDim2.new(0, 0, 0.428, 0);
-- Attributes
G2L["a8"]:SetAttribute([[Ignore]], true);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.UICorner
G2L["a9"] = Instance.new("UICorner", G2L["a8"]);



-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.UIPadding
G2L["aa"] = Instance.new("UIPadding", G2L["a8"]);
G2L["aa"]["PaddingTop"] = UDim.new(0.25, 0);
G2L["aa"]["PaddingLeft"] = UDim.new(0.026, 0);
G2L["aa"]["PaddingBottom"] = UDim.new(0.25, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.UIStroke
G2L["ab"] = Instance.new("UIStroke", G2L["a8"]);
G2L["ab"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["ab"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.Checkbox
G2L["ac"] = Instance.new("TextButton", G2L["a8"]);
G2L["ac"]["BorderSizePixel"] = 0;
G2L["ac"]["AutoButtonColor"] = false;
G2L["ac"]["TextSize"] = 14;
G2L["ac"]["TextColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["BackgroundColor3"] = Color3.fromRGB(26, 26, 26);
G2L["ac"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["ac"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["ac"]["Size"] = UDim2.new(0.034, 0, 0.75, 0);
G2L["ac"]["Name"] = [[Checkbox]];
G2L["ac"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["ac"]["Text"] = [[]];
G2L["ac"]["Position"] = UDim2.new(0.94, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.Checkbox.ImageLabel
G2L["ad"] = Instance.new("ImageLabel", G2L["ac"]);
G2L["ad"]["BorderSizePixel"] = 0;
G2L["ad"]["BackgroundColor3"] = Color3.fromRGB(71, 71, 71);
G2L["ad"]["ImageTransparency"] = 1;
G2L["ad"]["AnchorPoint"] = Vector2.new(0.5, 0.5);
G2L["ad"]["Image"] = [[rbxassetid://16250460302]];
G2L["ad"]["Size"] = UDim2.new(1, -5, 1, -5);
G2L["ad"]["BorderColor3"] = Color3.fromRGB(28, 43, 54);
G2L["ad"]["BackgroundTransparency"] = 1;
G2L["ad"]["Position"] = UDim2.new(0.5, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.Checkbox.UIStroke
G2L["ae"] = Instance.new("UIStroke", G2L["ac"]);
G2L["ae"]["ApplyStrokeMode"] = Enum.ApplyStrokeMode.Border;
G2L["ae"]["Color"] = Color3.fromRGB(61, 61, 61);


-- StarterGui.ScriptedUI.BackgroundFrame.Tabs.! Template.ScrollingFrame.MultiDropdownMain.MultiDropdown.FrameList.List.Option.Checkbox.UICorner
G2L["af"] = Instance.new("UICorner", G2L["ac"]);
G2L["af"]["CornerRadius"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgrounNotification
G2L["b0"] = Instance.new("Frame", G2L["1"]);
G2L["b0"]["BorderSizePixel"] = 0;
G2L["b0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b0"]["AnchorPoint"] = Vector2.new(1, 1);
G2L["b0"]["Size"] = UDim2.new(0, 250, 2, 0);
G2L["b0"]["Position"] = UDim2.new(1, -15, 1, -15);
G2L["b0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b0"]["Name"] = [[BackgrounNotification]];
G2L["b0"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgrounNotification.UIPadding
G2L["b1"] = Instance.new("UIPadding", G2L["b0"]);
G2L["b1"]["PaddingTop"] = UDim.new(0, 5);
G2L["b1"]["PaddingRight"] = UDim.new(0, 5);
G2L["b1"]["PaddingLeft"] = UDim.new(0, 5);
G2L["b1"]["PaddingBottom"] = UDim.new(0, 5);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications
G2L["b2"] = Instance.new("ScrollingFrame", G2L["b0"]);
G2L["b2"]["Active"] = true;
G2L["b2"]["ScrollingDirection"] = Enum.ScrollingDirection.Y;
G2L["b2"]["BorderSizePixel"] = 0;
G2L["b2"]["CanvasSize"] = UDim2.new(0, 0, 0, 0);
G2L["b2"]["ScrollingEnabled"] = false;
G2L["b2"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b2"]["Name"] = [[Notifications]];
G2L["b2"]["ScrollBarImageTransparency"] = 1;
G2L["b2"]["AnchorPoint"] = Vector2.new(0.5, 1);
G2L["b2"]["ClipsDescendants"] = false;
G2L["b2"]["Size"] = UDim2.new(1, 0, 1, 0);
G2L["b2"]["ScrollBarImageColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["Position"] = UDim2.new(0.5, 0, 1, 0);
G2L["b2"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b2"]["ScrollBarThickness"] = 0;
G2L["b2"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.UIListLayout
G2L["b3"] = Instance.new("UIListLayout", G2L["b2"]);
G2L["b3"]["HorizontalAlignment"] = Enum.HorizontalAlignment.Center;
G2L["b3"]["Padding"] = UDim.new(0, 10);
G2L["b3"]["VerticalAlignment"] = Enum.VerticalAlignment.Bottom;
G2L["b3"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template
G2L["b4"] = Instance.new("Frame", G2L["b2"]);
G2L["b4"]["BorderSizePixel"] = 0;
G2L["b4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b4"]["Size"] = UDim2.new(1, 0, 0, 58);
G2L["b4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b4"]["Name"] = [[Template]];
G2L["b4"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main
G2L["b5"] = Instance.new("Frame", G2L["b4"]);
G2L["b5"]["BorderSizePixel"] = 0;
G2L["b5"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b5"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b5"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["b5"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b5"]["Name"] = [[Main]];


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.UICorner
G2L["b6"] = Instance.new("UICorner", G2L["b5"]);



-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame
G2L["b7"] = Instance.new("Frame", G2L["b5"]);
G2L["b7"]["BorderSizePixel"] = 0;
G2L["b7"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["b7"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["b7"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["b7"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b7"]["Name"] = [[TitleFrame]];
G2L["b7"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.Icon
G2L["b8"] = Instance.new("ImageLabel", G2L["b7"]);
G2L["b8"]["BorderSizePixel"] = 0;
G2L["b8"]["BackgroundColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["ImageTransparency"] = 0.25;
G2L["b8"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["b8"]["Image"] = [[rbxassetid://15642579187]];
G2L["b8"]["Size"] = UDim2.new(0, 25, 0, 25);
G2L["b8"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["b8"]["BackgroundTransparency"] = 1;
G2L["b8"]["Name"] = [[Icon]];
G2L["b8"]["Position"] = UDim2.new(0, 7, 0.5, 0);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.Icon.UIAspectRatioConstraint
G2L["b9"] = Instance.new("UIAspectRatioConstraint", G2L["b8"]);



-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.Icon.UIGradient
G2L["ba"] = Instance.new("UIGradient", G2L["b8"]);
G2L["ba"]["Rotation"] = 45;
G2L["ba"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(171, 199, 230)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(132, 162, 183))};


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.Icon.Title
G2L["bb"] = Instance.new("TextLabel", G2L["b8"]);
G2L["bb"]["TextWrapped"] = true;
G2L["bb"]["BorderSizePixel"] = 0;
G2L["bb"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bb"]["TextScaled"] = true;
G2L["bb"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bb"]["TextSize"] = 20;
G2L["bb"]["FontFace"] = Font.new([[rbxasset://fonts/families/SourceSansPro.json]], Enum.FontWeight.Bold, Enum.FontStyle.Normal);
G2L["bb"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["bb"]["BackgroundTransparency"] = 1;
G2L["bb"]["AnchorPoint"] = Vector2.new(0, 0.5);
G2L["bb"]["Size"] = UDim2.new(8, 0, 0.9, 50);
G2L["bb"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bb"]["Text"] = [[Notify Title]];
G2L["bb"]["Name"] = [[Title]];
G2L["bb"]["Position"] = UDim2.new(1, 0, 0.5, 0);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.Icon.Title.UIPadding
G2L["bc"] = Instance.new("UIPadding", G2L["bb"]);
G2L["bc"]["PaddingTop"] = UDim.new(0.35, 0);
G2L["bc"]["PaddingLeft"] = UDim.new(0, 6);
G2L["bc"]["PaddingBottom"] = UDim.new(0.35, 2);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.SizeY
G2L["bd"] = Instance.new("TextLabel", G2L["b7"]);
G2L["bd"]["TextWrapped"] = true;
G2L["bd"]["BorderSizePixel"] = 0;
G2L["bd"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["bd"]["TextTransparency"] = 1;
G2L["bd"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["bd"]["TextSize"] = 20;
G2L["bd"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["bd"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["bd"]["BackgroundTransparency"] = 1;
G2L["bd"]["Size"] = UDim2.new(1, 0, 0, 40);
G2L["bd"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["bd"]["Text"] = [[]];
G2L["bd"]["Name"] = [[SizeY]];


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.TitleFrame.SizeY.UIPadding
G2L["be"] = Instance.new("UIPadding", G2L["bd"]);
G2L["be"]["PaddingRight"] = UDim.new(0, 10);
G2L["be"]["PaddingLeft"] = UDim.new(0, 8);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.UIListLayout
G2L["bf"] = Instance.new("UIListLayout", G2L["b5"]);
G2L["bf"]["SortOrder"] = Enum.SortOrder.LayoutOrder;


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.Content
G2L["c0"] = Instance.new("TextLabel", G2L["b5"]);
G2L["c0"]["TextWrapped"] = true;
G2L["c0"]["BorderSizePixel"] = 0;
G2L["c0"]["TextXAlignment"] = Enum.TextXAlignment.Left;
G2L["c0"]["TextTransparency"] = 0.25;
G2L["c0"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c0"]["TextSize"] = 14;
G2L["c0"]["FontFace"] = Font.new([[rbxasset://fonts/families/GothamSSm.json]], Enum.FontWeight.Medium, Enum.FontStyle.Normal);
G2L["c0"]["TextColor3"] = Color3.fromRGB(106, 123, 142);
G2L["c0"]["BackgroundTransparency"] = 1;
G2L["c0"]["RichText"] = true;
G2L["c0"]["Size"] = UDim2.new(1, 0, 0, 0);
G2L["c0"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c0"]["Text"] = [[Notify Content]];
G2L["c0"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["c0"]["Name"] = [[Content]];
G2L["c0"]["Position"] = UDim2.new(0, 0, 1, 0);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.Content.UIPadding
G2L["c1"] = Instance.new("UIPadding", G2L["c0"]);
G2L["c1"]["PaddingTop"] = UDim.new(0, -6);
G2L["c1"]["PaddingRight"] = UDim.new(0, 15);
G2L["c1"]["PaddingLeft"] = UDim.new(0, 15);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.UIGradient
G2L["c2"] = Instance.new("UIGradient", G2L["b5"]);
G2L["c2"]["Rotation"] = 36;
G2L["c2"]["Transparency"] = NumberSequence.new{NumberSequenceKeypoint.new(0.000, 0.03),NumberSequenceKeypoint.new(1.000, 0.03)};
G2L["c2"]["Color"] = ColorSequence.new{ColorSequenceKeypoint.new(0.000, Color3.fromRGB(31, 31, 36)),ColorSequenceKeypoint.new(1.000, Color3.fromRGB(24, 24, 27))};


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.UIStroke
G2L["c3"] = Instance.new("UIStroke", G2L["b5"]);
G2L["c3"]["Transparency"] = 0.5;
G2L["c3"]["Thickness"] = 3;
G2L["c3"]["Color"] = Color3.fromRGB(41, 52, 69);


-- StarterGui.ScriptedUI.BackgrounNotification.Notifications.Template.Main.BottomPadding
G2L["c4"] = Instance.new("Frame", G2L["b5"]);
G2L["c4"]["BorderSizePixel"] = 0;
G2L["c4"]["BackgroundColor3"] = Color3.fromRGB(255, 255, 255);
G2L["c4"]["AutomaticSize"] = Enum.AutomaticSize.Y;
G2L["c4"]["Size"] = UDim2.new(1, 0, 0, 10);
G2L["c4"]["BorderColor3"] = Color3.fromRGB(0, 0, 0);
G2L["c4"]["Name"] = [[BottomPadding]];
G2L["c4"]["BackgroundTransparency"] = 1;


-- StarterGui.ScriptedUI.BackgrounNotification.UIScale
G2L["c5"] = Instance.new("UIScale", G2L["b0"]);
G2L["c5"]["Scale"] = 0.8;



return G2L["1"], require;
