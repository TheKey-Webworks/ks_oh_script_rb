-- Gui to Lua
-- Version: 3.2
print("edited by KamiSlayer_Sama/1sk1_Fedeyan")
-- Instances:
local player = game.Players.LocalPlayer
local ScreenGui = Instance.new("ScreenGui")
local ScrollingFrame = Instance.new("ScrollingFrame")
local Frame = Instance.new("Frame")
local TextLabel = Instance.new("TextLabel")
local TextLabel_2 = Instance.new("TextLabel")
local TextLabel_3 = Instance.new("TextLabel")
local fase = Instance.new("TextLabel")
local contador = Instance.new("TextLabel")
local Frame_2 = Instance.new("Frame")
local TextButton = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local verJugadores = Instance.new("TextButton")
local reb = Instance.new("TextButton")
local enemigp = Instance.new("TextLabel")
local a = Instance.new("TextLabel")
local Stats = Instance.new("TextLabel")
local faseName = Instance.new("TextLabel")
local verificacion = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local usuario = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local names = Instance.new("TextLabel")

--no borrar
ScreenGui.Name = "Farm"
ScreenGui.ResetOnSpawn = false
ScreenGui.DisplayOrder = 999
ScreenGui.Parent = player.PlayerGui

--Properties:

ScreenGui.Parent = game.Players.LocalPlayer:WaitForChild("PlayerGui")
ScreenGui.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

ScrollingFrame.Parent = ScreenGui
ScrollingFrame.Active = true
ScrollingFrame.AnchorPoint = Vector2.new(1, 0.5)
ScrollingFrame.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderColor3 = Color3.fromRGB(0, 0, 0)
ScrollingFrame.BorderSizePixel = 0
ScrollingFrame.Position = UDim2.new(1, 0, 0.499023467, 0)
ScrollingFrame.Size = UDim2.new(0.292203009, 0, 0.712890625, 0)
ScrollingFrame.Visible = false

Frame.Parent = ScrollingFrame
Frame.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
Frame.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame.BorderSizePixel = 0
Frame.Size = UDim2.new(1, 0, 0.0500000007, 0)

TextLabel.Parent = Frame
TextLabel.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.BorderSizePixel = 0
TextLabel.Size = UDim2.new(0.300000012, 0, 1, 0)
TextLabel.Font = Enum.Font.SourceSans
TextLabel.Text = "IDS"
TextLabel.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel.TextScaled = true
TextLabel.TextSize = 14.000
TextLabel.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextLabel.TextStrokeTransparency = 0.000
TextLabel.TextWrapped = true

TextLabel_2.Parent = Frame
TextLabel_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.BorderColor3 = Color3.fromRGB(17, 0, 255)
TextLabel_2.Position = UDim2.new(0.300000012, 0, 0, 0)
TextLabel_2.Size = UDim2.new(0.25, 0, 1, 0)
TextLabel_2.Font = Enum.Font.SourceSans
TextLabel_2.Text = "Rebs"
TextLabel_2.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_2.TextScaled = true
TextLabel_2.TextSize = 14.000
TextLabel_2.TextStrokeColor3 = Color3.fromRGB(0, 255, 30)
TextLabel_2.TextStrokeTransparency = 0.000
TextLabel_2.TextWrapped = true

TextLabel_3.Parent = Frame
TextLabel_3.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.BorderColor3 = Color3.fromRGB(17, 0, 255)
TextLabel_3.Position = UDim2.new(0.550000012, 0, 0, 0)
TextLabel_3.Size = UDim2.new(0.200000003, 0, 1, 0)
TextLabel_3.Font = Enum.Font.SourceSans
TextLabel_3.Text = "General"
TextLabel_3.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_3.TextScaled = true
TextLabel_3.TextSize = 14.000
TextLabel_3.TextStrokeColor3 = Color3.fromRGB(255, 211, 34)
TextLabel_3.TextStrokeTransparency = 0.000
TextLabel_3.TextWrapped = true

fase.Name = "fase"
fase.Parent = Frame
fase.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
fase.BorderColor3 = Color3.fromRGB(0, 0, 0)
fase.BorderSizePixel = 0
fase.Position = UDim2.new(0.750999987, 0, 0, 0)
fase.Size = UDim2.new(0.219999999, 0, 1, 0)
fase.Font = Enum.Font.SourceSans
fase.Text = "Form"
fase.TextColor3 = Color3.fromRGB(0, 0, 0)
fase.TextScaled = true
fase.TextSize = 14.000
fase.TextStrokeColor3 = Color3.fromRGB(48, 217, 255)
fase.TextStrokeTransparency = 0.000
fase.TextWrapped = true

contador.Name = "contador"
contador.Parent = ScreenGui
contador.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
contador.BorderColor3 = Color3.fromRGB(0, 0, 0)
contador.BorderSizePixel = 0
contador.Position = UDim2.new(0.787851334, 0, 0.85546875, 0)
contador.Size = UDim2.new(0, 176, 0, 43)
contador.Visible = false
contador.Font = Enum.Font.SourceSans
contador.Text = "Players In Server"
contador.TextColor3 = Color3.fromRGB(255, 255, 255)
contador.TextScaled = true
contador.TextSize = 14.000
contador.TextStrokeTransparency = 0.000
contador.TextWrapped = true

Frame_2.Parent = ScreenGui
Frame_2.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_2.BorderSizePixel = 0
Frame_2.Position = UDim2.new(0.400027215, 0, 0.400656223, 0)
Frame_2.Size = UDim2.new(0.199456096, 0, 0.64453125, 0)
Frame_2.Visible = false

TextButton.Parent = Frame_2
TextButton.AnchorPoint = Vector2.new(0, 1)
TextButton.BackgroundColor3 = Color3.fromRGB(0, 255, 255)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 0.100000001, 0)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "Interface"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeColor3 = Color3.fromRGB(0, 255, 255)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true

UICorner.Parent = TextButton

verJugadores.Name = " View Stats"
verJugadores.Parent = Frame_2
verJugadores.AnchorPoint = Vector2.new(0.5, 0)
verJugadores.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
verJugadores.BorderColor3 = Color3.fromRGB(57, 11, 240)
verJugadores.BorderSizePixel = 2
verJugadores.Position = UDim2.new(0.5, 0, 0, 1)
verJugadores.Size = UDim2.new(0.99000001, 0, 0.119999997, 0)
verJugadores.Font = Enum.Font.SourceSans
verJugadores.Text = "Players"
verJugadores.TextColor3 = Color3.fromRGB(0, 0, 0)
verJugadores.TextScaled = true
verJugadores.TextSize = 14.000
verJugadores.TextStrokeColor3 = Color3.fromRGB(165, 10, 255)
verJugadores.TextStrokeTransparency = 0.000
verJugadores.TextWrapped = true

reb.Name = "reb"
reb.Parent = Frame_2
reb.AnchorPoint = Vector2.new(0.5, 0)
reb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reb.BorderColor3 = Color3.fromRGB(57, 11, 240)
reb.BorderSizePixel = 2
reb.Position = UDim2.new(0.5, 0, 0.100000001, 8)
reb.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)
reb.Font = Enum.Font.SourceSans
reb.Text = "Rebirth On"
reb.TextColor3 = Color3.fromRGB(0, 0, 0)
reb.TextScaled = true
reb.TextSize = 14.000
reb.TextStrokeColor3 = Color3.fromRGB(82, 2, 255)
reb.TextStrokeTransparency = 0.000
reb.TextWrapped = true

enemigp.Name = "enemigp"
enemigp.Parent = Frame_2
enemigp.AnchorPoint = Vector2.new(0.5, 0)
enemigp.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
enemigp.BorderColor3 = Color3.fromRGB(0, 0, 0)
enemigp.BorderSizePixel = 0
enemigp.Position = UDim2.new(0.5, 0, 0.25, 0)
enemigp.Size = UDim2.new(1, 0, 0.100000001, 0)
enemigp.Font = Enum.Font.SourceSans
enemigp.Text = "Farm Selected"
enemigp.TextColor3 = Color3.fromRGB(0, 0, 0)
enemigp.TextScaled = true
enemigp.TextSize = 14.000
enemigp.TextStrokeColor3 = Color3.fromRGB(0, 250, 37)
enemigp.TextStrokeTransparency = 0.000
enemigp.TextWrapped = true

a.Name = "a"
a.Parent = Frame_2
a.AnchorPoint = Vector2.new(0.5, 0)
a.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
a.BorderColor3 = Color3.fromRGB(0, 0, 0)
a.BorderSizePixel = 0
a.Position = UDim2.new(0.5, 0, 0.400000006, 0)
a.Size = UDim2.new(0.800000012, 0, 0.119999997, 0)
a.Font = Enum.Font.SourceSans
a.Text = "..."
a.TextColor3 = Color3.fromRGB(0, 0, 0)
a.TextScaled = true
a.TextSize = 14.000
a.TextStrokeColor3 = Color3.fromRGB(0, 110, 255)
a.TextStrokeTransparency = 0.000
a.TextWrapped = true

Stats.Name = "Stats"
Stats.Parent = Frame_2
Stats.AnchorPoint = Vector2.new(0.5, 0)
Stats.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
Stats.BorderColor3 = Color3.fromRGB(0, 0, 0)
Stats.BorderSizePixel = 0
Stats.Position = UDim2.new(0.5, 0, 0.5, 10)
Stats.Size = UDim2.new(1, 0, 0.100000001, 0)
Stats.Font = Enum.Font.SourceSans
Stats.Text = "Stats"
Stats.TextColor3 = Color3.fromRGB(0, 0, 0)
Stats.TextScaled = true
Stats.TextSize = 14.000
Stats.TextStrokeColor3 = Color3.fromRGB(48, 255, 224)
Stats.TextStrokeTransparency = 0.000
Stats.TextWrapped = true

faseName.Name = "faseName"
faseName.Parent = Frame_2
faseName.AnchorPoint = Vector2.new(0.5, 0)
faseName.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
faseName.BorderColor3 = Color3.fromRGB(0, 0, 0)
faseName.BorderSizePixel = 0
faseName.Position = UDim2.new(0.5, 0, 0.649999976, 0)
faseName.Size = UDim2.new(1, 0, 0.119999997, 0)
faseName.Font = Enum.Font.SourceSans
faseName.Text = "..."
faseName.TextColor3 = Color3.fromRGB(0, 0, 0)
faseName.TextScaled = true
faseName.TextSize = 14.000
faseName.TextStrokeColor3 = Color3.fromRGB(184, 110, 25)
faseName.TextStrokeTransparency = 0.000
faseName.TextWrapped = true

verificacion.Name = "verificacion"
verificacion.Parent = ScreenGui
verificacion.BackgroundColor3 = Color3.fromRGB(0, 4, 77)
verificacion.BorderColor3 = Color3.fromRGB(0, 0, 0)
verificacion.BorderSizePixel = 0
verificacion.Position = UDim2.new(0.400725305, 0, 0.19921878, 0)
verificacion.Size = UDim2.new(0.198549405, 0, 0.599609315, 0)

TextLabel_4.Parent = verificacion
TextLabel_4.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_4.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_4.BorderSizePixel = 0
TextLabel_4.Position = UDim2.new(0.5, 0, 0, 0)
TextLabel_4.Size = UDim2.new(1, 0, 0.100000001, 0)
TextLabel_4.Font = Enum.Font.Unknown
TextLabel_4.Text = "ID Detected"
TextLabel_4.TextColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_4.TextScaled = true
TextLabel_4.TextSize = 14.000
TextLabel_4.TextWrapped = true

usuario.Name = "usuario"
usuario.Parent = verificacion
usuario.AnchorPoint = Vector2.new(0.5, 0)
usuario.BackgroundColor3 = Color3.fromRGB(0, 4, 77)
usuario.BorderColor3 = Color3.fromRGB(0, 0, 0)
usuario.BorderSizePixel = 0
usuario.Position = UDim2.new(0.5, 0, 0.100000001, 0)
usuario.Size = UDim2.new(1, 0, 0.100000001, 0)
usuario.Font = Enum.Font.Unknown
usuario.Text = "wadawdaw"
usuario.TextColor3 = Color3.fromRGB(0, 4, 77)
usuario.TextScaled = true
usuario.TextSize = 14.000
usuario.TextStrokeColor3 = Color3.fromRGB(255, 219, 220)
usuario.TextStrokeTransparency = 0.000
usuario.TextWrapped = true

TextLabel_5.Parent = verificacion
TextLabel_5.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_5.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.BorderSizePixel = 0
TextLabel_5.Position = UDim2.new(0.5, 0, 0.600000024, 0)
TextLabel_5.Size = UDim2.new(1, 0, 0.119999997, 0)
TextLabel_5.Font = Enum.Font.Unknown
TextLabel_5.Text = "By:"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextStrokeColor3 = Color3.fromRGB(255, 130, 173)
TextLabel_5.TextStrokeTransparency = 0.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = verificacion
TextLabel_6.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_6.BackgroundColor3 = Color3.fromRGB(70, 130, 173)
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.5, 0, 0.75, 0)
TextLabel_6.Size = UDim2.new(1, 0, 0.150000006, 0)
TextLabel_6.Font = Enum.Font.SourceSansItalic
TextLabel_6.Text = "1SK1_NIX"
TextLabel_6.TextColor3 = Color3.fromRGB(150, 40, 60)
TextLabel_6.TextScaled = true
TextLabel_6.TextSize = 14.000
TextLabel_6.TextStrokeTransparency = 0.000
TextLabel_6.TextWrapped = true

Frame_3.Parent = verificacion
Frame_3.AnchorPoint = Vector2.new(0.5, 0)
Frame_3.BackgroundColor3 = Color3.fromRGB(156, 156, 156)
Frame_3.BackgroundTransparency = 0.500
Frame_3.BorderColor3 = Color3.fromRGB(0, 0, 0)
Frame_3.BorderSizePixel = 0
Frame_3.Position = UDim2.new(0.5, 0, 0.239999995, 0)
Frame_3.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)

TextLabel_7.Parent = Frame_3
TextLabel_7.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_7.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_7.BackgroundTransparency = 1.000
TextLabel_7.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.BorderSizePixel = 0
TextLabel_7.Position = UDim2.new(0.5, 0, 0.100000001, 0)
TextLabel_7.Size = UDim2.new(0.800000012, 0, 0.300000012, 0)
TextLabel_7.Font = Enum.Font.Unknown
TextLabel_7.Text = "IDS"
TextLabel_7.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_7.TextScaled = true
TextLabel_7.TextSize = 14.000
TextLabel_7.TextWrapped = true

names.Name = "names"
names.Parent = Frame_3
names.AnchorPoint = Vector2.new(0.5, 0)
names.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
names.BackgroundTransparency = 1.000
names.BorderColor3 = Color3.fromRGB(0, 0, 0)
names.BorderSizePixel = 0
names.Position = UDim2.new(0.5, 0, 0.449999988, 0)
names.Size = UDim2.new(0.899999976, 0, 0.400000006, 0)
names.Font = Enum.Font.SourceSans
names.Text = " ¿?"
names.TextColor3 = Color3.fromRGB(0, 0, 0)
names.TextScaled = true
names.TextSize = 1.000
names.TextWrapped = true

-- Scripts:

local function OEGUBNV_fake_script() -- TextButton.Script 
	local script = Instance.new('Script', TextButton)

	local boton = script.Parent
	local frame  = script.Parent.Parent
	local verdadero = true
	
	--{0.4, 0,0.401, 0}	 arriba
	----{0.41, 0,1, 0}	 abajo
	
	boton.MouseButton1Click:Connect(function()
		if verdadero then
			verdadero = false
			frame:TweenPosition(UDim2.new(0.41, 0,1, 0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.2,true)
		else
			verdadero = true
			frame:TweenPosition(UDim2.new(0.4, 0,0.401, 0),Enum.EasingDirection.In,Enum.EasingStyle.Linear,0.2,true)
		end
	end)
end
coroutine.wrap(OEGUBNV_fake_script)()
local function IIJT_fake_script() -- verJugadores.Script 
	local script = Instance.new('Script', verJugadores)

	local boton = script.Parent
	local verdad = true
	local frame = script.Parent.Parent.Parent.ScrollingFrame
	local y = 0.05
	local contador = 0
	local textoContador = script.Parent.Parent.Parent.contador
	frame.Visible =false
	textoContador.Visible= false
	
	local function texto(posicionX,posicionY,j,size) -- Texto
		print("Generando texto")
		local texto = Instance.new("TextLabel")
		texto.Parent = frame
		texto.Size = UDim2.new(size,0,0.05,0)
		texto.Position = UDim2.new(posicionX,0,posicionY,0)
		texto.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
		texto.TextColor3 = Color3.fromRGB(0, 0, 0)
		texto.TextStrokeColor3 = Color3.fromRGB(0, 236, 94)
		texto.TextStrokeTransparency = 0
		texto.TextScaled = true
		texto.Text = j
	end
	
	local function players()
		local Players = game:GetService("Players")
		local playerList = Players:GetChildren()
		print("Ha entrado a players")
		for _, player in pairs(playerList) do
			local statsFolder = game.Workspace.Living[player.Name].Stats
			local strength = statsFolder.Strength
			local contenedorFuerza = strength.Value
			local reb = statsFolder.Rebirth
			local contenedorReb = reb.Value
			local arregloValores = {"k","M","B","T","Q"}
			local mil = 1000
			local millon=1000000
			local billon=1000000000
			local trillon = 1000000000000
			local q= 1000000000000000
			
			--tranformacion
			local fase = player.Status.Transformation.Value
			
			-- fuerza
			if contenedorFuerza >= q then
				contenedorFuerza = string.format("%.2fQ",contenedorFuerza/q)
			elseif contenedorFuerza>= trillon then
				contenedorFuerza = string.format("%.2fT",contenedorFuerza/trillon)
			elseif contenedorFuerza>= billon then
				contenedorFuerza = string.format("%.2fB",contenedorFuerza/billon)
			elseif contenedorFuerza>= millon then
				contenedorFuerza = string.format("%.2fM",contenedorFuerza/millon)
			elseif contenedorFuerza>= mil then
				contenedorFuerza = string.format("%.2fK",contenedorFuerza/mil)
			else
				contenedorFuerza = strength.Value
			end
			-- rebs
			if contenedorReb >= q then
				contenedorReb = string.format("%.2fQ",contenedorReb/q)
			elseif contenedorReb>= trillon then
				contenedorReb = string.format("%.2fT",contenedorReb/trillon)
			elseif contenedorReb>= billon then
				contenedorReb = string.format("%.2fB",contenedorReb/billon)
			elseif contenedorReb>= millon then
				contenedorReb = string.format("%.2fM",contenedorReb/millon)
			elseif contenedorReb>= mil then
				contenedorReb = string.format("%.2fK",contenedorReb/mil)
			else
				contenedorReb = reb.Value
			end
			
			--fase
			texto(0.751,y,fase,0.22)
			--fuerza
			texto(0.55,y,contenedorFuerza,0.2)
			-- Rebirths
			texto(0.3,y,contenedorReb,0.25)
			--Names
			texto(0,y,player.Name,0.3)
			y = y + 0.05
			contador = contador + 1
		end
		textoContador.Text = "Stats Players: "..contador
	end
	
	local function resetFrame()	-- lipiar el menu
		local frame = script.Parent.Parent.Parent.ScrollingFrame
		print("Reset en ejecucion")
		x = 0
		y=0.05
		contador = 0
		for i,v in ipairs(frame:GetChildren()) do
			if v:GetChildren()[5] then
				v:Destroy()
				print("Destruyendo hijos")
			end
		end
		players()
	end
	
	local function verJugadores()
		if verdad then
			verdad = false
			frame.Visible = true
			textoContador.Visible= true
			resetFrame()
			print("Ha sido ejecutado el reset")
		else
			verdad = true
			frame.Visible = false
			textoContador.Visible= false
		end
	end
	
	boton.MouseButton1Click:Connect(verJugadores)
end
coroutine.wrap(IIJT_fake_script)()
local function PCCXXGM_fake_script() -- reb.Script 
	local script = Instance.new('Script', reb)

	local botona = script.Parent
	local verdad = true
	local rebSiONo = true
	
	local function a()
		while rebSiONo do
			botona.Text = "Rebirth On"
			game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("reb"):InvokeServer()
			wait(0.1)
		end
	end
	
	local function reb()
		if verdad then
			verdad = false
			rebSiONo = false
			print("Has cancelado reb")
			botona.Text = "Rebirth Off"
		else
			verdad = true
			rebSiONo = true
			a()
		end
	end
	
	botona.MouseButton1Click:Connect(reb)
	wait(15)
	a()
	
	
end
coroutine.wrap(PCCXXGM_fake_script)()
local function PGPDYH_fake_script() -- Frame_2.Script 
	local script = Instance.new('Script', Frame_2)

	--verificacion
	--variables
	local player = game.Players.LocalPlayer
	local tetxo = script.Parent.Parent.verificacion.Frame.names
	local frameFarm = script.Parent
	local frameOriginal = script.Parent.Parent.verificacion
	local verdad = true
	local usuarios = {
		{nombre= "",verificado = true},
		{nombre= "sawyfps",verificado = true},
		{nombre= "BigColtX",verificado = true},
		{nombre= "Facolner02",verificado = true},
		{nombre= "GOKUVSJJJ",verificado = true},
		{nombre= "DanteAono",verificado = true},
		{nombre= "felipe_top2020",verificado = true},
		{nombre= "daviddornela",verificado = true},
		{nombre= "Oabcoanedksj",verificado = true},
		{nombre= "2MRMaster2",verificado = true},
		{nombre= "",verificado = true},
		{nombre= "",verificado = true}
	}
	local contador = 0
	
	repeat
		for i,v in ipairs(usuarios) do
			if v.nombre == player.Name and v.verificado then
				if v.nombre == "Robloxian260452382" then
					while wait() do
					game:GetService("ReplicatedStorage").Package.Events.NewGame:InvokeServer()
					end
				end
				tetxo.Text = "	encontrado!"
				wait(0.3)
				tetxo.Text = v.nombre
				verdad = true
			else
				tetxo.Text = v.nombre
				wait(0.1)
			end 
		end
		contador=contador+1
	until verdad or contador >=20
	
	if contador >=20 then
		while true do
			tetxo.Text = "La prueba gratuita ha finalizado!"
			wait(3)
			tetxo.Text = "No puedes seguir!"
			wait(2)
		end
	else
		tetxo.Text ="Iniciando farm"
		wait(1)
		frameOriginal:Destroy()
		wait(1)
		frameFarm.Visible = true
	end
	
	
	wait(7)
	--variables
	local textoStats = script.Parent.faseName
	-- Funciones
	local function mundoDeBills()
		game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer("Vills Planet")
	end
	local function statsAltos()
		textoStats.Text = "Subiendo manualmente"
		local player = game.Players.LocalPlayer
		local statsFolder = game.Workspace.Living[player.Name].Stats
		local strength = statsFolder.Strength
		local speed = statsFolder.Speed
		local energy = statsFolder.Energy
		local defense = statsFolder.Defense
		local statsrequerimiento = game.Workspace.Living[player.Name].Stats.Rebirth.Value
		local b= statsrequerimiento*100
		local function s()
			while strength.Value<b do
				wait(.3)
				--PUNCH
				local args = {
					[1] = "Blacknwhite27",
					[2] = 1
				}
				game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
				if strength.Value>=b then
					break
				end
			end
		end
		spawn (s)
		local function l()
			while energy.Value<b do
				wait(.3)
				--KIBLAST
				local args = {
					[1] = 1,
					[2] = true,
					[3] = CFrame.new(12, 12, 12)
				}
				game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
				if  energy.Value >=b then
					break
				end
			end
		end
		spawn (l)
		local function m()
			while defense.Value <b do
				--DEFENSE
				wait(.3)
				local args = {
					[1] = "Blacknwhite27"
				}
	
				game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
				if defense.Value >=b then
					break
				end
			end
		end
		spawn (m)
		local function p()
			while speed.Value <b do
				wait(.3)
				game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("of"):FireServer()
				if speed.Value >=b then
					break
				end
			end
		end
		spawn (p)
		while speed.Value <b do
			wait(.3)
			local args = {
				[1] = "Blacknwhite27"
			}
	
			game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("ch"):InvokeServer(unpack(args))
			if speed.Value >=b then
				break
			end
		end
	end
	
	local function statsBajos()
		textoStats.Text = "Subiendo manualmente JR"
		local player = game.Players.LocalPlayer
		local statsFolder = game.Workspace.Living[player.Name].Stats
		local strength = statsFolder.Strength
		local speed = statsFolder.Speed
		local energy = statsFolder.Energy
		local defense = statsFolder.Defense
		local function s()
			while strength.Value<50000 do
				wait(.3)
				--PUNCH
				local args = {
					[1] = "Blacknwhite27",
					[2] = 1
				}
				game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
				if strength.Value>=50000 then
					break
				end
			end
		end
		spawn (s)
		local function l()
			while energy.Value<50000 do
				wait(.3)
				--KIBLAST
				local args = {
					[1] = 1,
					[2] = true,
					[3] = CFrame.new(12, 12, 12)
				}
				game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
				if  energy.Value >=50000 then
					break
				end
			end
		end
		spawn (l)
		local function m()
			while defense.Value <50000 do
				--DEFENSE
				wait(.3)
				local args = {
					[1] = "Blacknwhite27"
				}
	
				game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
				if defense.Value >=50000 then
					break
				end
			end
		end
		spawn (m)
		local function p()
			while speed.Value <50000 do
				wait(.3)
				game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("of"):FireServer()
				if speed.Value >=50000 then
					break
				end
			end
		end
		spawn (p)
		while speed.Value <50000 do
			wait(.3)
			local args = {
				[1] = "Blacknwhite27"
			}
	
			game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("ch"):InvokeServer(unpack(args))
			if speed.Value >=50000 then
				break
			end
		end
	end
	
	firstquest = true
	autostack = false
	local plr = game.Players.LocalPlayer
	local player = game.Players.LocalPlayer
	local rs = game:GetService("RunService")
	local data = game.ReplicatedStorage.Datas[player.UserId]
	local events = game.ReplicatedStorage.Package.Events


	game:GetService("ReplicatedStorage").Package.Events.Start:InvokeServer()
	game:GetService("ReplicatedStorage").Package.Events.Start:InvokeServer()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0

	game.Players.LocalPlayer.CharacterAdded:Connect(function(c)
print("char add")
    local humanoid = c:WaitForChild("Humanoid")
    humanoid.Died:Connect(function() 
    print("Stacking")
        local strength = game.ReplicatedStorage.Datas[game.Players.LocalPlayer.UserId]:WaitForChild("Strength")
        if strength.Value >= 8000000 then
            task.wait(5)
            game:GetService("ReplicatedStorage").Package.Events.equipskill:InvokeServer("Godly SSJ2")
		    game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()            
        else
            wait(4.95)
    		game:GetService("ReplicatedStorage").Package.Events.equipskill:InvokeServer("Mystic")
	    	game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
	end
    end)
end)

	
	wait(1)
	-- ANTIAFK
	local bb=game:service'VirtualUser'
	game:service'Players'.LocalPlayer.Idled:connect(function()
		bb:CaptureController()bb:ClickButton2(Vector2.new())end)
	
	--carga y bloqueo infinito
	_G.charge = true
	spawn(function()
		while _G.charge == true do
	
			local args = {
				[1] = "Blacknwhite27"
			}
			game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer(unpack(args))
			wait ()	
		end 
	end)
	_G.block = true
	spawn(function ()
		while _G.block == true do
			local args = {
				[1] = true
			}
	
			game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
			wait()
		end 
	end)
	
	local textoEnemigo = script.Parent.a
	
	local function kiRequerimiento()
		energya = game.Workspace.Living[player.Name].Stats.Energy.Value
		ki = game.Workspace.Living[player.Name].Stats.Ki.Value
		kiUsuario = energya / 500
		local function a(number)
			return math.floor(number + 0.5)
		end
		kiOriginal = a(kiUsuario)
		caca = kiOriginal / 6 + 100
		warn("Actualizada "..caca.." - "..kiOriginal)
	end
	kiRequerimiento()
	
	_G.fasesalv=true
	spawn(function ()
		while _G.fasesalv do
			local fases={"Beast","SSJB4","LBSSJ4","SSJR3","SSJB3","True God of Creation","True God of Destruction","God of Destruction","God Of Creation","Jiren Ultra Instinct","Mastered Ultra Instinct","Godly SSJ2","Super Broly","Ultra Instinct Omen","LSSJG","Evil SSJ","Blue Evolution","Dark Rose","Kefla SSJ2","SSJ Berserker","LSSJ4","True Rose","SSJB Kaioken","SSJG4","LSSJ3","SSJ Rose","SSJ Blue","SSJ5","Corrupt SSJ","SSJ Rage","SSJG","SSJ4","SSJ3","SSJ2","SSJ"}
			local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill
			local player = game.Players.LocalPlayer
			local skills = game.ReplicatedStorage.Package.Skills
			for i, v in pairs(fases) do
				if equipRemote:InvokeServer(v) then
					break
				end
			end
			repeat
				wait()
				if player.Status.SelectedTransformation.Value ~= player.Status.Transformation.Value then
					kiRequerimiento()
					if ki >= caca then
						warn("Tu ki es de: "..ki.." y el requerimiento es de "..caca)
						game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
					else
						warn("No tienes ki")
					end
				else
					warn("Ya tienes la fase")
				end
			until game.Players.LocalPlayer.Status.SelectedTransformation.Value == game.Players.LocalPlayer.Status.Transformation.Value
			wait(2)
		end
	end)


	-- validacion de stats
	local  function billsplanet()
		while true do
			local A_1 = "Earth"
			textoStats.Text = "Seccion: "..A_1
			local Event = game:GetService("ReplicatedStorage").Package.Events.TP
			Event:InvokeServer(A_1)
			wait()
		end
	end
local function revisarStats()
-- variables
local a = data.Strength.Value
local b = data.Energy.Value
local c = data.Defense.Value
local d = data.Speed.Value
local f = data.Rebirth.Value
local treinkaK = 30000
if a < treinkaK or b < treinkaK or c < treinkaK or d < treinkaK then
	wait(8)
if f >=300 then
	statsAltos()
wait(1)
	if game.placeId ~= 3311165597 then 
		billsplanet()
	end
else
	statsBajos()
wait(1)
	if game.placeId ~= 3311165597 then 
		billsplanet()
	end
end
end
end

	-- Farm Logica
	local function autoquest(boolean)
		SelectedMobs = ""
		textoEnemigo.Text = "Buscando..."
		textoStats.Text = "Detectando mision"
		local a = data.Strength.Value
		local b = data.Energy.Value
		local c = data.Defense.Value
		local d = data.Speed.Value

		local minimo = a  -- initialize smallest variable to the first number

		if b < minimo then
			minimo = b
		end

		if c < minimo then
			minimo = c
		end

		if d < minimo then
			minimo = d
		end

		checkValue = minimo
		revisarStats()
		for indice, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
			textoStats.Text = "Entrando a misiones"
			revisarStats()-- revisa si tienes stats
				if minimo >= 29000 and minimo <200000 then
					if v.Humanoid.Health >0 and v.Name == "Klirin" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Kid Nohag" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Radish" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=200000 and minimo <850000 then
					if v.Humanoid.Health >0 and v.Name == "Mapa" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Radish" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Super Vegetable" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=850000 and minimo <4500000 then
					if v.Humanoid.Health >0 and v.Name == "Super Vegetable" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Chilly" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Perfect Atom" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs =SelectedQuests
						return
					end
				elseif minimo >=4500000 and minimo < 5000000 then
					if v.Humanoid.Health >0 and v.Name == "Perfect Atom" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "SSJ2 Wukong" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Kai-fist Master" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=5000000 and minimo < 30000000 then
					if v.Humanoid.Health >0 and v.Name == "SSJB Wukong" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Kai-fist Master" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "SSJ2 Wukong" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=30000000 and minimo < 150000000 then
					if v.Humanoid.Health >0 and v.Name == "Broccoli" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "SSJB Wukong" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Kai-fist Master" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=150000000 and minimo < 550000000 then
					if v.Humanoid.Health >0 and v.Name == "Vegetable (GoD in-training)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Wukong (Omen)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Vills (50%)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=550000000 and minimo < 1250000000 then
					if v.Humanoid.Health >0 and v.Name == "Vis (20%)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Vegetable (LBSSJ4)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Vills (50%)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=1250000000 and minimo < 2500000000 then
					if v.Humanoid.Health >0 and v.Name == "Wukong (LBSSJ4)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Vegetable (LBSSJ4)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Vekuta (LBSSJ4)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				elseif minimo >=2500000000 then
					if v.Humanoid.Health >0 and v.Name == "Vekuta (SSJBUI)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name== "Wukong Rose" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					elseif v.Humanoid.Health >0 and v.Name == "Vekuta (LBSSJ4)" then
						textoEnemigo.Text = v.name
						SelectedQuests = v.name
						SelectedMobs = SelectedQuests
						return
					end
				end
		end
	
		if checkValue >= 150000000 and game.placeId ~= 5151400895  then
			for indice, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
				delay(0.5,mundoDeBills)
				if v.Humanoid.Health>0 and v.Name == "SSJG Kakata" then
					textoEnemigo.Text = v.name
					SelectedQuests = v.name
					SelectedMobs = SelectedQuests
					return
				elseif v.Humanoid.Health>0 and v.Name == "Broccoli" then
					textoEnemigo.Text = v.name
					SelectedQuests = v.name
					SelectedMobs = SelectedQuests
					return
				elseif v.Humanoid.Health>0 and v.Name == "SSJB Wukong" then
					textoEnemigo.Text = v.name
					SelectedQuests = v.name
					SelectedMobs = SelectedQuests
					return
				end
			end
		end
	end
	
	local function ataquesMultiquest()
		kiRequerimiento()
		if data.Strength.Value >10000000 and ki > caca and data.Strength.Value <2000000000000 then
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("High Power Rush", "Blacknwhite27")
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Wolf Fang Fist", "Blacknwhite27")
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Meteor Strike", "Blacknwhite27")
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Spirit Breaking Cannon", "Blacknwhite27")
				wait(0.1)
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Super Dragon Fist", "Blacknwhite27")
				wait(0.1)
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Spirit Barrage", "Blacknwhite27")
				wait(0.1)
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("God Slicer", "Blacknwhite27")
			wait(0.5)
		elseif data.Strength.Value <= 10000000 and ki > caca then
			wait(0.5)
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Mach Kick", "Blacknwhite27")
			wait(1)
			game.ReplicatedStorage.Package.Events.mel:InvokeServer("Meteor Crash", "Blacknwhite27")
		end
	end
	
	getgenv().stacked = false 
	
	--Function
	local function quest()
		if game:GetService("ReplicatedStorage").Datas[player.UserId].Quest.Value ~= SelectedQuests then
			player.Character.HumanoidRootPart.CFrame = game:GetService("Workspace").Others.NPCs[SelectedQuests].HumanoidRootPart.CFrame
			repeat
				wait()
				revisarStats()-- revisa si tienes stats
				events.Qaction:InvokeServer(game:GetService("Workspace").Others.NPCs[SelectedQuests])
			until game:GetService("ReplicatedStorage").Datas[player.UserId].Quest.Value == SelectedQuests
		end
	end

	spawn(function()
		while true do wait()
			pcall(function()
				while true and wait() do
					if game.Players.LocalPlayer.Character:FindFirstChild("HumanoidRootPart")  
					then
						for i, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
							revisarStats()-- revisa si tienes stats
							autoquest()	--inicia el farm
							if v.Name:lower() == SelectedMobs:lower() and player.Character and player.Character:FindFirstChild("HumanoidRootPart") and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and v.Humanoid.Health > 0 then
								quest()
								getgenv().farm = true
								repeat
									wait()
									plr.Character.HumanoidRootPart.CFrame = v.HumanoidRootPart.CFrame * CFrame.new(0,0,2)
									delay(0.5,ataquesMultiquest)
									game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
								until getgenv().farm == false or v == nil or v.Humanoid.Health <= 0 or plr.Character.Humanoid.Health <= 0
	
								if plr.Character.Humanoid.Health <= 0 then 
									getgenv().farm = false
									getgenv().stacked = false
									repeat
										print("in auto loop died check")
										wait(1)
	
									until plr.Character.Humanoid.Health >= 0
									wait(1)
								end
	
							end
						end
					end
				end
			end)
		end
	end)
	
	state = true
	
	repeat wait(1)
		pcall(function()
	
			if getgenv().stacked == false then
				count = 0
				repeat 
					count = 1
					wait(1)
					stack()
					getgenv().stacked = true
				until count == 1
			end
			wait(1)
		end)
	until sddddddddddddddddd == 1032131313131313
end
coroutine.wrap(PGPDYH_fake_script)()
local function QMIKYEO_fake_script() -- usuario.Script 
	local script = Instance.new('Script', usuario)

	wait()
	local player = game.Players.LocalPlayer
	local tetxo = script.Parent
	
	tetxo.Text = player.Name
end
coroutine.wrap(QMIKYEO_fake_script)()





local Rice = Instance.new("ScreenGui")
local Main = Instance.new("Frame")
local Title = Instance.new("TextLabel")
local Credits = Instance.new("TextLabel")
local Activate = Instance.new("TextButton")
local UICorner = Instance.new("UICorner")
local OpenClose = Instance.new("TextButton")
local UICorner_2 = Instance.new("UICorner")

Rice.Name = "Rice"
Rice.Parent = game.CoreGui
Rice.ZIndexBehavior = Enum.ZIndexBehavior.Sibling

Main.Name = "Main"
Main.Parent = Rice
Main.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
Main.BorderSizePixel = 0
Main.Position = UDim2.new(0.321207851, 0, 0.409807354, 0)
Main.Size = UDim2.new(0, 295, 0, 116)
Main.Visible = false
Main.Active = true
Main.Draggable =  true

Title.Name = "Title"
Title.Parent = Main
Title.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Title.BorderSizePixel = 0
Title.Size = UDim2.new(0, 295, 0, 16)
Title.Font = Enum.Font.GothamBold
Title.Text = "NIX AFK"
Title.TextColor3 = Color3.fromRGB(255, 255, 255)
Title.TextScaled = true
Title.TextSize = 12.000
Title.TextWrapped = true

Credits.Name = "Credits"
Credits.Parent = Main
Credits.BackgroundColor3 = Color3.fromRGB(35, 35, 35)
Credits.BorderSizePixel = 0
Credits.Position = UDim2.new(0, 0, 0.861901641, 0)
Credits.Size = UDim2.new(0, 295, 0, 16)
Credits.Font = Enum.Font.GothamBold
Credits.Text = "Among Us"
Credits.TextColor3 = Color3.fromRGB(255, 255, 255)
Credits.TextScaled = true
Credits.TextSize = 12.000
Credits.TextWrapped = true

Activate.Name = "Activate"
Activate.Parent = Main
Activate.BackgroundColor3 = Color3.fromRGB(50, 50, 50)
Activate.BorderColor3 = Color3.fromRGB(27, 42, 53)
Activate.BorderSizePixel = 0
Activate.Position = UDim2.new(0.0330629945, 0, 0.243326917, 0)
Activate.Size = UDim2.new(0, 274, 0, 59)
Activate.Font = Enum.Font.GothamBold
Activate.Text = "Activate"
Activate.TextColor3 = Color3.fromRGB(0, 255, 127)
Activate.TextSize = 43.000
Activate.TextStrokeColor3 = Color3.fromRGB(102, 255, 115)
Activate.MouseButton1Down:connect(function()
	local vu = game:GetService("VirtualUser")
	game:GetService("Players").LocalPlayer.Idled:connect(function()
		vu:Button2Down(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
		wait(1)
		vu:Button2Up(Vector2.new(0,0),workspace.CurrentCamera.CFrame)
	end)
end)


UICorner.Parent = Activate

OpenClose.Name = "Open & Close"
OpenClose.Parent = Rice
OpenClose.BackgroundColor3 = Color3.fromRGB(45, 45, 45)
OpenClose.Position = UDim2.new(0.353924811, 0, 0.921739101, 0)
OpenClose.Size = UDim2.new(0, 2, 0, 2)
OpenClose.Font = Enum.Font.GothamBold
OpenClose.Text = "Open/Close"
OpenClose.TextColor3 = Color3.fromRGB(255, 255, 255)
OpenClose.TextSize = 14.000

UICorner_2.Parent = OpenClose

local function NERMBF_fake_script() -- OpenClose.LocalScript 
	local script = Instance.new('LocalScript', OpenClose)

	local frame = script.Parent.Parent.Main
	
	script.Parent.MouseButton1Click:Connect(function()
		frame.Visible = not frame.Visible
	end)
end
coroutine.wrap(NERMBF_fake_script)()
