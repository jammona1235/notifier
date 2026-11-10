-- DEOBF BY BALTIKA 
-- TGK:@project_baltika
print("TGK: @project_baltika")
print("leaked by BALTIKA")

local function geniter(f, s, c)
	if type(f) ~= "function" then
		local mt = getmetatable(f)

		if type(mt) == "table" and mt.__iter then
			f, s, c = mt.__iter(f)
		elseif type(f) == "table" then
			f, s, c = next, f, nil
		end
	end

	return function()
		local r = table.pack(f(s, c))

		if r[1] == nil then
			return false
		end

		c = r[1]

		return true, table.unpack(r, 1, r.n)
	end
end

if _G.ekeiskd then
	return
end

_G.ekeiskd = true

if not (function()
	local CoreGui = game:GetService("CoreGui")

	if CoreGui:FindFirstChild("KurdHub") or CoreGui:FindFirstChild("Kurdhub") or CoreGui:FindFirstChild("KURD HUB") then
		return true
	end

	if _G.okiy and _G.jiuk == true then
		return true
	end

	local PlayerGui = game.Players.LocalPlayer:FindFirstChild("PlayerGui")

	if PlayerGui then
		for _, child in ipairs(PlayerGui:GetChildren()) do
			if child.Name:match("[Kk][Uu][Rr][Dd]") then
				return true
			end

			if child.Name:match("[Hh][Uu][Bb]") then
				return true
			end
		end
	end

	return false
end)() then
	game:GetService("StarterGui"):SetCore("SendNotification", {
		Title = "❌ Error",
		Text = "You can Use finder with kurdhub only!",
		Duration = 5
	})

	return
end

local LocalPlayer = game:GetService("Players").LocalPlayer
local RunService = game:GetService("RunService")
local TeleportService = game:GetService("TeleportService")
local HttpService = game:GetService("HttpService")
local CoreGui = game:GetService("CoreGui")
local GuiService = game:GetService("GuiService")

local function findHttpRequest()
	if syn and syn.request then
		return syn.request
	end

	if http then
		if http.request then
			return http.request
		end
	end

	if _G.request then
		return _G.request
	end

	if getgenv and getgenv().request then
		return getgenv().request
	end

	if getrenv and getrenv().request then
		return getrenv().request
	end

	if shared and shared.request then
		return shared.request
	end

	if http_request then
		return http_request
	end

	if request then
		return request
	end

	return nil
end

local httpRequest = findHttpRequest()

if not httpRequest then
	error("Turn on Any VPN")
end

sisodps = function(encodedBase32Text)
	local shiftAmount = tonumber(encodedBase32Text:sub(-2))
	local encodedPayload = encodedBase32Text:sub(1, -3)
	local decodedText = ""

	for i = 1, #encodedPayload do
		local encodedCharacter = encodedPayload:sub(i, i)
		local aBCDEFGHIJKLMNOPQRSTUVWXYZ234567 = string.find("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567", encodedCharacter, 1, true)

		if aBCDEFGHIJKLMNOPQRSTUVWXYZ234567 then
			local decodedCharacterIndex = (aBCDEFGHIJKLMNOPQRSTUVWXYZ234567 - 1 - shiftAmount) % 32 + 1

			decodedText ..= ("ABCDEFGHIJKLMNOPQRSTUVWXYZ234567"):sub(decodedCharacterIndex, decodedCharacterIndex)
		else
			decodedText ..= encodedCharacter
		end
	end

	return decodedText
end

local tripletToCharacter = {
	H9k = "a",
	M2q = "b",
	P5v = "c",
	R8x = "d",
	W3b = "e",
	Z6f = "f",
	D1n = "g",
	G4s = "h",
	L7y = "i",
	O9j = "j",
	T2m = "k",
	X4p = "l",
	B6r = "m",
	E8u = "n",
	I1w = "o",
	N3z = "p",
	S5c = "q",
	V7h = "r",
	Y9l = "s",
	C2o = "t",
	F4q = "u",
	J6t = "v",
	P8v = "w",
	U1x = "x",
	A3z = "y",
	E5b = "z",
	M7d = "A",
	Q9g = "B",
	W2i = "C",
	Z4k = "D",
	C6n = "E",
	H8p = "F",
	K1r = "G",
	O3t = "H",
	R5w = "I",
	V7y = "J",
	X9a = "K",
	B2c = "L",
	F4e = "M",
	J6h = "N",
	L8j = "O",
	P1l = "P",
	T3o = "Q",
	Y5q = "R",
	D7s = "S",
	G9u = "T",
	K2x = "U",
	N4z = "V",
	Q6b = "W",
	S8d = "X",
	W1f = "Y",
	A3i = "Z",
	E5k = "0",
	H7m = "1",
	M9p = "2",
	R2r = "3",
	U4t = "4",
	X6v = "5",
	B8x = "6",
	F1z = "7",
	J3b = "8",
	P5d = "9",
	T7g = "-"
}

local function decodeTripletString(encodedTripletText)
	if encodedTripletText then
		if encodedTripletText ~= "" then
			if #encodedTripletText < 5 then
				return nil
			end

			local suffixNumber = tonumber(encodedTripletText:sub(-2))

			if not suffixNumber or suffixNumber < 10 or suffixNumber > 99 then
				return nil
			end

			local tripletPayload = encodedTripletText:sub(1, -3)
			local decodedCharacters = {}
			local tripletIndex = 1

			while tripletIndex <= #tripletPayload do
				local decodedCharacter = tripletToCharacter[tripletPayload:sub(tripletIndex, tripletIndex + 2)]

				if not decodedCharacter then
					return nil
				end

				table.insert(decodedCharacters, decodedCharacter)
				tripletIndex += 3
			end

			return table.concat(decodedCharacters)
		end
	end

	return nil
end
local function invertMap(sourceMap)
	local invertedMap = {}

	for k, v in pairs(sourceMap) do
		invertedMap[v] = k
	end

	return invertedMap
end

local chunkDecoderBySelector = {}

for k, v in pairs({
	["1"] = {
		a = "x7r",
		b = "y8s",
		c = "z9t",
		d = "a1u",
		e = "b2v",
		f = "c3w",
		["0"] = "d4x",
		["1"] = "e5y",
		["2"] = "f6z"
	},
	a = {
		g = "g7a",
		h = "h8b",
		i = "i9c",
		j = "j1d",
		k = "k2e",
		l = "l3f",
		["3"] = "m4g",
		["4"] = "n5h",
		["5"] = "o6i"
	},
	h = {
		m = "p7j",
		n = "q8k",
		o = "r9l",
		p = "s1m",
		q = "t2n",
		r = "u3o",
		["6"] = "v4p",
		["7"] = "w5q",
		["8"] = "x6r"
	},
	b = {
		s = "y7s",
		t = "z8t",
		u = "a9u",
		v = "b1v",
		w = "c2w",
		x = "d3x",
		["9"] = "e4y",
		["-"] = "f5z"
	},
	p = {
		y = "g6a",
		z = "h7b",
		["0"] = "i8c",
		["1"] = "j9d",
		["2"] = "k1e",
		["3"] = "l2f",
		["4"] = "m3g",
		["-"] = "n4h"
	},
	h = {
		a = "o5i",
		b = "p6j",
		c = "q7k",
		d = "r8l",
		e = "s9m",
		["0"] = "t1n",
		["1"] = "u2o",
		["2"] = "v3p",
		["3"] = "w4q",
		["4"] = "x5r",
		["5"] = "y6s"
	},
	e = {
		f = "z7t",
		g = "a8u",
		h = "b9v",
		i = "c1w",
		j = "d2x",
		["3"] = "e3y",
		["4"] = "f4z",
		["5"] = "g5a",
		["6"] = "h6b",
		["7"] = "i7c"
	},
	n = {
		k = "j8d",
		l = "k9e",
		m = "l1f",
		n = "m2g",
		o = "n3h",
		["5"] = "o4i",
		["6"] = "p5j",
		["7"] = "q6k",
		["8"] = "r7l",
		["9"] = "s8m"
	},
	d = {
		p = "t9n",
		q = "u1o",
		r = "v2p",
		s = "w3q",
		t = "x4r",
		["0"] = "y5s",
		["1"] = "z6t",
		["2"] = "a7u",
		["3"] = "b8v",
		["-"] = "c9w"
	},
	o = {
		u = "d1x",
		v = "e2y",
		w = "f3z",
		x = "g4a",
		y = "h5b",
		["2"] = "i6c",
		["3"] = "j7d",
		["4"] = "k8e",
		["5"] = "l9f",
		["6"] = "m1g"
	},
	s = {
		z = "n2h",
		["0"] = "o3i",
		["1"] = "p4j",
		["2"] = "q5k",
		["3"] = "r6l",
		["4"] = "s7m",
		["5"] = "t8n",
		["6"] = "u9o",
		["7"] = "v1p",
		["8"] = "w2q",
		["9"] = "x3r",
		["-"] = "y4s"
	}
}) do
	chunkDecoderBySelector[k] = invertMap(v)
end

local function replaceEncodedChunks(encodedText, chunkDecoder)
	local decodedText = ""
	local textIndex = 1
	local textLength = #encodedText

	while textIndex <= textLength do
		local chunkMatched = false

		for k, v in pairs(chunkDecoder) do
			if encodedText:sub(textIndex, textIndex + #k - 1) == k then
				decodedText ..= v
				textIndex += #k
				chunkMatched = true

				break
			end
		end

		if not chunkMatched then
			decodedText ..= encodedText:sub(textIndex, textIndex)
			textIndex += 1
		end
	end

	return decodedText
end
local function decodeServerJobId(encodedJobId)
	if encodedJobId then
		if encodedJobId ~= "" then
			local selector = "1"
			local originalEncodedJobId = encodedJobId
			local selectorCharacter = encodedJobId:sub(-1)

			if selectorCharacter:match("%w") then
				selector = selectorCharacter
				encodedJobId = encodedJobId:sub(1, -2)
			end

			local selectedChunkDecoder = chunkDecoderBySelector[selector]

			if not selectedChunkDecoder then
				return originalEncodedJobId
			end

			local decodedJobId = replaceEncodedChunks(encodedJobId, selectedChunkDecoder)

			if decodedJobId and #decodedJobId > 5 then
				return decodedJobId
			end

			return originalEncodedJobId
		end
	end

	return nil
end
local function requestAuthenticationTokens(callback)
	local function sendTokenRequest()
		return httpRequest({
			Url = "https://ninja12002.serv00.net/PREMIUM/jack/verify.php?action=generate",
			Method = "GET"
		})
	end

	local ok, result = pcall(sendTokenRequest)

	if not ok or not result or result.StatusCode ~= 200 then
		callback(nil, nil)

		return
	end

	local ok2, result2 = pcall(function()
		return HttpService:JSONDecode(result.Body)
	end)

	if not ok2 or not result2 or not result2.tikJack_827 then
		callback(nil, nil)

		return
	end

	local match, encodedTripletToken = result2.tikJack_827:match("^([^,]+),([^,]+)$")

	if not match or not encodedTripletToken then
		callback(nil, nil)

		return
	end

	local challengeToken = sisodps(match)
	local verificationToken = decodeTripletString(encodedTripletToken)

	if not challengeToken or not verificationToken then
		callback(nil, nil)

		return
	end

	callback(challengeToken, verificationToken)
end
local function verifyAndFetchServerText(challengeToken, verificationToken, callback)
	if not challengeToken or not verificationToken then
		callback(nil, "")

		return
	end

	local ok, result = pcall(function()
		return httpRequest({
			Url = "https://ninja12002.serv00.net/PREMIUM/jack/verify.php?action=verify",
			Method = "POST",
			Headers = {
				["Content-Type"] = "application/x-www-form-urlencoded"
			},
			Body = HttpService:UrlEncode(challengeToken) .. "," .. HttpService:UrlEncode(verificationToken)
		})
	end)

	if ok and result then
		callback(result.StatusCode, result.Body)
	else
		callback(nil, result or "Request failed")
	end
end

local ScreenGui = Instance.new("ScreenGui")

ScreenGui.Name = "skwpdnt"
ScreenGui.IgnoreGuiInset = true
ScreenGui.ResetOnSpawn = false
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling
ScreenGui.Parent = LocalPlayer:WaitForChild("PlayerGui")

local Frame = Instance.new("Frame")

Frame.Name = "ErrorFrame"
Frame.Size = UDim2.new(0, 120, 0, 28)
Frame.Position = UDim2.new(1, -50, 0, 15)
Frame.AnchorPoint = Vector2.new(1, 0)
Frame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame.BackgroundTransparency = 1
Frame.BorderSizePixel = 0
Frame.Parent = ScreenGui

local UICorner = Instance.new("UICorner")

UICorner.CornerRadius = UDim.new(0, 6)
UICorner.Parent = Frame

local TextLabel = Instance.new("TextLabel")

TextLabel.Name = "ErrorText"
TextLabel.Size = UDim2.new(1, 0, 1, 0)
TextLabel.BackgroundTransparency = 1
TextLabel.TextColor3 = Color3.fromRGB(255, 100, 100)
TextLabel.TextSize = 12
TextLabel.Font = Enum.Font.Gotham
TextLabel.Text = ""
TextLabel.TextTransparency = 1
TextLabel.TextXAlignment = Enum.TextXAlignment.Center
TextLabel.TextYAlignment = Enum.TextYAlignment.Center
TextLabel.Parent = Frame

local lastErrorMessage = ""
local isDisplayingError = false

local function showTeleportError(errorMessage)
	if isDisplayingError then
		return
	end

	isDisplayingError = true

	if string.find(errorMessage, "773") or string.find(errorMessage, "771") then
		TextLabel.Text = "🔒VC/New Player server"
	elseif string.find(errorMessage, "772") or string.find(errorMessage, "full") then
		TextLabel.Text = "👥Server is full"
	else
		TextLabel.Text = "🔒VC/New Player server"
	end

	Frame.BackgroundTransparency = 0
	TextLabel.TextTransparency = 0
	task.wait(2)
	Frame.BackgroundTransparency = 1
	TextLabel.TextTransparency = 1
	lastErrorMessage = ""
	isDisplayingError = false
end
local function suppressRobloxErrorPrompt()
	local RobloxPromptGui = CoreGui:FindFirstChild("RobloxPromptGui")

	if RobloxPromptGui then
		if RobloxPromptGui:FindFirstChild("promptOverlay") then
			local ErrorPrompt = RobloxPromptGui.promptOverlay:FindFirstChild("ErrorPrompt")

			if ErrorPrompt and ErrorPrompt.Visible then
				local robloxErrorMessage = ""

				pcall(function()
					robloxErrorMessage = ErrorPrompt.MessageArea.ErrorFrame.ErrorMessage.Text
				end)

				if robloxErrorMessage ~= "" and robloxErrorMessage ~= lastErrorMessage then
					lastErrorMessage = robloxErrorMessage
					task.spawn(function()
						showTeleportError(robloxErrorMessage)
					end)
				end

				ErrorPrompt.Visible = false
				GuiService:ClearError()
			end
		end
	end
end

local currentPage = "Logs"
local serverSpamInterval = 0.1
local text = "40M"
local color3 = Color3.fromRGB(255, 50, 50)
local autoJoinEnabled = false
local autoRefreshEnabled = true
local automaticallyJoinedServerIds = {}
local initiallyListedServerIds = {}
local autoJoinBaselineCaptured = false
local Frame2 = Instance.new("Frame")

Frame2.Name = "Main"
Frame2.ClipsDescendants = true
Frame2.AnchorPoint = Vector2.new(0.5, 0.5)
Frame2.Position = UDim2.new(0.5, 0, 0.5, 0)
Frame2.Size = UDim2.new(0, 500, 0, 320)
Frame2.BackgroundColor3 = Color3.fromRGB(10, 11, 16)
Frame2.BackgroundTransparency = 0.15
Frame2.BorderSizePixel = 0
Frame2.Parent = ScreenGui

local UICorner2 = Instance.new("UICorner")

UICorner2.Name = "UICorner"
UICorner2.CornerRadius = UDim.new(0, 28)
UICorner2.Parent = Frame2

local UIScale = Instance.new("UIScale")

UIScale.Name = "UIScale"
UIScale.Scale = 0.85
UIScale.Parent = Frame2

local TextButton = Instance.new("TextButton")

TextButton.Name = "KurdHubToggle"
TextButton.Size = UDim2.new(0, 35, 0, 35)
TextButton.Position = UDim2.new(1, -40, 0.5, 0)
TextButton.AnchorPoint = Vector2.new(0.5, 0.5)
TextButton.Text = "🐾"
TextButton.TextScaled = true
TextButton.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextButton.TextColor3 = Color3.new(0, 0, 0)
TextButton.Active = true
TextButton.ZIndex = 99999
TextButton.Parent = ScreenGui

local UICorner3 = Instance.new("UICorner")

UICorner3.CornerRadius = UDim.new(0, 6)
UICorner3.Parent = TextButton

local isDraggingLauncher = false
local launcherDragStart
local launcherStartPosition

TextButton.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDraggingLauncher = true
		launcherDragStart = input.Position
		launcherStartPosition = TextButton.Position
	end
end)
TextButton.InputChanged:Connect(function(input)
	if isDraggingLauncher then
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			local dragDelta = input.Position - launcherDragStart

			TextButton.Position = UDim2.new(launcherStartPosition.X.Scale, launcherStartPosition.X.Offset + dragDelta.X, launcherStartPosition.Y.Scale, launcherStartPosition.Y.Offset + dragDelta.Y)
		end
	end
end)
TextButton.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDraggingLauncher = false
	end
end)

local visible = true

TextButton.MouseButton1Click:Connect(function()
	visible = not visible
	Frame2.Visible = visible
end)

local UIGradient = Instance.new("UIGradient")

UIGradient.Name = "UIGradient"
UIGradient.Color = ColorSequence.new(Color3.fromRGB(15, 17, 24), Color3.fromRGB(8, 9, 14))
UIGradient.Rotation = 150
UIGradient.Parent = Frame2

local ImageLabel = Instance.new("ImageLabel")

ImageLabel.Name = "ImageLabel"
ImageLabel.Position = UDim2.new(-0.25, 0, -0.25, 0)
ImageLabel.Size = UDim2.new(1.5, 0, 1.5, 0)
ImageLabel.BackgroundTransparency = 1
ImageLabel.Rotation = 2.047
ImageLabel.Image = "rbxassetid://12224031644"
ImageLabel.ImageColor3 = Color3.fromRGB(255, 50, 50)
ImageLabel.ImageTransparency = 0.5
ImageLabel.Parent = Frame2

local ImageLabel2 = Instance.new("ImageLabel")

ImageLabel2.Name = "ImageLabel"
ImageLabel2.Position = UDim2.new(0.1, 0, 0.1, 0)
ImageLabel2.Size = UDim2.new(1.2, 0, 1.2, 0)
ImageLabel2.BackgroundTransparency = 1
ImageLabel2.Rotation = -1.433
ImageLabel2.Image = "rbxassetid://12224031644"
ImageLabel2.ImageColor3 = Color3.fromRGB(200, 50, 50)
ImageLabel2.ImageTransparency = 0.5
ImageLabel2.Parent = Frame2

local UIStroke = Instance.new("UIStroke")

UIStroke.Name = "UIStroke"
UIStroke.Color = Color3.fromRGB(255, 50, 50)
UIStroke.Thickness = 1.5
UIStroke.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke.Transparency = 0.4
UIStroke.Parent = Frame2

local Frame3 = Instance.new("Frame")

Frame3.Name = "Frame"
Frame3.ZIndex = 2
Frame3.Size = UDim2.new(0, 120, 1, 0)
Frame3.BackgroundColor3 = Color3.fromRGB(8, 9, 14)
Frame3.BackgroundTransparency = 0.15
Frame3.BorderSizePixel = 0
Frame3.Parent = Frame2

local UICorner4 = Instance.new("UICorner")

UICorner4.Name = "UICorner"
UICorner4.CornerRadius = UDim.new(0, 28)
UICorner4.Parent = Frame3

local Frame4 = Instance.new("Frame")

Frame4.Name = "Frame"
Frame4.ZIndex = 2
Frame4.Position = UDim2.new(1, -28, 0, 0)
Frame4.Size = UDim2.new(0, 28, 1, 0)
Frame4.BackgroundColor3 = Color3.fromRGB(8, 9, 14)
Frame4.BackgroundTransparency = 0.15
Frame4.BorderSizePixel = 0
Frame4.Parent = Frame3

local Frame5 = Instance.new("Frame")

Frame5.Name = "Frame"
Frame5.ZIndex = 3
Frame5.AnchorPoint = Vector2.new(0, 0.5)
Frame5.Position = UDim2.new(1, 0, 0.5, 0)
Frame5.Size = UDim2.new(0, 1, 0.9, 0)
Frame5.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
Frame5.BackgroundTransparency = 0.7
Frame5.BorderSizePixel = 0
Frame5.Parent = Frame3

local UICorner5 = Instance.new("UICorner")

UICorner5.Name = "UICorner"
UICorner5.CornerRadius = UDim.new(1, 0)
UICorner5.Parent = Frame5

local Frame6 = Instance.new("Frame")

Frame6.Name = "Frame"
Frame6.ZIndex = 3
Frame6.Size = UDim2.new(1, 0, 0, 60)
Frame6.BackgroundTransparency = 1
Frame6.Parent = Frame3

local TextLabel2 = Instance.new("TextLabel")

TextLabel2.Name = "TextLabel"
TextLabel2.ZIndex = 4
TextLabel2.Position = UDim2.new(0, 16, 0, 0)
TextLabel2.Size = UDim2.new(1, 0, 1, 0)
TextLabel2.BackgroundTransparency = 1
TextLabel2.RichText = true
TextLabel2.Text = "KURD<font color='rgb(255,0,0)'> HUB</font>"
TextLabel2.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel2.TextSize = 18
TextLabel2.Font = Enum.Font.GothamBold
TextLabel2.TextXAlignment = Enum.TextXAlignment.Left
TextLabel2.LineHeight = 1.1
TextLabel2.Parent = Frame6

local TextLabel3 = Instance.new("TextLabel")

TextLabel3.Name = "TextLabel"
TextLabel3.ZIndex = 4
TextLabel3.Position = UDim2.new(0, 28, 0, 39)
TextLabel3.Size = UDim2.new(1, -30, 0, 16)
TextLabel3.BackgroundTransparency = 1
TextLabel3.Text = "Tiktok : jack._.827"
TextLabel3.TextColor3 = Color3.fromRGB(110, 120, 140)
TextLabel3.TextSize = 11
TextLabel3.Font = Enum.Font.GothamMedium
TextLabel3.TextXAlignment = Enum.TextXAlignment.Left
TextLabel3.LineHeight = 1.1
TextLabel3.Parent = Frame6

local Frame7 = Instance.new("Frame")

Frame7.Name = "Frame"
Frame7.ZIndex = 3
Frame7.Position = UDim2.new(0, 0, 0, 70)
Frame7.Size = UDim2.new(1, 0, 1, -120)
Frame7.BackgroundTransparency = 1
Frame7.Parent = Frame3

local UIListLayout = Instance.new("UIListLayout")

UIListLayout.Name = "UIListLayout"
UIListLayout.Padding = UDim.new(0, 4)
UIListLayout.HorizontalAlignment = Enum.HorizontalAlignment.Center
UIListLayout.Parent = Frame7

local TextButton2 = Instance.new("TextButton")

TextButton2.Name = "TextButton"
TextButton2.ZIndex = 4
TextButton2.Size = UDim2.new(1, -20, 0, 36)
TextButton2.BackgroundTransparency = 1
TextButton2.Text = "Logs"
TextButton2.TextColor3 = Color3.fromRGB(245, 245, 250)
TextButton2.TextSize = 13
TextButton2.Font = Enum.Font.GothamBold
TextButton2.LineHeight = 1.1
TextButton2.AutoButtonColor = false
TextButton2.Parent = Frame7

local TextButton3 = Instance.new("TextButton")

TextButton3.Name = "TextButton"
TextButton3.ZIndex = 4
TextButton3.Size = UDim2.new(1, -20, 0, 36)
TextButton3.BackgroundTransparency = 1
TextButton3.Text = "Settings"
TextButton3.TextColor3 = Color3.fromRGB(150, 160, 180)
TextButton3.TextSize = 13
TextButton3.Font = Enum.Font.GothamMedium
TextButton3.LineHeight = 1.1
TextButton3.AutoButtonColor = false
TextButton3.Parent = Frame7

local Frame8 = Instance.new("Frame")

Frame8.Name = "Frame"
Frame8.ZIndex = 2
Frame8.Position = UDim2.new(0, 8, 0, 70)
Frame8.Size = UDim2.new(1, -16, 0, 36)
Frame8.BackgroundColor3 = Color3.fromRGB(255, 50, 50)
Frame8.BackgroundTransparency = 0.8
Frame8.BorderSizePixel = 0
Frame8.Parent = Frame3

local UICorner6 = Instance.new("UICorner")

UICorner6.Name = "UICorner"
UICorner6.Parent = Frame8

local UIStroke2 = Instance.new("UIStroke")

UIStroke2.Name = "UIStroke"
UIStroke2.Color = Color3.fromRGB(255, 50, 50)
UIStroke2.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke2.Transparency = 0.3
UIStroke2.Parent = Frame8

local Frame9 = Instance.new("Frame")

Frame9.Name = "Frame"
Frame9.ZIndex = 2
Frame9.Position = UDim2.new(0, 124, 0, 0)
Frame9.Size = UDim2.new(1, -124, 1, 0)
Frame9.BackgroundTransparency = 1
Frame9.Parent = Frame2

local CanvasGroup = Instance.new("CanvasGroup")

CanvasGroup.Name = "CanvasGroup"
CanvasGroup.ZIndex = 2
CanvasGroup.Position = UDim2.new(0, 16, 0, 16)
CanvasGroup.Size = UDim2.new(1, -32, 1, -32)
CanvasGroup.BackgroundTransparency = 1
CanvasGroup.Parent = Frame9

local UIPadding = Instance.new("UIPadding")

UIPadding.Name = "UIPadding"
UIPadding.PaddingTop = UDim.new(0, 3)
UIPadding.PaddingBottom = UDim.new(0, 3)
UIPadding.PaddingLeft = UDim.new(0, 3)
UIPadding.PaddingRight = UDim.new(0, 3)
UIPadding.Parent = CanvasGroup

local Frame10 = Instance.new("Frame")

Frame10.Name = "Frame"
Frame10.ZIndex = 3
Frame10.Position = UDim2.new(0, 0, 0, 52)
Frame10.Size = UDim2.new(1, 0, 0, 20)
Frame10.BackgroundTransparency = 1
Frame10.Parent = CanvasGroup

local Frame11 = Instance.new("Frame")

Frame11.Name = "Frame"
Frame11.ZIndex = 2
Frame11.Position = UDim2.new(0, 0, 0, 7)
Frame11.Size = UDim2.new(1, 0, 1, -7)
Frame11.BackgroundColor3 = Color3.fromRGB(12, 13, 18)
Frame11.BackgroundTransparency = 0.5
Frame11.BorderSizePixel = 0
Frame11.ClipsDescendants = false
Frame11.Parent = CanvasGroup

local UICorner7 = Instance.new("UICorner")

UICorner7.Name = "UICorner"
UICorner7.CornerRadius = UDim.new(0, 12)
UICorner7.Parent = Frame11

local UIStroke3 = Instance.new("UIStroke")

UIStroke3.Name = "UIStroke"
UIStroke3.Color = Color3.fromRGB(35, 40, 55)
UIStroke3.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke3.Transparency = 0.5
UIStroke3.Parent = Frame11

local ScrollingFrame = Instance.new("ScrollingFrame")

ScrollingFrame.Name = "ScrollingFrame"
ScrollingFrame.ZIndex = 3
ScrollingFrame.Position = UDim2.new(0, 4, 0, 4)
ScrollingFrame.Size = UDim2.new(1, -8, 1, -8)
ScrollingFrame.BackgroundTransparency = 1
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.ScrollBarThickness = 6
ScrollingFrame.ScrollBarImageColor3 = Color3.fromRGB(255, 50, 50)
ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, 0)
ScrollingFrame.ClipsDescendants = false
ScrollingFrame.CanvasPosition = Vector2.new(0, 0)
ScrollingFrame.Parent = Frame11

local UIListLayout2 = Instance.new("UIListLayout")

UIListLayout2.Name = "UIListLayout"
UIListLayout2.Padding = UDim.new(0, 8)
UIListLayout2.Parent = ScrollingFrame

local UIPadding2 = Instance.new("UIPadding")

UIPadding2.Name = "UIPadding"
UIPadding2.PaddingTop = UDim.new(0, 4)
UIPadding2.PaddingBottom = UDim.new(0, 4)
UIPadding2.PaddingLeft = UDim.new(0, 4)
UIPadding2.PaddingRight = UDim.new(0, 4)
UIPadding2.Parent = ScrollingFrame

local CanvasGroup2 = Instance.new("CanvasGroup")

CanvasGroup2.Name = "CanvasGroup"
CanvasGroup2.Visible = false
CanvasGroup2.ZIndex = 2
CanvasGroup2.Position = UDim2.new(0, 16, 0, 16)
CanvasGroup2.Size = UDim2.new(1, -32, 1, -32)
CanvasGroup2.BackgroundTransparency = 1
CanvasGroup2.Parent = Frame9

local UIPadding3 = Instance.new("UIPadding")

UIPadding3.Name = "UIPadding"
UIPadding3.PaddingTop = UDim.new(0, 3)
UIPadding3.PaddingBottom = UDim.new(0, 3)
UIPadding3.PaddingLeft = UDim.new(0, 3)
UIPadding3.PaddingRight = UDim.new(0, 3)
UIPadding3.Parent = CanvasGroup2

local TextLabel4 = Instance.new("TextLabel")

TextLabel4.Name = "TextLabel"
TextLabel4.ZIndex = 3
TextLabel4.Size = UDim2.new(1, 0, 0, 30)
TextLabel4.BackgroundTransparency = 1
TextLabel4.Text = "Settings"
TextLabel4.TextColor3 = Color3.fromRGB(245, 245, 250)
TextLabel4.TextSize = 18
TextLabel4.Font = Enum.Font.GothamBold
TextLabel4.TextXAlignment = Enum.TextXAlignment.Left
TextLabel4.LineHeight = 1.1
TextLabel4.Parent = CanvasGroup2

local ScrollingFrame2 = Instance.new("ScrollingFrame")

ScrollingFrame2.Name = "ScrollingFrame"
ScrollingFrame2.ZIndex = 3
ScrollingFrame2.Position = UDim2.new(0, 0, 0, 40)
ScrollingFrame2.Size = UDim2.new(1, 0, 1, -40)
ScrollingFrame2.BackgroundTransparency = 1
ScrollingFrame2.BorderSizePixel = 0
ScrollingFrame2.ScrollBarThickness = 2
ScrollingFrame2.ScrollBarImageColor3 = Color3.fromRGB(255, 50, 50)
ScrollingFrame2.ScrollingDirection = Enum.ScrollingDirection.Y
ScrollingFrame2.CanvasSize = UDim2.new(0, 0, 0, 320)
ScrollingFrame2.Parent = CanvasGroup2

local UIListLayout3 = Instance.new("UIListLayout")

UIListLayout3.Name = "UIListLayout"
UIListLayout3.Padding = UDim.new(0, 8)
UIListLayout3.Parent = ScrollingFrame2

local UIPadding4 = Instance.new("UIPadding")

UIPadding4.Name = "UIPadding"
UIPadding4.PaddingTop = UDim.new(0, 4)
UIPadding4.PaddingBottom = UDim.new(0, 90)
UIPadding4.PaddingLeft = UDim.new(0, 4)
UIPadding4.PaddingRight = UDim.new(0, 4)
UIPadding4.Parent = ScrollingFrame2

local Frame12 = Instance.new("Frame")

Frame12.Name = "AutoRefreshFrame"
Frame12.ZIndex = 4
Frame12.Size = UDim2.new(1, 0, 0, 60)
Frame12.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
Frame12.BackgroundTransparency = 0.3
Frame12.Parent = ScrollingFrame2

local UICorner8 = Instance.new("UICorner")

UICorner8.CornerRadius = UDim.new(0, 10)
UICorner8.Parent = Frame12

local UIStroke4 = Instance.new("UIStroke")

UIStroke4.Color = Color3.fromRGB(40, 45, 60)
UIStroke4.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke4.Transparency = 0.3
UIStroke4.Parent = Frame12

local TextLabel5 = Instance.new("TextLabel")

TextLabel5.Name = "Title"
TextLabel5.ZIndex = 5
TextLabel5.Position = UDim2.new(0, 16, 0, 12)
TextLabel5.Size = UDim2.new(1, -100, 0, 18)
TextLabel5.BackgroundTransparency = 1
TextLabel5.Text = "Auto Refresh"
TextLabel5.TextColor3 = Color3.fromRGB(245, 245, 250)
TextLabel5.TextSize = 14
TextLabel5.Font = Enum.Font.GothamBold
TextLabel5.TextXAlignment = Enum.TextXAlignment.Left
TextLabel5.Parent = Frame12

local TextLabel6 = Instance.new("TextLabel")

TextLabel6.Name = "Description"
TextLabel6.ZIndex = 5
TextLabel6.Position = UDim2.new(0, 16, 0, 32)
TextLabel6.Size = UDim2.new(1, -100, 0, 14)
TextLabel6.BackgroundTransparency = 1
TextLabel6.Text = "Automatically refresh server list"
TextLabel6.TextColor3 = Color3.fromRGB(110, 120, 140)
TextLabel6.TextSize = 12
TextLabel6.Font = Enum.Font.GothamMedium
TextLabel6.TextXAlignment = Enum.TextXAlignment.Left
TextLabel6.Parent = Frame12

local TextButton4 = Instance.new("TextButton")

TextButton4.Name = "AutoRefreshSwitch"
TextButton4.ZIndex = 6
TextButton4.AnchorPoint = Vector2.new(1, 0.5)
TextButton4.Position = UDim2.new(1, -16, 0.5, 0)
TextButton4.Size = UDim2.new(0, 44, 0, 24)
TextButton4.BackgroundColor3 = color3
TextButton4.Text = ""
TextButton4.AutoButtonColor = false
TextButton4.Parent = Frame12

local UICorner9 = Instance.new("UICorner")

UICorner9.CornerRadius = UDim.new(1, 0)
UICorner9.Parent = TextButton4

local Frame13 = Instance.new("Frame")

Frame13.Name = "Dot"
Frame13.ZIndex = 7
Frame13.Size = UDim2.new(0, 20, 0, 20)
Frame13.Position = UDim2.new(1, -22, 0.5, -10)
Frame13.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
Frame13.BorderSizePixel = 0
Frame13.Parent = TextButton4

local UICorner10 = Instance.new("UICorner")

UICorner10.CornerRadius = UDim.new(1, 0)
UICorner10.Parent = Frame13

local Frame14 = Instance.new("Frame")

Frame14.Name = "Frame"
Frame14.ZIndex = 4
Frame14.Size = UDim2.new(1, 0, 0, 60)
Frame14.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
Frame14.BackgroundTransparency = 0.3
Frame14.Parent = ScrollingFrame2

local UICorner11 = Instance.new("UICorner")

UICorner11.CornerRadius = UDim.new(0, 10)
UICorner11.Parent = Frame14

local UIStroke5 = Instance.new("UIStroke")

UIStroke5.Color = Color3.fromRGB(40, 45, 60)
UIStroke5.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke5.Transparency = 0.3
UIStroke5.Parent = Frame14

local TextLabel7 = Instance.new("TextLabel")

TextLabel7.Name = "TextLabel"
TextLabel7.ZIndex = 5
TextLabel7.Position = UDim2.new(0, 16, 0, 12)
TextLabel7.Size = UDim2.new(1, -100, 0, 18)
TextLabel7.BackgroundTransparency = 1
TextLabel7.Text = "Auto Join"
TextLabel7.TextColor3 = Color3.fromRGB(245, 245, 250)
TextLabel7.TextSize = 14
TextLabel7.Font = Enum.Font.GothamBold
TextLabel7.TextXAlignment = Enum.TextXAlignment.Left
TextLabel7.Parent = Frame14

local TextLabel8 = Instance.new("TextLabel")

TextLabel8.Name = "TextLabel"
TextLabel8.ZIndex = 5
TextLabel8.Position = UDim2.new(0, 16, 0, 32)
TextLabel8.Size = UDim2.new(1, -100, 0, 14)
TextLabel8.BackgroundTransparency = 1
TextLabel8.Text = "Instant join all new servers appear"
TextLabel8.TextColor3 = Color3.fromRGB(110, 120, 140)
TextLabel8.TextSize = 12
TextLabel8.Font = Enum.Font.GothamMedium
TextLabel8.TextXAlignment = Enum.TextXAlignment.Left
TextLabel8.Parent = Frame14

local TextButton5 = Instance.new("TextButton")

TextButton5.Name = "AutoJoinSwitch"
TextButton5.ZIndex = 6
TextButton5.AnchorPoint = Vector2.new(1, 0.5)
TextButton5.Position = UDim2.new(1, -16, 0.5, 0)
TextButton5.Size = UDim2.new(0, 44, 0, 24)
TextButton5.BackgroundColor3 = Color3.fromRGB(35, 40, 50)
TextButton5.Text = ""
TextButton5.AutoButtonColor = false
TextButton5.Parent = Frame14

local UICorner12 = Instance.new("UICorner")

UICorner12.CornerRadius = UDim.new(1, 0)
UICorner12.Parent = TextButton5

local Frame15 = Instance.new("Frame")

Frame15.Name = "Dot"
Frame15.ZIndex = 7
Frame15.Size = UDim2.new(0, 20, 0, 20)
Frame15.Position = UDim2.new(0, 2, 0.5, -10)
Frame15.BackgroundColor3 = Color3.fromRGB(220, 225, 235)
Frame15.BorderSizePixel = 0
Frame15.Parent = TextButton5

local UICorner13 = Instance.new("UICorner")

UICorner13.CornerRadius = UDim.new(1, 0)
UICorner13.Parent = Frame15

local Frame16 = Instance.new("Frame")

Frame16.Name = "Frame"
Frame16.ZIndex = 4
Frame16.Size = UDim2.new(1, 0, 0, 60)
Frame16.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
Frame16.BackgroundTransparency = 0.3
Frame16.Parent = ScrollingFrame2

local UICorner14 = Instance.new("UICorner")

UICorner14.CornerRadius = UDim.new(0, 10)
UICorner14.Parent = Frame16

local UIStroke6 = Instance.new("UIStroke")

UIStroke6.Name = "UIStroke"
UIStroke6.Color = Color3.fromRGB(40, 45, 60)
UIStroke6.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke6.Transparency = 0.3
UIStroke6.Parent = Frame16

local TextLabel9 = Instance.new("TextLabel")

TextLabel9.Name = "TextLabel"
TextLabel9.ZIndex = 5
TextLabel9.Position = UDim2.new(0, 16, 0, 12)
TextLabel9.Size = UDim2.new(1, -100, 0, 18)
TextLabel9.BackgroundTransparency = 1
TextLabel9.Text = "Spam Time"
TextLabel9.TextColor3 = Color3.fromRGB(245, 245, 250)
TextLabel9.TextSize = 14
TextLabel9.Font = Enum.Font.GothamBold
TextLabel9.TextXAlignment = Enum.TextXAlignment.Left
TextLabel9.LineHeight = 1.1
TextLabel9.Parent = Frame16

local TextLabel10 = Instance.new("TextLabel")

TextLabel10.Name = "TextLabel"
TextLabel10.ZIndex = 5
TextLabel10.Position = UDim2.new(0, 16, 0, 32)
TextLabel10.Size = UDim2.new(1, -100, 0, 14)
TextLabel10.BackgroundTransparency = 1
TextLabel10.Text = "Duration for spam join"
TextLabel10.TextColor3 = Color3.fromRGB(110, 120, 140)
TextLabel10.TextSize = 12
TextLabel10.Font = Enum.Font.GothamMedium
TextLabel10.TextXAlignment = Enum.TextXAlignment.Left
TextLabel10.LineHeight = 1.1
TextLabel10.Parent = Frame16

local TextBox = Instance.new("TextBox")

TextBox.Name = "TextBox"
TextBox.ZIndex = 5
TextBox.AnchorPoint = Vector2.new(1, 0.5)
TextBox.Position = UDim2.new(1, -16, 0.5, 0)
TextBox.Size = UDim2.new(0, 60, 0, 30)
TextBox.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
TextBox.Text = "0.1"
TextBox.TextColor3 = Color3.fromRGB(245, 245, 250)
TextBox.TextSize = 13
TextBox.Font = Enum.Font.GothamBold
TextBox.PlaceholderText = "Seconds"
TextBox.ClearTextOnFocus = false
TextBox.Parent = Frame16

local UICorner15 = Instance.new("UICorner")

UICorner15.Name = "UICorner"
UICorner15.CornerRadius = UDim.new(0, 10)
UICorner15.Parent = TextBox

local Frame17 = Instance.new("Frame")

Frame17.Name = "Frame"
Frame17.ZIndex = 4
Frame17.Size = UDim2.new(1, 0, 0, 60)
Frame17.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
Frame17.BackgroundTransparency = 0.3
Frame17.Parent = ScrollingFrame2

local UICorner16 = Instance.new("UICorner")

UICorner16.CornerRadius = UDim.new(0, 10)
UICorner16.Parent = Frame17

local UIStroke7 = Instance.new("UIStroke")

UIStroke7.Name = "UIStroke"
UIStroke7.Color = Color3.fromRGB(40, 45, 60)
UIStroke7.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
UIStroke7.Transparency = 0.3
UIStroke7.Parent = Frame17

local TextLabel11 = Instance.new("TextLabel")

TextLabel11.Name = "TextLabel"
TextLabel11.ZIndex = 5
TextLabel11.Position = UDim2.new(0, 16, 0, 12)
TextLabel11.Size = UDim2.new(1, -100, 0, 18)
TextLabel11.BackgroundTransparency = 1
TextLabel11.Text = "Brainrot Value"
TextLabel11.TextColor3 = Color3.fromRGB(245, 245, 250)
TextLabel11.TextSize = 14
TextLabel11.Font = Enum.Font.GothamBold
TextLabel11.TextXAlignment = Enum.TextXAlignment.Left
TextLabel11.LineHeight = 1.1
TextLabel11.Parent = Frame17

local TextLabel12 = Instance.new("TextLabel")

TextLabel12.Name = "TextLabel"
TextLabel12.ZIndex = 5
TextLabel12.Position = UDim2.new(0, 16, 0, 32)
TextLabel12.Size = UDim2.new(1, -100, 0, 14)
TextLabel12.BackgroundTransparency = 1
TextLabel12.Text = "Minimum value to display"
TextLabel12.TextColor3 = Color3.fromRGB(110, 120, 140)
TextLabel12.TextSize = 12
TextLabel12.Font = Enum.Font.GothamMedium
TextLabel12.TextXAlignment = Enum.TextXAlignment.Left
TextLabel12.LineHeight = 1.1
TextLabel12.Parent = Frame17

local TextBox2 = Instance.new("TextBox")

TextBox2.Name = "TextBox"
TextBox2.ZIndex = 5
TextBox2.AnchorPoint = Vector2.new(1, 0.5)
TextBox2.Position = UDim2.new(1, -16, 0.5, 0)
TextBox2.Size = UDim2.new(0, 80, 0, 30)
TextBox2.BackgroundColor3 = Color3.fromRGB(30, 35, 50)
TextBox2.Text = "40M"
TextBox2.TextColor3 = Color3.fromRGB(245, 245, 250)
TextBox2.TextSize = 13
TextBox2.Font = Enum.Font.GothamBold
TextBox2.PlaceholderText = "e.g,100M"
TextBox2.ClearTextOnFocus = false
TextBox2.Parent = Frame17

local UICorner17 = Instance.new("UICorner")

UICorner17.Name = "UICorner"
UICorner17.CornerRadius = UDim.new(0, 10)
UICorner17.Parent = TextBox2

local function updateAutoJoinSwitch()
	if autoJoinEnabled then
		TextButton5.BackgroundColor3 = color3
		Frame15.Position = UDim2.new(1, -22, 0.5, -10)
	else
		TextButton5.BackgroundColor3 = Color3.fromRGB(35, 40, 50)
		Frame15.Position = UDim2.new(0, 2, 0.5, -10)
	end
end

TextButton5.MouseButton1Click:Connect(function()
	autoJoinEnabled = not autoJoinEnabled

	if autoJoinEnabled then
		autoJoinBaselineCaptured = false
		initiallyListedServerIds = {}
		automaticallyJoinedServerIds = {}
	else
		initiallyListedServerIds = {}
		autoJoinBaselineCaptured = false
		automaticallyJoinedServerIds = {}
	end

	updateAutoJoinSwitch()
end)

local function updateAutoRefreshSwitch()
	if autoRefreshEnabled then
		TextButton4.BackgroundColor3 = color3
		Frame13.Position = UDim2.new(1, -22, 0.5, -10)
	else
		TextButton4.BackgroundColor3 = Color3.fromRGB(35, 40, 50)
		Frame13.Position = UDim2.new(0, 2, 0.5, -10)
	end
end

TextButton4.MouseButton1Click:Connect(function()
	autoRefreshEnabled = not autoRefreshEnabled
	updateAutoRefreshSwitch()
end)
updateAutoRefreshSwitch()

local isDraggingMainWindow = false
local mainWindowDragStart
local mainWindowStartPosition

Frame2.InputBegan:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 or input.UserInputType == Enum.UserInputType.Touch then
		isDraggingMainWindow = true
		mainWindowDragStart = input.Position
		mainWindowStartPosition = Frame2.Position
		Frame2.AnchorPoint = Vector2.new(0, 0)
	end
end)
Frame2.InputChanged:Connect(function(input)
	if isDraggingMainWindow then
		if input.UserInputType == Enum.UserInputType.MouseMovement or input.UserInputType == Enum.UserInputType.Touch then
			local dragDelta = input.Position - mainWindowDragStart

			Frame2.Position = UDim2.new(mainWindowStartPosition.X.Scale, mainWindowStartPosition.X.Offset + dragDelta.X, mainWindowStartPosition.Y.Scale, mainWindowStartPosition.Y.Offset + dragDelta.Y)
		end
	end
end)
Frame2.InputEnded:Connect(function(input)
	if input.UserInputType == Enum.UserInputType.MouseButton1 then
		isDraggingMainWindow = false
	elseif input.UserInputType == Enum.UserInputType.Touch then
		isDraggingMainWindow = false

		return
	end
end)

local function switchPage(pageName)
	CanvasGroup.Visible = false
	CanvasGroup2.Visible = false
	TextButton2.TextColor3 = Color3.fromRGB(150, 160, 180)
	TextButton3.TextColor3 = Color3.fromRGB(150, 160, 180)

	if pageName == "Logs" then
		CanvasGroup.Visible = true
		TextButton2.TextColor3 = Color3.fromRGB(245, 245, 250)
		Frame8.Position = UDim2.new(0, 8, 0, 70)
	elseif pageName == "Settings" then
		CanvasGroup2.Visible = true
		TextButton3.TextColor3 = Color3.fromRGB(245, 245, 250)
		Frame8.Position = UDim2.new(0, 8, 0, 110)
	end

	currentPage = pageName
end
local function setAccentColor(newAccentColor)
	color3 = newAccentColor
	UIStroke.Color = newAccentColor
	Frame5.BackgroundColor3 = newAccentColor
	UIStroke2.Color = newAccentColor
	Frame8.BackgroundColor3 = newAccentColor
	ScrollingFrame.ScrollBarImageColor3 = newAccentColor

	if autoJoinEnabled then
		TextButton5.BackgroundColor3 = newAccentColor
	end

	if autoRefreshEnabled then
		TextButton4.BackgroundColor3 = newAccentColor
	end
end

local spamEnabledByServer = {}

local function createFrame(petName, priceText, parent)
	local Frame18 = Instance.new("Frame", parent)

	Frame18.Size = UDim2.new(0, 55, 0, 75)
	Frame18.BackgroundTransparency = 1

	local ViewportFrame = Instance.new("ViewportFrame")

	ViewportFrame.Size = UDim2.new(0, 55, 0, 55)
	ViewportFrame.Position = UDim2.new(0, 0, 0, 0)
	ViewportFrame.BackgroundColor3 = Color3.fromRGB(15, 17, 24)
	ViewportFrame.BorderSizePixel = 0
	ViewportFrame.Parent = Frame18

	local UICorner18 = Instance.new("UICorner")

	UICorner18.CornerRadius = UDim.new(0, 8)
	UICorner18.Parent = ViewportFrame

	local UIStroke8 = Instance.new("UIStroke")

	UIStroke8.Color = Color3.fromRGB(40, 45, 60)
	UIStroke8.Transparency = 0.3
	UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke8.Parent = ViewportFrame
	pcall(function()
		local Animals = require(game:GetService("ReplicatedStorage"):WaitForChild("Shared"):WaitForChild("Animals"))

		if Animals and Animals.AttachOnViewportWithOptimizations then
			Animals:AttachOnViewportWithOptimizations(petName, ViewportFrame, nil, nil)
		end
	end)

	if priceText and priceText ~= "" then
		local TextLabel13 = Instance.new("TextLabel")

		TextLabel13.Size = UDim2.new(1, 0, 0, 18)
		TextLabel13.Position = UDim2.new(0, 0, 1, -25)
		TextLabel13.BackgroundTransparency = 1
		TextLabel13.Text = priceText
		TextLabel13.TextColor3 = Color3.fromRGB(255, 200, 100)
		TextLabel13.TextSize = 10
		TextLabel13.Font = Enum.Font.GothamBold
		TextLabel13.TextXAlignment = Enum.TextXAlignment.Center
		TextLabel13.TextYAlignment = Enum.TextYAlignment.Top
		TextLabel13.Parent = Frame18
	end

	return Frame18
end
local function createServerEntry(serverRecord)
	local Frame18 = Instance.new("Frame")

	Frame18.Size = UDim2.new(1, 0, 0, 105)
	Frame18.BackgroundColor3 = Color3.fromRGB(20, 22, 30)
	Frame18.BackgroundTransparency = 0.3
	Frame18.Parent = ScrollingFrame
	Frame18.Name = "PetEntry"

	local UICorner18 = Instance.new("UICorner")

	UICorner18.CornerRadius = UDim.new(0, 8)
	UICorner18.Parent = Frame18

	local UIStroke8 = Instance.new("UIStroke")

	UIStroke8.Color = Color3.fromRGB(40, 45, 60)
	UIStroke8.Transparency = 0.3
	UIStroke8.ApplyStrokeMode = Enum.ApplyStrokeMode.Border
	UIStroke8.Parent = Frame18

	local pets = {}
	local prices = {}
	local iteratorFunction, iteratorState, iteratorControl = string.gmatch(serverRecord.name, "[^,]+")
	local nextListingPart = geniter(iteratorFunction, iteratorState, iteratorControl)
	local exitTo4
	local rawListingPart, priceText, petName

	for k in iteratorFunction, iteratorState, iteratorControl do
		local exitTo

		while true do
			rawListingPart = k:gsub("^%s*(.-)%s*$", "%1")

			if rawListingPart ~= "" then
				exitTo = 1

				break
			end

			local iteratorValues = table.pack(nextListingPart())

			if not iteratorValues[1] then
				break
			end

			k = iteratorValues[2]
		end

		if exitTo ~= 1 then
			exitTo4 = 1

			break
		end

		local match = rawListingPart:match("%$%s*([^,]+)")
		local exitTo6, petNameWithoutPrice, exitTo5, trimmedPrice

		if match then
			local exitTo2

			repeat
				trimmedPrice = match:gsub("^%s+", ""):gsub("%s+$", "")
				priceText = trimmedPrice and "$" .. trimmedPrice

				if not priceText then
					exitTo2 = 1

					break
				end

				petName = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

				if petName ~= "" then
					exitTo2 = 2

					break
				end

				local exitTo3

				repeat
					local iteratorValues = table.pack(nextListingPart())

					if not iteratorValues[1] then
						exitTo3 = 1

						break
					end

					rawListingPart = (iteratorValues[2]):gsub("^%s*(.-)%s*$", "%1")
				until rawListingPart ~= ""

				if exitTo3 == 1 then
					exitTo2 = 3

					break
				end

				match = rawListingPart:match("%$%s*([^,]+)")
			until not match

			if exitTo2 == 1 then
				exitTo6 = nil

				while true do
					petNameWithoutPrice = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

					if petNameWithoutPrice ~= "" then
						table.insert(pets, petNameWithoutPrice)
						table.insert(prices, "")
					end

					exitTo5 = nil

					while true do
						local iteratorValues = table.pack(nextListingPart())

						if not iteratorValues[1] then
							exitTo5 = 1

							break
						end

						rawListingPart = (iteratorValues[2]):gsub("^%s*(.-)%s*$", "%1")

						if rawListingPart == "" then
							continue
						end

						match = rawListingPart:match("%$%s*([^,]+)")

						if not match then
							exitTo5 = 2

							break
						end

						trimmedPrice = match:gsub("^%s+", ""):gsub("%s+$", "")
						priceText = trimmedPrice and "$" .. trimmedPrice

						if priceText then
							petName = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

							if petName ~= "" then
								exitTo5 = 3

								break
							end

							continue
						end

						break
					end

					if exitTo5 == 1 then
						exitTo6 = 1

						break
					elseif exitTo5 == 2 then
						continue
					elseif exitTo5 ~= 3 then
						continue
					end

					break
				end

				if exitTo6 == 1 then
					exitTo4 = 2

					break
				end

				table.insert(pets, petName)
				table.insert(prices, priceText)
			elseif exitTo2 == 2 then
				table.insert(pets, petName)
				table.insert(prices, priceText)
			else
				if exitTo2 == 3 then
					exitTo4 = 2

					break
				end

				exitTo6 = nil

				while true do
					petNameWithoutPrice = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

					if petNameWithoutPrice ~= "" then
						table.insert(pets, petNameWithoutPrice)
						table.insert(prices, "")
					end

					exitTo5 = nil

					while true do
						local iteratorValues = table.pack(nextListingPart())

						if not iteratorValues[1] then
							exitTo5 = 1

							break
						end

						rawListingPart = (iteratorValues[2]):gsub("^%s*(.-)%s*$", "%1")

						if rawListingPart == "" then
							continue
						end

						match = rawListingPart:match("%$%s*([^,]+)")

						if not match then
							exitTo5 = 2

							break
						end

						trimmedPrice = match:gsub("^%s+", ""):gsub("%s+$", "")
						priceText = trimmedPrice and "$" .. trimmedPrice

						if priceText then
							petName = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

							if petName ~= "" then
								exitTo5 = 3

								break
							end

							continue
						end

						break
					end

					if exitTo5 == 1 then
						exitTo6 = 1

						break
					elseif exitTo5 == 2 then
						continue
					elseif exitTo5 ~= 3 then
						continue
					end

					break
				end

				if exitTo6 == 1 then
					exitTo4 = 2

					break
				end

				table.insert(pets, petName)
				table.insert(prices, priceText)
			end
		else
			exitTo6 = nil

			while true do
				petNameWithoutPrice = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

				if petNameWithoutPrice ~= "" then
					table.insert(pets, petNameWithoutPrice)
					table.insert(prices, "")
				end

				exitTo5 = nil

				while true do
					local iteratorValues = table.pack(nextListingPart())

					if not iteratorValues[1] then
						exitTo5 = 1

						break
					end

					rawListingPart = (iteratorValues[2]):gsub("^%s*(.-)%s*$", "%1")

					if rawListingPart == "" then
						continue
					end

					match = rawListingPart:match("%$%s*([^,]+)")

					if not match then
						exitTo5 = 2

						break
					end

					trimmedPrice = match:gsub("^%s+", ""):gsub("%s+$", "")
					priceText = trimmedPrice and "$" .. trimmedPrice

					if priceText then
						petName = rawListingPart:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

						if petName ~= "" then
							exitTo5 = 3

							break
						end

						continue
					end

					break
				end

				if exitTo5 == 1 then
					exitTo6 = 1

					break
				elseif exitTo5 == 2 then
					continue
				elseif exitTo5 ~= 3 then
					continue
				end

				break
			end

			if exitTo6 == 1 then
				exitTo4 = 2

				break
			end

			table.insert(pets, petName)
			table.insert(prices, priceText)
		end
	end

	local match, fallbackPetName, Frame19, uDim2New, Frame20, UIListLayout4, matchedPriceText, formattedPriceText, parsedPetName

	if exitTo4 == 1 then
		if #pets == 0 then
			match = serverRecord.name:match("%$%s*([^,]+)")

			if match then
				matchedPriceText = match:gsub("^%s+", ""):gsub("%s+$", "")
				formattedPriceText = matchedPriceText and "$" .. matchedPriceText

				if formattedPriceText then
					parsedPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

					if parsedPetName == "" then
						serverRecord.pets = pets
						serverRecord.prices = prices
						Frame19 = Instance.new("Frame", Frame18)
						uDim2New = UDim2.new
						Frame19.Size = uDim2New(1, -10, 0.5, 0)
						Frame19.Position = UDim2.new(0, 5, 0, 5)
						Frame19.BackgroundTransparency = 1
						Frame20 = Instance.new("Frame", Frame19)
						Frame20.Size = UDim2.new(1, 0, 1, 0)
						Frame20.Position = UDim2.new(0, 0, 0, 0)
						Frame20.BackgroundTransparency = 1
						UIListLayout4 = Instance.new("UIListLayout", Frame20)
					else
						table.insert(pets, parsedPetName)
						table.insert(prices, formattedPriceText)
						serverRecord.pets = pets
						serverRecord.prices = prices
						Frame19 = Instance.new("Frame", Frame18)
						uDim2New = UDim2.new
						Frame19.Size = uDim2New(1, -10, 0.5, 0)
						Frame19.Position = UDim2.new(0, 5, 0, 5)
						Frame19.BackgroundTransparency = 1
						Frame20 = Instance.new("Frame", Frame19)
						Frame20.Size = UDim2.new(1, 0, 1, 0)
						Frame20.Position = UDim2.new(0, 0, 0, 0)
						Frame20.BackgroundTransparency = 1
						UIListLayout4 = Instance.new("UIListLayout", Frame20)
					end
				else
					fallbackPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

					if fallbackPetName == "" then
						serverRecord.pets = pets
						serverRecord.prices = prices
						Frame19 = Instance.new("Frame", Frame18)
						uDim2New = UDim2.new
						Frame19.Size = uDim2New(1, -10, 0.5, 0)
						Frame19.Position = UDim2.new(0, 5, 0, 5)
						Frame19.BackgroundTransparency = 1
						Frame20 = Instance.new("Frame", Frame19)
						Frame20.Size = UDim2.new(1, 0, 1, 0)
						Frame20.Position = UDim2.new(0, 0, 0, 0)
						Frame20.BackgroundTransparency = 1
						UIListLayout4 = Instance.new("UIListLayout", Frame20)
					else
						table.insert(pets, fallbackPetName)
						table.insert(prices, "")
						serverRecord.pets = pets
						serverRecord.prices = prices
						Frame19 = Instance.new("Frame", Frame18)
						uDim2New = UDim2.new
						Frame19.Size = uDim2New(1, -10, 0.5, 0)
						Frame19.Position = UDim2.new(0, 5, 0, 5)
						Frame19.BackgroundTransparency = 1
						Frame20 = Instance.new("Frame", Frame19)
						Frame20.Size = UDim2.new(1, 0, 1, 0)
						Frame20.Position = UDim2.new(0, 0, 0, 0)
						Frame20.BackgroundTransparency = 1
						UIListLayout4 = Instance.new("UIListLayout", Frame20)
					end
				end
			else
				fallbackPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

				if fallbackPetName == "" then
					serverRecord.pets = pets
					serverRecord.prices = prices
					Frame19 = Instance.new("Frame", Frame18)
					uDim2New = UDim2.new
					Frame19.Size = uDim2New(1, -10, 0.5, 0)
					Frame19.Position = UDim2.new(0, 5, 0, 5)
					Frame19.BackgroundTransparency = 1
					Frame20 = Instance.new("Frame", Frame19)
					Frame20.Size = UDim2.new(1, 0, 1, 0)
					Frame20.Position = UDim2.new(0, 0, 0, 0)
					Frame20.BackgroundTransparency = 1
					UIListLayout4 = Instance.new("UIListLayout", Frame20)
				else
					table.insert(pets, fallbackPetName)
					table.insert(prices, "")
					serverRecord.pets = pets
					serverRecord.prices = prices
					Frame19 = Instance.new("Frame", Frame18)
					uDim2New = UDim2.new
					Frame19.Size = uDim2New(1, -10, 0.5, 0)
					Frame19.Position = UDim2.new(0, 5, 0, 5)
					Frame19.BackgroundTransparency = 1
					Frame20 = Instance.new("Frame", Frame19)
					Frame20.Size = UDim2.new(1, 0, 1, 0)
					Frame20.Position = UDim2.new(0, 0, 0, 0)
					Frame20.BackgroundTransparency = 1
					UIListLayout4 = Instance.new("UIListLayout", Frame20)
				end
			end
		else
			serverRecord.pets = pets
			serverRecord.prices = prices
			Frame19 = Instance.new("Frame", Frame18)
			uDim2New = UDim2.new
			Frame19.Size = uDim2New(1, -10, 0.5, 0)
			Frame19.Position = UDim2.new(0, 5, 0, 5)
			Frame19.BackgroundTransparency = 1
			Frame20 = Instance.new("Frame", Frame19)
			Frame20.Size = UDim2.new(1, 0, 1, 0)
			Frame20.Position = UDim2.new(0, 0, 0, 0)
			Frame20.BackgroundTransparency = 1
			UIListLayout4 = Instance.new("UIListLayout", Frame20)
		end
	elseif exitTo4 == 2 then
		if #pets == 0 then
			local match2 = serverRecord.name:match("%$%s*([^,]+)")
			local fallbackPetName

			if match2 then
				local matchedPriceText = match2:gsub("^%s+", ""):gsub("%s+$", "")
				local formattedPriceText = matchedPriceText and "$" .. matchedPriceText

				if formattedPriceText then
					local parsedPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

					if parsedPetName ~= "" then
						table.insert(pets, parsedPetName)
						table.insert(prices, formattedPriceText)
					end
				else
					fallbackPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

					if fallbackPetName ~= "" then
						table.insert(pets, fallbackPetName)
						table.insert(prices, "")
					end
				end
			else
				fallbackPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

				if fallbackPetName ~= "" then
					table.insert(pets, fallbackPetName)
					table.insert(prices, "")
				end
			end
		end

		serverRecord.pets = pets
		serverRecord.prices = prices

		local Frame21 = Instance.new("Frame", Frame18)

		Frame21.Size = UDim2.new(1, -10, 0.5, 0)
		Frame21.Position = UDim2.new(0, 5, 0, 5)
		Frame21.BackgroundTransparency = 1
		Frame20 = Instance.new("Frame", Frame21)
		Frame20.Size = UDim2.new(1, 0, 1, 0)
		Frame20.Position = UDim2.new(0, 0, 0, 0)
		Frame20.BackgroundTransparency = 1
		UIListLayout4 = Instance.new("UIListLayout", Frame20)
	elseif #pets == 0 then
		match = serverRecord.name:match("%$%s*([^,]+)")

		if match then
			matchedPriceText = match:gsub("^%s+", ""):gsub("%s+$", "")
			formattedPriceText = matchedPriceText and "$" .. matchedPriceText

			if formattedPriceText then
				parsedPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

				if parsedPetName == "" then
					serverRecord.pets = pets
					serverRecord.prices = prices
					Frame19 = Instance.new("Frame", Frame18)
					uDim2New = UDim2.new
					Frame19.Size = uDim2New(1, -10, 0.5, 0)
					Frame19.Position = UDim2.new(0, 5, 0, 5)
					Frame19.BackgroundTransparency = 1
					Frame20 = Instance.new("Frame", Frame19)
					Frame20.Size = UDim2.new(1, 0, 1, 0)
					Frame20.Position = UDim2.new(0, 0, 0, 0)
					Frame20.BackgroundTransparency = 1
					UIListLayout4 = Instance.new("UIListLayout", Frame20)
				else
					table.insert(pets, parsedPetName)
					table.insert(prices, formattedPriceText)
					serverRecord.pets = pets
					serverRecord.prices = prices
					Frame19 = Instance.new("Frame", Frame18)
					uDim2New = UDim2.new
					Frame19.Size = uDim2New(1, -10, 0.5, 0)
					Frame19.Position = UDim2.new(0, 5, 0, 5)
					Frame19.BackgroundTransparency = 1
					Frame20 = Instance.new("Frame", Frame19)
					Frame20.Size = UDim2.new(1, 0, 1, 0)
					Frame20.Position = UDim2.new(0, 0, 0, 0)
					Frame20.BackgroundTransparency = 1
					UIListLayout4 = Instance.new("UIListLayout", Frame20)
				end
			else
				fallbackPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

				if fallbackPetName == "" then
					serverRecord.pets = pets
					serverRecord.prices = prices
					Frame19 = Instance.new("Frame", Frame18)
					uDim2New = UDim2.new
					Frame19.Size = uDim2New(1, -10, 0.5, 0)
					Frame19.Position = UDim2.new(0, 5, 0, 5)
					Frame19.BackgroundTransparency = 1
					Frame20 = Instance.new("Frame", Frame19)
					Frame20.Size = UDim2.new(1, 0, 1, 0)
					Frame20.Position = UDim2.new(0, 0, 0, 0)
					Frame20.BackgroundTransparency = 1
					UIListLayout4 = Instance.new("UIListLayout", Frame20)
				else
					table.insert(pets, fallbackPetName)
					table.insert(prices, "")
					serverRecord.pets = pets
					serverRecord.prices = prices
					Frame19 = Instance.new("Frame", Frame18)
					uDim2New = UDim2.new
					Frame19.Size = uDim2New(1, -10, 0.5, 0)
					Frame19.Position = UDim2.new(0, 5, 0, 5)
					Frame19.BackgroundTransparency = 1
					Frame20 = Instance.new("Frame", Frame19)
					Frame20.Size = UDim2.new(1, 0, 1, 0)
					Frame20.Position = UDim2.new(0, 0, 0, 0)
					Frame20.BackgroundTransparency = 1
					UIListLayout4 = Instance.new("UIListLayout", Frame20)
				end
			end
		else
			fallbackPetName = serverRecord.name:gsub("%$.*", ""):gsub("^%s+", ""):gsub("%s+$", "")

			if fallbackPetName == "" then
				serverRecord.pets = pets
				serverRecord.prices = prices
				Frame19 = Instance.new("Frame", Frame18)
				uDim2New = UDim2.new
				Frame19.Size = uDim2New(1, -10, 0.5, 0)
				Frame19.Position = UDim2.new(0, 5, 0, 5)
				Frame19.BackgroundTransparency = 1
				Frame20 = Instance.new("Frame", Frame19)
				Frame20.Size = UDim2.new(1, 0, 1, 0)
				Frame20.Position = UDim2.new(0, 0, 0, 0)
				Frame20.BackgroundTransparency = 1
				UIListLayout4 = Instance.new("UIListLayout", Frame20)
			else
				table.insert(pets, fallbackPetName)
				table.insert(prices, "")
				serverRecord.pets = pets
				serverRecord.prices = prices
				Frame19 = Instance.new("Frame", Frame18)
				uDim2New = UDim2.new
				Frame19.Size = uDim2New(1, -10, 0.5, 0)
				Frame19.Position = UDim2.new(0, 5, 0, 5)
				Frame19.BackgroundTransparency = 1
				Frame20 = Instance.new("Frame", Frame19)
				Frame20.Size = UDim2.new(1, 0, 1, 0)
				Frame20.Position = UDim2.new(0, 0, 0, 0)
				Frame20.BackgroundTransparency = 1
				UIListLayout4 = Instance.new("UIListLayout", Frame20)
			end
		end
	else
		serverRecord.pets = pets
		serverRecord.prices = prices
		Frame19 = Instance.new("Frame", Frame18)
		Frame19.Size = UDim2.new(1, -10, 0.5, 0)
		Frame19.Position = UDim2.new(0, 5, 0, 5)
		Frame19.BackgroundTransparency = 1
		Frame20 = Instance.new("Frame", Frame19)
		Frame20.Size = UDim2.new(1, 0, 1, 0)
		Frame20.Position = UDim2.new(0, 0, 0, 0)
		Frame20.BackgroundTransparency = 1
		UIListLayout4 = Instance.new("UIListLayout", Frame20)
	end

	UIListLayout4.FillDirection = Enum.FillDirection.Horizontal
	UIListLayout4.HorizontalAlignment = Enum.HorizontalAlignment.Left
	UIListLayout4.VerticalAlignment = Enum.VerticalAlignment.Top
	UIListLayout4.Padding = UDim.new(0, 4)

	for i = 1, math.min(#pets, 5) do
		createFrame(pets[i], prices[i], Frame20)
	end

	local Frame21, TextButton6, uDim2New2

	if #pets > 5 then
		local remainingPets = {}

		for i = 6, #pets do
			local insert = table.insert
			local remainingPetDescriptions = remainingPets
			local extraPetName = pets[i]
			local extraPetPriceSuffix = prices[i] ~= "" and " " .. prices[i]
			local remainingPetText

			if extraPetPriceSuffix then
				remainingPetText = extraPetName .. extraPetPriceSuffix
			else
				remainingPetText = extraPetName .. ""
			end

			insert(remainingPetDescriptions, remainingPetText)
		end

		local text2 = table.concat(remainingPets, ",")
		local TextLabel13 = Instance.new("TextLabel", Frame18)

		TextLabel13.Size = UDim2.new(1, -10, 0.2, 0)
		TextLabel13.Position = UDim2.new(0, 5, 0.55, 0)
		TextLabel13.BackgroundTransparency = 1
		TextLabel13.Text = text2
		TextLabel13.TextColor3 = Color3.fromRGB(180, 190, 210)
		TextLabel13.TextSize = 11
		TextLabel13.Font = Enum.Font.GothamMedium
		TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel13.TextWrapped = true
		TextLabel13.Visible = #pets > 4
		TextLabel13.Name = "RemainingLabel"
		Frame21 = Instance.new("Frame", Frame18)
		Frame21.Size = UDim2.new(1, -10, 0.28, 0)
		Frame21.Position = UDim2.new(0, 5, 0.72, 0)
		Frame21.BackgroundTransparency = 1

		local TextLabel14 = Instance.new("TextLabel", Frame21)

		TextLabel14.Size = UDim2.new(0.25, 0, 1, 0)
		TextLabel14.BackgroundTransparency = 1

		local players = serverRecord.players

		if players then
			TextLabel14.Text = "👥 " .. players
		else
			TextLabel14.Text = "👥 N/A"
		end

		TextLabel14.TextColor3 = Color3.fromRGB(150, 200, 255)
		TextLabel14.TextSize = 11
		TextLabel14.Font = Enum.Font.GothamMedium
		TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
		TextButton6 = Instance.new("TextButton", Frame21)
		uDim2New2 = UDim2.new
	else
		local TextLabel13 = Instance.new("TextLabel", Frame18)

		TextLabel13.Size = UDim2.new(1, -10, 0.2, 0)
		TextLabel13.Position = UDim2.new(0, 5, 0.55, 0)
		TextLabel13.BackgroundTransparency = 1
		TextLabel13.Text = ""
		TextLabel13.TextColor3 = Color3.fromRGB(180, 190, 210)
		TextLabel13.TextSize = 11
		TextLabel13.Font = Enum.Font.GothamMedium
		TextLabel13.TextXAlignment = Enum.TextXAlignment.Left
		TextLabel13.TextWrapped = true
		TextLabel13.Visible = #pets > 4
		TextLabel13.Name = "RemainingLabel"
		Frame21 = Instance.new("Frame", Frame18)
		Frame21.Size = UDim2.new(1, -10, 0.28, 0)
		Frame21.Position = UDim2.new(0, 5, 0.72, 0)
		Frame21.BackgroundTransparency = 1

		local TextLabel14 = Instance.new("TextLabel", Frame21)

		TextLabel14.Size = UDim2.new(0.25, 0, 1, 0)
		TextLabel14.BackgroundTransparency = 1

		local players = serverRecord.players

		if players then
			TextLabel14.Text = "👥 " .. players
		else
			TextLabel14.Text = "👥 N/A"
		end

		TextLabel14.TextColor3 = Color3.fromRGB(150, 200, 255)
		TextLabel14.TextSize = 11
		TextLabel14.Font = Enum.Font.GothamMedium
		TextLabel14.TextXAlignment = Enum.TextXAlignment.Left
		TextButton6 = Instance.new("TextButton", Frame21)
		uDim2New2 = UDim2.new
	end

	TextButton6.Size = uDim2New2(0.3, 0, 1, 0)
	TextButton6.Position = UDim2.new(0.28, 0, 0, 0)
	TextButton6.Text = "SPAM"
	TextButton6.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
	TextButton6.TextColor3 = Color3.fromRGB(245, 245, 250)
	TextButton6.TextSize = 11
	TextButton6.Font = Enum.Font.GothamBold
	TextButton6.AutoButtonColor = false

	local UICorner19 = Instance.new("UICorner")

	UICorner19.CornerRadius = UDim.new(0, 6)
	UICorner19.Parent = TextButton6

	local TextButton7 = Instance.new("TextButton", Frame21)

	TextButton7.Size = UDim2.new(0.35, 0, 1, 0)
	TextButton7.Position = UDim2.new(0.62, 0, 0, 0)
	TextButton7.Text = "JOIN"
	TextButton7.BackgroundColor3 = Color3.fromRGB(30, 40, 80)
	TextButton7.TextColor3 = Color3.fromRGB(245, 245, 250)
	TextButton7.TextSize = 11
	TextButton7.Font = Enum.Font.GothamBold
	TextButton7.AutoButtonColor = false

	local UICorner20 = Instance.new("UICorner")

	UICorner20.CornerRadius = UDim.new(0, 6)
	UICorner20.Parent = TextButton7
	spamEnabledByServer[serverRecord] = false

	local spamCoroutine

	TextButton6.MouseButton1Click:Connect(function()
		spamEnabledByServer[serverRecord] = not spamEnabledByServer[serverRecord]

		if spamEnabledByServer[serverRecord] then
			TextButton6.BackgroundColor3 = Color3.fromRGB(0, 100, 0)
			TextButton6.Text = "STOP"

			local compactJobId = serverRecord.jobId:gsub("%s+", ""):gsub("^,*(.-),*$", "%1")
			local decodedJobId = decodeServerJobId(compactJobId)
			local placeId = tonumber(serverRecord.placeId)

			spamCoroutine = coroutine.wrap(function()
				while spamEnabledByServer[serverRecord] do
					if decodedJobId then
						if decodedJobId ~= "" then
							local exitTo

							repeat
								if placeId then
									pcall(function()
										TeleportService:TeleportToPlaceInstance(placeId, decodedJobId, LocalPlayer)
									end)
								end

								exitTo = nil

								while true do
									task.wait(serverSpamInterval)

									if not spamEnabledByServer[serverRecord] then
										break
									elseif decodedJobId and decodedJobId ~= "" then
										exitTo = 1

										break
									end
								end
							until exitTo ~= 1

							return
						end

						task.wait(serverSpamInterval)
					else
						task.wait(serverSpamInterval)
					end
				end
			end)
			spamCoroutine()
		else
			TextButton6.BackgroundColor3 = Color3.fromRGB(40, 45, 60)
			TextButton6.Text = "SPAM"
			spamCoroutine = nil
		end
	end)
	TextButton7.MouseButton1Click:Connect(function()
		local compactJobId = serverRecord.jobId:gsub("%s+", ""):gsub("^,*(.-),*$", "%1")
		local decodedJobId = decodeServerJobId(compactJobId)
		local placeId = tonumber(serverRecord.placeId)

		if decodedJobId and decodedJobId ~= "" and placeId then
			pcall(function()
				TeleportService:TeleportToPlaceInstance(placeId, decodedJobId, LocalPlayer)
			end)
		end
	end)
end
local function parseCompactValue(valueText)
	local numericValue = tonumber(valueText:match("^(%d+)"))
	local match = valueText:match("[MmKkBb]+$")

	if not numericValue then
		return 0
	end

	if match and match:upper() == "M" then
		return numericValue * 1000000
	end

	if match and match:upper() == "K" then
		return numericValue * 1000
	end

	if match and match:upper() == "B" then
		return numericValue * 1e9
	end

	return numericValue
end
local function parseMinimumValue(valueText)
	local numericValue = tonumber(valueText:match("^(%d+)"))
	local match = valueText:match("[MmKkBb]+$")

	if not numericValue then
		return 0
	end

	if match and match:upper() == "M" then
		return numericValue * 1000000
	end

	if match and match:upper() == "K" then
		return numericValue * 1000
	end

	if match and match:upper() == "B" then
		return numericValue * 1e9
	end

	return numericValue
end

local serverListCache = {}
local isRefreshingServerList = false

local function refreshServerList()
	if isRefreshingServerList then
		return
	end

	isRefreshingServerList = true
	requestAuthenticationTokens(function(challengeToken, verificationToken)
		if not challengeToken or not verificationToken then
			isRefreshingServerList = false

			return
		end

		verifyAndFetchServerText(challengeToken, verificationToken, function(statusCode, responseBody)
			if statusCode == 200 then
				local data = {}
				local minimumValue = parseCompactValue(text)

				for match in responseBody:gmatch("[^\r\n]+") do
					local fields = {}

					for match2 in match:gmatch("[^|]+") do
						table.insert(fields, match2)
					end

					if #fields >= 4 then
						local listingName = fields[1]:gsub("%s+", " ")
						local encodedJobId = fields[2]:gsub("%s+", "")
						local playerCount = fields[3]:gsub("%s+", "")
						local placeId = fields[4]:gsub("%s+", "")
						local match2 = listingName:match("%$%s*(%d+[MmKkBb]?)")

						if minimumValue <= parseMinimumValue(match2) then
							table.insert(data, {
								name = listingName,
								jobId = encodedJobId,
								players = playerCount,
								placeId = placeId
							})
						end
					end
				end

				if autoJoinEnabled and #data > 0 then
					if not autoJoinBaselineCaptured then
						for _, v in ipairs(data) do
							local compactJobId = v.jobId:gsub("%s+", ""):gsub("^,*(.-),*$", "%1")
							local decodedJobId = decodeServerJobId(compactJobId)

							if decodedJobId and decodedJobId ~= "" then
								table.insert(initiallyListedServerIds, decodedJobId)
							end
						end

						autoJoinBaselineCaptured = true
					end

					for _, v in ipairs(data) do
						local compactJobId = v.jobId:gsub("%s+", ""):gsub("^,*(.-),*$", "%1")
						local decodedJobId = decodeServerJobId(compactJobId)
						local placeId = tonumber(v.placeId)

						if decodedJobId and decodedJobId ~= "" and placeId then
							local isInitialServer = false

							for _, trackedServerId in ipairs(initiallyListedServerIds) do
								if trackedServerId == decodedJobId then
									isInitialServer = true

									break
								end
							end

							local hasAlreadyAutoJoined = false

							for _, trackedServerId in ipairs(automaticallyJoinedServerIds) do
								if trackedServerId == decodedJobId then
									hasAlreadyAutoJoined = true

									break
								end
							end

							if not isInitialServer and not hasAlreadyAutoJoined then
								table.insert(automaticallyJoinedServerIds, decodedJobId)
								pcall(function()
									TeleportService:TeleportToPlaceInstance(placeId, decodedJobId, LocalPlayer)
								end)
								task.wait(0.5)
							end
						end
					end
				end

				local json = HttpService:JSONEncode(data)

				if json ~= serverListCache.lastUpdate then
					serverListCache.lastUpdate = json
					serverListCache.data = data

					for _, child in ipairs(ScrollingFrame:GetChildren()) do
						if child:IsA("Frame") and child.Name == "PetEntry" then
							child:Destroy()
						end
					end

					for _, v in ipairs(data) do
						createServerEntry(v)
					end

					task.wait(0.05)

					local totalContentHeight = 0

					for _, child in ipairs(ScrollingFrame:GetChildren()) do
						if child:IsA("Frame") and child.Name == "PetEntry" then
							totalContentHeight = totalContentHeight + child.Size.Y.Offset + 4
						end
					end

					if totalContentHeight > 0 then
						ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, totalContentHeight + 50)
					else
						ScrollingFrame.CanvasSize = UDim2.new(0, 0, 0, #data * 105 + 50)
					end
				end
			end

			isRefreshingServerList = false
		end)
	end)
end

TextButton2.MouseButton1Click:Connect(function()
	switchPage("Logs")
end)
TextButton3.MouseButton1Click:Connect(function()
	switchPage("Settings")
end)
TextBox.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local enteredInterval = tonumber(TextBox.Text)

		if enteredInterval and enteredInterval > 0 then
			serverSpamInterval = enteredInterval
			TextBox.Text = tostring(serverSpamInterval)
		else
			TextBox.Text = tostring(serverSpamInterval)
		end
	end
end)
TextBox2.FocusLost:Connect(function(enterPressed)
	if enterPressed then
		local enteredMinimumValue = TextBox2.Text:upper()

		if enteredMinimumValue == "" then
			TextBox2.Text = text
		else
			text = enteredMinimumValue
			TextBox2.Text = text
		end
	end
end)
refreshServerList()
task.spawn(function()
	while ScreenGui do
		if not ScreenGui.Parent then
			break
		end

		task.wait(0.1)

		if autoRefreshEnabled then
			refreshServerList()
		end
	end
end)
RunService.RenderStepped:Connect(suppressRobloxErrorPrompt)
