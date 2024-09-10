local KeySystem = true

local KeySettings = {
    Title = "Untitled",
    Subtitle = "Key System",
    Note = "No method of obtaining the key is provided",
    FileName = "KeyInfo",
    SaveKey = true,
    GrabKeyFromSite = true,
    Key = {"ks"}
}

local function verificarClave(keyIngresada)
    for _, clave in ipairs(KeySettings.Key) do
        if clave == keyIngresada then
            return true
        end
    end
    return false
end

local function mostrarInterfazClave()
    local ClaveGui = Instance.new("ScreenGui")
    ClaveGui.Parent = game.CoreGui

    local ClaveFrame = Instance.new("Frame")
    ClaveFrame.Size = UDim2.new(0.3, 0, 0.3, 0)
    ClaveFrame.Position = UDim2.new(0.5, 0, 0.5, 0)
    ClaveFrame.BackgroundColor3 = Color3.new(0, 0, 0)
    ClaveFrame.BackgroundTransparency = 0.5
    ClaveFrame.BorderSizePixel = 2
    ClaveFrame.BorderColor3 = Color3.new(1, 1, 1)
    ClaveFrame.Parent = ClaveGui
    ClaveFrame.Active = true
    ClaveFrame.Draggable = true

    local tituloClave = Instance.new("TextLabel")
    tituloClave.Size = UDim2.new(1, 0, 0.2, 0)
    tituloClave.Position = UDim2.new(0, 0, 0, 0)
    tituloClave.BackgroundColor3 = Color3.new(0, 0, 0)
    tituloClave.BackgroundTransparency = 0.5
    tituloClave.BorderSizePixel = 2
    tituloClave.BorderColor3 = Color3.new(1, 1, 1)
    tituloClave.Text = KeySettings.Title
    tituloClave.Font = Enum.Font.SourceSansBold
    tituloClave.TextSize = 18
    tituloClave.TextColor3 = Color3.new(1, 1, 1)
    tituloClave.Parent = ClaveFrame

    local inputClave = Instance.new("TextBox")
    inputClave.Size = UDim2.new(0.8, 0, 0.2, 0)
    inputClave.Position = UDim2.new(0.1, 0, 0.35, 0)
    inputClave.BackgroundColor3 = Color3.new(0, 0, 0)
    inputClave.BackgroundTransparency = 0.7
    inputClave.BorderSizePixel = 2
    inputClave.BorderColor3 = Color3.new(1, 1, 1)
    inputClave.Text = ""
    inputClave.Font = Enum.Font.SourceSansBold
    inputClave.TextSize = 14
    inputClave.TextColor3 = Color3.new(1, 1, 1)
    inputClave.Parent = ClaveFrame

    local buttonIngresar = Instance.new("TextButton")
    buttonIngresar.Size = UDim2.new(0.5, 0, 0.2, 0)
    buttonIngresar.Position = UDim2.new(0.25, 0, 0.6, 0)
    buttonIngresar.BackgroundColor3 = Color3.new(0, 0, 0)
    buttonIngresar.BackgroundTransparency = 0.7
    buttonIngresar.BorderSizePixel = 2
    buttonIngresar.BorderColor3 = Color3.new(1, 1, 1)
    buttonIngresar.Text = "Ingresar"
    buttonIngresar.Font = Enum.Font.SourceSansBold
    buttonIngresar.TextSize = 14
    buttonIngresar.TextColor3 = Color3.new(1, 1, 1)
    buttonIngresar.Parent = ClaveFrame

    buttonIngresar.MouseButton1Click:Connect(function()
        local keyIngresada = inputClave.Text
        if verificarClave(keyIngresada) then
            local KeyInfo = {
                KeyEntered = true,
             DateEntered = tick()
            }
            if KeySettings.SaveKey then
                writefile(KeySettings.FileName, game:GetService("HttpService"):JSONEncode(KeyInfo))
            end
            ClaveGui:Destroy()
            abrirMenuOriginal()
        else
            print("Clave incorrecta. Inténtalo de nuevo.")
        end
    end)
end

local function obtenerInfoClave()
    if isfile(KeySettings.FileName) then
        local fileContents = readfile(KeySettings.FileName)
        if fileContents then
            return game:GetService("HttpService"):JSONDecode(fileContents)
        end
    end
    return nil
end

local function abrirMenuOriginal()
-- Verificar si ya existe el menú original
local existingMenu = game.CoreGui:FindFirstChild("ScreenGui")
if existingMenu then
    return  -- Salir del script si el menú ya existe
end

-- Crear el menú original con animación de aparición
local CoreGui = game:GetService("StarterGui")
local ScreenGui = Instance.new("ScreenGui")
ScreenGui.Name = "ScreenGui"  -- Darle un nombre al ScreenGui
ScreenGui.Parent = game.CoreGui

-- Función para crear letras 3D con colores y animaciones
local function create3DText(text, color, index)
    local TextLabel = Instance.new("TextLabel")
    TextLabel.Text = text
    TextLabel.Font = Enum.Font.SourceSansBold
    TextLabel.TextSize = 96  -- Tamaño grande
    TextLabel.TextColor3 = color  -- Color especificado
    TextLabel.BackgroundTransparency = 1
    TextLabel.Size = UDim2.new(0, 0, 0, 0)  -- Comenzar con tamaño cero
    TextLabel.Parent = ScreenGui

    -- Calcular posición basada en el índice
    local xOffset = (index - 2) * 150  -- Ajuste de posición para centrar
    TextLabel.Position = UDim2.new(0.5, xOffset, 0.5, -100)  -- Posición centrada verticalmente

    -- Animación de tamaño y transparencia
    TextLabel:TweenSizeAndPosition(
        UDim2.new(0, 400, 0, 200),  -- Tamaño final más grande
        UDim2.new(0.5, xOffset - 200, 0.5, -100),  -- Posición final centrada
        Enum.EasingDirection.Out,  -- Dirección de la animación (desapareciendo)
        Enum.EasingStyle.Quad,  -- Estilo de la animación
        1,  -- Duración de la animación en segundos
        true,  -- Usar el estilo de desaceleración
        function()
            TextLabel:TweenSizeAndPosition(
                UDim2.new(0, 600, 0, 300),  -- Tamaño más grande
                UDim2.new(0.5, xOffset - 300, 0.5, -150),  -- Posición centrada
                Enum.EasingDirection.Out,  -- Dirección de la animación (desapareciendo)
                Enum.EasingStyle.Quad,  -- Estilo de la animación
                1,  -- Duración de la animación en segundos
                true,  -- Usar el estilo de desaceleración
                function()
                    TextLabel.TextTransparency = 0.5  -- Hacer el texto semitransparente
                    wait(3)  -- Esperar 3 segundos antes de continuar
                    ScreenGui:Destroy()  -- Eliminar las letras
                    -- Ejecutar tu propio script después de la animación aquí...
                    local existingMenu = game.CoreGui:FindFirstChild("ScreenGui")
                    if not existingMenu then
                        -- Crear el menú original
                        local CoreGui = game:GetService("StarterGui")
                        local ScreenGui = Instance.new("ScreenGui")
                        ScreenGui.Name = "ScreenGui"  -- Darle un nombre al ScreenGui
                        ScreenGui.Parent = game.CoreGui

                        local Frame = Instance.new("Frame")
                        Frame.Size = UDim2.new(0.25, 0, 0.4, 0)
                        Frame.Position = UDim2.new(0.75, 0, 0.5, 0)
                        Frame.BackgroundColor3 = Color3.new(0, 0, 0)
                        Frame.BackgroundTransparency = 0.5
                        Frame.BorderSizePixel = 2
                        Frame.BorderColor3 = Color3.new(1, 1, 1)
                        Frame.Parent = ScreenGui
                        Frame.Active = true
                        Frame.Draggable = true

                        local titulo = Instance.new("TextLabel")
                        titulo.Size = UDim2.new(1, 0, 0.2, 0)
                        titulo.Position = UDim2.new(0, 0, 0, 0)
                        titulo.BackgroundColor3 = Color3.new(0, 0, 0)
                        titulo.BackgroundTransparency = 0.5
                        titulo.BorderSizePixel = 2
                        titulo.BorderColor3 = Color3.new(1, 1, 1)
                        titulo.Text = "Menú"
                        titulo.Font = Enum.Font.SourceSansBold
                        titulo.TextSize = 18
                        titulo.TextColor3 = Color3.new(1, 1, 1)
                        titulo.Parent = Frame

                        local scrollFrame = Instance.new("ScrollingFrame")
                        scrollFrame.Size = UDim2.new(1, 0, 0.8, 0)
                        scrollFrame.Position = UDim2.new(0, 0, 0.2, 0)
                        scrollFrame.CanvasSize = UDim2.new(0, 0, 0, 1000)
                        scrollFrame.BackgroundTransparency = 0.9
                        scrollFrame.Parent = Frame
                        scrollFrame.ScrollBarThickness = 8

                        local button = Instance.new("TextButton")
                        button.Size = UDim2.new(1, 0, 0.028, 0)
                        button.Position = UDim2.new(0, 0, 0.029, 0)
                        button.BackgroundColor3 = Color3.new(0, 0, 0)
                        button.BackgroundTransparency = 0.5
                        button.BorderSizePixel = 2
                        button.BorderColor3 = Color3.new(1, 1, 1)
                        button.Text = "[ON]"
                        button.Font = Enum.Font.SourceSansBold
                        button.TextSize = 14
                        button.TextColor3 = Color3.new(1, 1, 1)
                        button.Parent = scrollFrame

                        local isLoopActive = true
                        local farmThread

                        local function otroBucleNormal()
                            while isLoopActive do
                                game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer('Blacknwhite27')
                                wait(0.001)
                                                      game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer('Blacknwhite27')
                                                      wait(0.001)
                                                                            game:GetService("ReplicatedStorage").Package.Events.cha:InvokeServer('Blacknwhite27')
                                wait(0.001)
                            end
                        end

                        button.MouseButton1Click:Connect(function()
                            if isLoopActive then
                                isLoopActive = true
                                button.Text = "[ON]"
                                if farmThread then
                                    farmThread:Disconnect()
                                end
                            else
                                isLoopActive = false
                                button.Text = "[OFF]"
                                farmThread = spawn(otroBucleNormal)
                            end
                        end)

                        spawn(function()
                            if isLoopActive then
                                farmThread = spawn(otroBucleNormal)
                            end
                        end)
                    end
                end
            )
        end
    )
end

-- Colores fosforescentes
local neonBlue = Color3.fromRGB(65, 105, 225)  -- Azul fosforescente
local neonRed = Color3.fromRGB(255, 20, 147)   -- Rosa fosforescente
local neonGreen = Color3.fromRGB(0, 255, 127)  -- Verde fosforescente

-- Llamar a la función para crear las letras 3D con colores fosforescentes y en orden
create3DText("S", neonBlue, 1)  -- Azul
create3DText("K", neonRed, 2)    -- Rosa
create3DText("R", neonGreen, 3)  -- Verde


-- Gui to Lua
-- Version: 3.2

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
local verificacion = Instance.new("Frame")
local TextLabel_4 = Instance.new("TextLabel")
local usuario = Instance.new("TextLabel")
local TextLabel_5 = Instance.new("TextLabel")
local TextLabel_6 = Instance.new("TextLabel")
local Frame_3 = Instance.new("Frame")
local TextLabel_7 = Instance.new("TextLabel")
local names = Instance.new("TextLabel")

--no borrar
ScreenGui.Name = "modified x fernando"
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
TextLabel.Text = "Nombre"
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
TextLabel_2.Text = "Rebirths"
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
TextLabel_3.Text = "Stats"
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
fase.Text = "Fase"
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
contador.Text = "Jugadroes En Partida"
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
TextButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextButton.BorderSizePixel = 0
TextButton.Size = UDim2.new(1, 0, 0.100000001, 0)
TextButton.Font = Enum.Font.Unknown
TextButton.Text = "SKR B)"
TextButton.TextColor3 = Color3.fromRGB(0, 0, 0)
TextButton.TextScaled = true
TextButton.TextSize = 14.000
TextButton.TextStrokeColor3 = Color3.fromRGB(255, 0, 0)
TextButton.TextStrokeTransparency = 0.000
TextButton.TextWrapped = true

UICorner.Parent = TextButton

verJugadores.Name = "verJugadores"
verJugadores.Parent = Frame_2
verJugadores.AnchorPoint = Vector2.new(0.5, 0)
verJugadores.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
verJugadores.BorderColor3 = Color3.fromRGB(57, 11, 240)
verJugadores.BorderSizePixel = 2
verJugadores.Position = UDim2.new(0.5, 0, 0, 1)
verJugadores.Size = UDim2.new(0.99000001, 0, 0.119999997, 0)
verJugadores.Font = Enum.Font.SourceSans
verJugadores.Text = "Ver Jugadores"
verJugadores.TextColor3 = Color3.fromRGB(0, 0, 0)
verJugadores.TextScaled = true
verJugadores.TextSize = 14.000
verJugadores.TextStrokeColor3 = Color3.fromRGB(165, 10, 255)
verJugadores.TextStrokeTransparency = 0.000
verJugadores.TextWrapped = true

local CLIKButton = Instance.new("TextButton")
CLIKButton.Parent = Frame_2
CLIKButton.AnchorPoint = Vector2.new(0.5, 0)
CLIKButton.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
CLIKButton.BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cambia el color del borde a rojo
CLIKButton.BorderSizePixel = 2
CLIKButton.Position = UDim2.new(0.5, 0, 0.200000001, 8)
CLIKButton.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)
CLIKButton.Font = Enum.Font.SourceSans
CLIKButton.Text = "CLIK [OFF]"
CLIKButton.TextColor3 = Color3.fromRGB(0, 0, 0)
CLIKButton.TextScaled = true
CLIKButton.TextSize = 14.000
CLIKButton.TextStrokeColor3 = Color3.fromRGB(82, 2, 255)
CLIKButton.TextStrokeTransparency = 0.000
CLIKButton.TextWrapped = true




reb.Name = "reb"
reb.Parent = Frame_2
reb.AnchorPoint = Vector2.new(0.5, 0)
reb.BackgroundColor3 = Color3.fromRGB(0, 0, 0)
reb.BorderColor3 = Color3.fromRGB(57, 11, 240)
reb.BorderSizePixel = 2
reb.Position = UDim2.new(0.5, 0, 0.100000001, 8)
reb.Size = UDim2.new(0.99000001, 0, 0.100000001, 0)
reb.Font = Enum.Font.SourceSans
reb.Text = "FARM_[ON]"
reb.TextColor3 = Color3.fromRGB(0, 0, 0)
reb.TextScaled = true
reb.TextSize = 14.000
reb.TextStrokeColor3 = Color3.fromRGB(82, 2, 255)
reb.TextStrokeTransparency = 0.000
reb.TextWrapped = true




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
TextLabel_4.Text = "Usuario detectado"
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
TextLabel_5.Text = "Discord:"
TextLabel_5.TextColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_5.TextScaled = true
TextLabel_5.TextSize = 14.000
TextLabel_5.TextStrokeColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_5.TextStrokeTransparency = 0.000
TextLabel_5.TextWrapped = true

TextLabel_6.Parent = verificacion
TextLabel_6.AnchorPoint = Vector2.new(0.5, 0)
TextLabel_6.BackgroundColor3 = Color3.fromRGB(255, 255, 255)
TextLabel_6.BorderColor3 = Color3.fromRGB(0, 0, 0)
TextLabel_6.BorderSizePixel = 0
TextLabel_6.Position = UDim2.new(0.5, 0, 0.75, 0)
TextLabel_6.Size = UDim2.new(1, 0, 0.150000006, 0)
TextLabel_6.Font = Enum.Font.SourceSansItalic
TextLabel_6.Text = "j.robert_oppenheimer"
TextLabel_6.TextColor3 = Color3.fromRGB(0, 0, 0)
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
TextLabel_7.Text = "Usuarios"
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
names.Text = "¿?"
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
		textoContador.Text = "Jugadores En Partida: "..contador
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
		
		 local yo = game:GetService('Players').LocalPlayer
local folderData = game.ReplicatedStorage.Datas[yo.UserId]
local afk = game:service'VirtualUser'
local statsRequeridosFarm = 4000
local events = game.ReplicatedStorage.Package.Events
local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill 
local cargaAndBloqueo = true
local activadaSpeed = false
local statsPlayerFarmSa

print('nuevo script BY HEISENBERG, si usas mi script sabes que soy la verga');

local millon = 1000000
local arregloAtaques = {
	{name = "God Slicer",requerido = millon * 60},
	{name = "Spirit Barrage",requerido = millon * 60},
	{name = "Super Dragon Fist",requerido = millon * 50},
	{name = "Flash Kick",requerido = millon / 2},
	{name = "Spirit Breaking Cannon",requerido = 200000},
	{name = "Mach Kick",requerido = 90000},
	{name = "High Power Rush",requerido = 65000},
	{name = "Meteor Crash",requerido = 28000},
	{name = "Wolf Fang Fist",requerido = 2000},
}
local ataquesEnergy = {
	{name = 'Soul Punisher',subName = 'Hak',fuerza = 40000000},
	{name = 'Destruction',subName = 'Hak',fuerza = 40000000},
	{name = 'Energy Volley',subName = 'voleys',fuerza = 4000},
}

local multiQuest = {
	bossEarth = {
		{nombre= "SSJG Kakata",minimo = 100500000},
		{nombre= "Broccoli",minimo = 52500000},
		{nombre= "SSJB Wukong",minimo = 8000000},
		{nombre= "Kai-fist Master",minimo = 6025000},
		{nombre= "SSJ2 Wukong",minimo = 1250000},
		{nombre= "Perfect Atom",minimo = 875000},
		{nombre= "Chilly",minimo = 550000},
		{nombre= "Super Vegetable",minimo = 187500},
		{nombre= "Mapa",minimo = 50000},
		{nombre= "Radish",minimo = 39000},
		{nombre= "Kid Nohag",minimo = 30000},
		{nombre= "Klirin",minimo = 4000},
	},
	bossBills = {
		{nombre= "Vekuta (SSJBUI)",minimo = 5000000000},
		{nombre= "Wukong Rose",minimo = 4500000000},
		{nombre= "Vekuta (LBSSJ4)",minimo = 3700000000},
		{nombre= "Wukong (LBSSJ4)",minimo = 3000000000},
		{nombre= "Vegetable (LBSSJ4)",minimo = 1700000000},
		{nombre= "Vis (20%)",minimo = 1200000000},
		{nombre= "Vills (50%)",minimo = 600000000},
		{nombre= "Wukong (Omen)",minimo = 300000000},
		{nombre= "Vegetable (GoD in-training)",minimo = 170000000},
	}
}

local transformaciones = {
	fasesBug = {
		{name = "Godly SSJ2",fuerza = 8000000},
		{name = "LSSJ Kaioken",fuerza = 160000},
		{name = "SSJ2 Kaioken",fuerza = 50000},
		{name = "Mystic",fuerza = 200000},
		{name = "SSJ3	",fuerza = 95000},
		{name = "SSJ Kaioken",fuerza = 16000},
	},
	fases = {
		{name = "Beast",fuerza = 120000000},
			       {name = "SSJBUI",fuerza = 120000000},
	 	{name = "Ultra Ego",fuerza =  120000000},
		{name = "SSJB4",fuerza =50000000},
	 	{name = "LBSSJ4",fuerza = 100000000},
		{name = "True God of Creation",fuerza = 30000000},
		{name = "True God of Destruction",fuerza = 30000000},
		{name = "SSJR3",fuerza = 50000000},
		{name = "God of Creation",fuerza = 30000000},
		{name = "God of Destruction",fuerza = 30000000},
		{name = "Super Broly",fuerza = 4000000},
		{name = "Jiren Ultra Instinct",fuerza = 14000000},
		{name = "Mastered Ultra Instinct",fuerza = 14000000},
		{name = "Godly SSJ2",fuerza = 8000000},
		{name = "LSSJG",fuerza = 3000000},
		{name = "Ultra Instinct Omen",fuerza = 5000000},
		{name = "LSSJ4",fuerza = 1800000},
		{name = "SSJG4",fuerza = 1000000},
		{name = "Evil SSJ",fuerza = 4000000},
		{name = "Blue Evolution",fuerza = 3500000},
		{name = "LSSJ3",fuerza = 800000},
		{name = "Dark Rose",fuerza = 3500000},
		{name = "SSJ Berseker",fuerza = 3000000},
		{name = "Kefla SSJ2",fuerza = 3000000},
		{name = "True Rose",fuerza = 2400000},
		{name = "SSJ Blue Kaioken",fuerza = 2200000},
		{name = "SSJ5",fuerza = 550000},
		{name = "Mystic Kaioken",fuerza = 250000},
		{name = "SSJ Rose",fuerza = 1400000},
		{name = "SSJ Blue",fuerza = 1200000},
		{name = "LSSJ Kaioken",fuerza = 160000},
		{name = "Corrupt SSJ",fuerza = 700000},
		{name = "SSJ Rage",fuerza = 700000},
		{name = "SSJ2 Kaioken",fuerza = 50000},
		{name = "SSJ4",fuerza = 300000},
		{name = "Mystic",fuerza = 200000},
		{name = "LSSJ",fuerza = 140000},
		{name = "SSJ3",fuerza =95000},
		{name = "SSJ2 Majin",fuerza = 65000},
		{name = "Spirit SSJ",fuerza = 65000},
		{name = "SSJ Kaioken",fuerza = 16000},
	}
}

local function rebirthzzzz()
	return folderData.Rebirth.Value
end
local function strength()
	return folderData.Strength.Value
end
local function energy()
	return folderData.Energy.Value
end
local function defense()
	return folderData.Defense.Value
end
local function speed()
	return folderData.Speed.Value
end

local function selectedForm()	
	return game.Players.LocalPlayer.Status.SelectedTransformation.Value
end
local function valorFase()	
	return game.Players.LocalPlayer.Status.Transformation.Value
end

function characterInvisible()
	return yo.Character
end

function player()
	return yo.Character and yo.Character.Humanoid and yo.Character.Humanoid.Health > 0 and yo.Character:FindFirstChild("HumanoidRootPart")
end

function misionSeleccionada()
	return game:GetService("ReplicatedStorage").Datas[yo.UserId].Quest.Value
end

local function sigueEnemigo(enemigo)
	yo.Character.HumanoidRootPart.CFrame = enemigo	
end

local function kiRequerido()
	return game:GetService("Players").LocalPlayer.Character.Stats.Ki.MaxValue / 10
end
local function kiTotal()
	return game:GetService("Players").LocalPlayer.Character.Stats.Ki.MaxValue / 2
end
local function ki()
	return game.Workspace.Living[yo.Name].Stats.Ki.Value
end

function rebirth()
	game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("reb"):InvokeServer()
end

function ejecutarForma()
	   while rebSiONo and selectedForm() ~= valorFase() do
		pcall(function ()
			if ki() > (kiRequerido() + 10) then
				game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
				task.wait()
				game:GetService("ReplicatedStorage").Package.Events.AuraTrigger:InvokeServer()
			end
		end)
		wait()
	end
end

function transformarse(array)
	if strength() < 16000 then
		return
	end
	for i,v in pairs(transformaciones[array]) do
		if strength() >= v.fuerza then
			equipRemote:InvokeServer(v.name) 
			if equipRemote:InvokeServer(v.name) then 
				break 
			end
		end
	end
	ejecutarForma() 
end

function iniciarJuego()
	local player = game.Players.LocalPlayer
	local data = game.ReplicatedStorage.Datas[player.UserId]
	game:GetService("ReplicatedStorage").Package.Events.Start:InvokeServer()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	if data.Strength.Value>=8000000 then
		wait(5)
		game:GetService("ReplicatedStorage").Package.Events.equipskill:InvokeServer("Godly SSJ2")
		game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
	else
		wait(4.95)
		game:GetService("ReplicatedStorage").Package.Events.equipskill:InvokeServer("Mystic")
		game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
	end
	task.wait()
end

function noTierraID()
	return game.placeId ~= 3311165597
end

local function valorMinimo()
	local valueMinimo = strength()

	if energy() < valueMinimo then
		valueMinimo = energy()
	end
	if defense() < valueMinimo then
		valueMinimo = defense()
	end
	if speed() < valueMinimo then
		valueMinimo = speed()
	end

	return valueMinimo
end

function detectarAtaque(name, subname, enemigo)
	local args = {
		[1] = name,
		[2] = {
			["FaceMouse"] = true,
			["MouseHit"] = enemigo
		},
		[3] = "Blacknwhite27"
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild(subname):InvokeServer(unpack(args))
end
function ataqueMelee(vida) 
	for i,v in pairs(arregloAtaques) do
		if valorMinimo() > v.requerido and ki() >= kiRequerido() and vida then
			game:GetService("ReplicatedStorage").Package.Events.mel:InvokeServer(v.name, "Blacknwhite27")
		end
	end
end

function ataqueEnergy(enem, vida) 
	for i,v in pairs(ataquesEnergy) do
		pcall(function()
			if valorMinimo() > v.fuerza and vida and ki() >= kiRequerido() then
				detectarAtaque(v.name, v.subName, enem)
			end
		end)
		wait()
	end
end

function iteradorQuest(array)
	print('Seccion iterador quest')
	local enemigo
	for _,jefe in pairs(multiQuest[array]) do 
		if valorMinimo() > jefe.minimo and player() then
			print('El elegigo')
			for indice, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do 
				print('enemigo '..v.Name)
				if jefe.nombre == v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and yo and v.Humanoid.Health > 0 then
					print('Mision seleccionada y retornando enemigo')
					return v.Name 
				end
			end
		end
	end
end

function earth()
	pcall(function()
		local A_1 = "Earth"
		local Event = game:GetService("ReplicatedStorage").Package.Events.TP
		Event:InvokeServer(A_1)
	end)
end
function mundoBills()
	game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer("Vills Planet")
end

function validacionPlanetas()
	local billsTP = 120000000

	print('Validando el planeta')

	if noTierraID() then 
			   while rebSiONo and valorMinimo() < billsTP and noTierraID() do 
			print('Ir a la tierra')
			earth()
			wait()
		end
	else 
		if valorMinimo() >= billsTP  then 
			pcall(function()
				print('Llendo a bills')
				mundoBills()
			end)
		end
	end
end

local function masFuerza()
    local requiredStrength = statsRequeridosFarm
    for _, attack in ipairs(arregloAtaques) do
        if strength() < attack.requerido then
            requiredStrength = attack.requerido
            break
        end
    end

    if strength() < requiredStrength then
        local args = {[1] = "Blacknwhite27",[2] = 1}
        game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
        print('Ejecutando golpeo')
    else
        print('Tienes suficiente fuerza!')
    end
end

local function masEnergy()
	if energy() < statsRequeridosFarm then
		local args = {[1] = 1,[2] = true,[3] = CFrame.new(12, 12, 12)}
		game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
		print('Ejecutando energy!')
	else
		print('Suficiente energy!')
	end
end
local function masDefensa()
	if defense() < statsRequeridosFarm then
		local args = {[1] = "Blacknwhite27"}
		game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
		print('Ejecutando energy!')
	else
		print('Suficiente energy!')
	end
end
local function masSpeed() 
	keypress(Enum.KeyCode.LeftShift)
	print('Ejecutando Speed!')
end
local function cancelarSpeed() 
	keyrelease(Enum.KeyCode.LeftShift)
	print('Cancelando Speed!')
end
local function masCarga() 
	keypress(Enum.KeyCode.C)
	print('Carga!')
end
local function cancelarCarga() 
	keyrelease(Enum.KeyCode.C)
	print('Cancelando Carga!')
end

local function fly()
	local succes,fallo = pcall(function ()
	wait(2)
		keypress(Enum.KeyCode.Space)
		task.wait()
		keyrelease(Enum.KeyCode.Space)
		task.wait()
		keypress(Enum.KeyCode.Space)
		task.wait()
		keyrelease(Enum.KeyCode.Space)
		task.wait()
	end)
	if fallo then
		warn('fly error '..fallo)
	end
end

local function ataquesParaStats()
	print('Atacando...')
	
	if speed() < statsRequeridosFarm and ki() >= kiRequerido() and not activadaSpeed and player() then
		masSpeed() 
		activadaSpeed = true
	end

    if (speed() >= statsRequeridosFarm and activadaSpeed) or (ki() < kiRequerido() and activadaSpeed) or (not player() and activadaSpeed) then
		cancelarSpeed() 
		cancelarSpeed() 
		activadaSpeed = false
	end

	masFuerza()
	task.wait()
	masEnergy()
	task.wait()
	masDefensa()
	task.wait()
end

local function aver(enlace)
    return loadstring(game:HttpGet(enlace))()
end

local function flyi()
	aver('https://raw.githubusercontent.com/CBJ-Yael/volarFly/main/validarFly.lua')
end

local function esperandoCargaxd()

	if (speed() >= statsRequeridosFarm and activadaSpeed) or (ki() < kiRequerido() and activadaSpeed) or (not player() and activadaSpeed) then
		cancelarSpeed() 
		cancelarSpeed() 
		activadaSpeed = false
	end

	masCarga() 
	repeat
		wait()
		warn('Esperando mas ki')
	until ki() >= kiTotal() or not player()
	warn('Ki completado o estas muerto!')
	task.wait()
	cancelarCarga()
	cancelarCarga()
end

local function acumularStats()
	repeat
		wait()
		print('Esperando vida....')
	until player() 
	task.wait()

		   while rebSiONo and valorMinimo() < statsRequeridosFarm do
		
		cargaAndBloqueo = false

		print('Tienes pocas estadisticas')

		
		if ki() >= kiRequerido() then
			ataquesParaStats()
		else
			esperandoCargaxd()
		end
	end
	print('Tienes estadisticas suficientes!')
	cargaAndBloqueo = true
end

local function validacionVida()
	aver('https://raw.githubusercontent.com/CBJ-Yael/holasaludos/main/saludos.lua')
end

function empezarQuest(array) 
	acumularStats() 
	task.wait()

	validacionPlanetas()

	local enemigo = iteradorQuest(array)

	print('Enemigo seleccionado')

		   while rebSiONo and misionSeleccionada() ~= enemigo and player() do
		wait()
		print('Ejecutando quest')
		events.Qaction:InvokeServer(game:GetService("Workspace").Others.NPCs[enemigo])
	end
end

function rival(array)
	local enemigo = iteradorQuest(array)

	for indice, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
		if enemigo == v.Name then
			return v
		end
	end
end

function mision()
	print('Seleccionando mision')
	if noTierraID() then
		print('Estas en bills')
		empezarQuest('bossBills')
	else
		print('Estas en la tierra')
		empezarQuest('bossEarth')
	end
end

function misionRival()
	local buscador

	if noTierraID() then
		buscador = rival('bossBills')
	else
		buscador = rival('bossEarth')
	end

	return buscador
end

function empezarFarm() 
	fly()
		   while rebSiONo and true do
		pcall(function()
			if player() then
				rebirth() 

				warn('estadisticas elegidas '..tostring(statsRequeridosFarm))

				transformarse('fases')

				print('Tranformacion ejecutada')
				mision()

				print('Mision seleccionada')

				local enemigo = misionRival()

				statsPlayerFarmSa = flyi

				print('Enemigo: '..enemigo.Name)

				local function frameEnemigo()
					return enemigo.HumanoidRootPart.CFrame
				end
				pcall(function ()
					validacionVida()
				end)
				local function vidaEnemigo()
					return enemigo.Humanoid.Health > 0
				end

				   while rebSiONo and enemigo:FindFirstChild("Humanoid") and vidaEnemigo() and player() do
					pcall(function()
						spawn(function() 
							sigueEnemigo(frameEnemigo() * CFrame.new(0, 0, 1))
							pcall(function ()
								statsPlayerFarmSa()
							end)
						end)
						spawn(function() 
							if ki() >= kiRequerido() and valorMinimo() >= 4000 then
								ataqueEnergy(frameEnemigo(), vidaEnemigo())
								wait(1)
							else
								game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
							end
						end)
						spawn(function()
								local args = {[1] = true}
					game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
				
							if ki() >= kiRequerido() and valorMinimo() >= 2000 then
								ataqueMelee(vidaEnemigo())
							end
						end)
						spawn(function()
							if selectedForm() ~= valorFase() or selectedForm() == '' or valorFase() == '' then
                                transformarse('fases');
							end
						end)
					end)
					wait()
				end
				if misionSeleccionada() == '' then
					wait(2)
				end
				if yo.Character.Humanoid.Health <= 0 then
					repeat
						wait()
					until yo.Character.Humanoid.Health > 0
					wait(1)
					fly()
				end
			end
		end)
		wait()
	end
end


print('Loading game VERSION ACTUALIZADA 5.0.0'..' XD puto el que este viendo esto y me este ofendiendo el hijo de perra, bien que usas mi script verdad pedazo de mierda?')
wait()

yo.Idled:Connect(function() 
	afk:CaptureController()
	afk:ClickButton2(Vector2.new())
end)


empezarFarm()
			botona.Text = "FARM/Activo"
			wait(0.1)
		end
	local function reb()
		if verdad then
			verdad = false
			rebSiONo = false
			print("Has cancelado reb")
			botona.Text = "FARM/Cancelado"
		else
			verdad = true
			rebSiONo = true
			a()
		end
	end
	
	botona.MouseButton1Click:Connect(reb)
	wait(13)
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
	local verdad = false
	local usuarios = {

		{nombre= "KamiSlayer_Sama",verificado = true},
	}
	local contador = 0
	
	repeat
		for i,v in ipairs(usuarios) do
			if v.nombre == player.Name and v.verificado then
				if v.nombre == "userinvalidet" then
					  while bucleActivo and wait() do
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
		  while bucleActivo and true do
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
	
--aki para activar depues de la verificasion
	
	local bucleActivo = false

CLIKButton.MouseButton1Click:Connect(function()
    if bucleActivo then
        CLIKButton.Text = "CLIK [OFF]"
        CLIKButton.BorderColor3 = Color3.fromRGB(255, 0, 0) -- Cambia el color del borde a rojo
        bucleActivo = false
        print("CLIK [OFF]")
    else
        CLIKButton.Text = "CLIK [ON]"
        CLIKButton.BorderColor3 = Color3.fromRGB(0, 255, 0) -- Cambia el color del borde a verde
        bucleActivo = true
 
 local yo = game:GetService('Players').LocalPlayer
local folderData = game.ReplicatedStorage.Datas[yo.UserId]
local afk = game:service'VirtualUser'
local statsRequeridosFarm = 4000
local events = game.ReplicatedStorage.Package.Events
local equipRemote = game:GetService("ReplicatedStorage").Package.Events.equipskill 
local cargaAndBloqueo = true
local activadaSpeed = false
local statsPlayerFarmSa

print('nuevo script BY HEISENBERG, si usas mi script sabes que soy la verga');

local millon = 1000000
local arregloAtaques = {
	{name = "God Slicer",requerido = millon * 60},
	{name = "Spirit Barrage",requerido = millon * 60},
	{name = "Super Dragon Fist",requerido = millon * 50},
	{name = "Flash Kick",requerido = millon / 2},
	{name = "Spirit Breaking Cannon",requerido = 200000},
	{name = "Mach Kick",requerido = 90000},
	{name = "High Power Rush",requerido = 65000},
	{name = "Meteor Crash",requerido = 28000},
	{name = "Wolf Fang Fist",requerido = 2000},
}
local ataquesEnergy = {
	{name = 'Soul Punisher',subName = 'Hak',fuerza = 40000000},
	{name = 'Destruction',subName = 'Hak',fuerza = 40000000},
	{name = 'Energy Volley',subName = 'voleys',fuerza = 4000},
}

local multiQuest = {
	bossEarth = {
		{nombre= "SSJG Kakata",minimo = 37500000},
		{nombre= "Broccoli",minimo = 12500000},
		{nombre= "SSJB Wukong",minimo = 2000000},
		{nombre= "Kai-fist Master",minimo = 1625000},
		{nombre= "SSJ2 Wukong",minimo = 1250000},
		{nombre= "Perfect Atom",minimo = 875000},
		{nombre= "Chilly",minimo = 550000},
		{nombre= "Super Vegetable",minimo = 187500},
		{nombre= "Mapa",minimo = 30000},
		{nombre= "Radish",minimo = 25000},
		{nombre= "Kid Nohag",minimo = 20000},
		{nombre= "Klirin",minimo = 4000},
	},
	bossBills = {
		{nombre= "Vekuta (SSJBUI)",minimo = 2875000000},
		{nombre= "Wukong Rose",minimo = 2650000000},
		{nombre= "Vekuta (LBSSJ4)",minimo = 1350000000},
		{nombre= "Wukong (LBSSJ4)",minimo = 875000000},
		{nombre= "Vegetable (LBSSJ4)",minimo = 600000000},
		{nombre= "Vis (20%)",minimo = 350000000},
		{nombre= "Vills (50%)",minimo = 250000000},
		{nombre= "Wukong (Omen)",minimo = 180000000},
		{nombre= "Vegetable (GoD in-training)",minimo = 120000000},
	}
}

local transformaciones = {
	fasesBug = {
		{name = "Godly SSJ2",fuerza = 8000000},
		{name = "LSSJ Kaioken",fuerza = 160000},
		{name = "SSJ2 Kaioken",fuerza = 50000},
		{name = "Mystic",fuerza = 200000},
		{name = "SSJ3	",fuerza = 95000},
		{name = "SSJ Kaioken",fuerza = 16000},
	},
	fases = {
		{name = "Beast",fuerza = 120000000},
	}
}

local function rebirthzzzz()
	return folderData.Rebirth.Value
end
local function strength()
	return folderData.Strength.Value
end
local function energy()
	return folderData.Energy.Value
end
local function defense()
	return folderData.Defense.Value
end
local function speed()
	return folderData.Speed.Value
end

local function selectedForm()	
	return game.Players.LocalPlayer.Status.SelectedTransformation.Value
end
local function valorFase()	
	return game.Players.LocalPlayer.Status.Transformation.Value
end

function characterInvisible()
	return yo.Character
end

function player()
	return yo.Character and yo.Character.Humanoid and yo.Character.Humanoid.Health > 0 and yo.Character:FindFirstChild("HumanoidRootPart")
end

function misionSeleccionada()
	return game:GetService("ReplicatedStorage").Datas[yo.UserId].Quest.Value
end

local function sigueEnemigo(enemigo)
	yo.Character.HumanoidRootPart.CFrame = enemigo	
end

local function kiRequerido()
	return game:GetService("Players").LocalPlayer.Character.Stats.Ki.MaxValue / 10
end
local function kiTotal()
	return game:GetService("Players").LocalPlayer.Character.Stats.Ki.MaxValue / 2
end
local function ki()
	return game.Workspace.Living[yo.Name].Stats.Ki.Value
end

function rebirth()
	game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild("reb"):InvokeServer()
end

function ejecutarForma()
	   while bucleActivo and selectedForm() ~= valorFase() do
		pcall(function ()
			if ki() > (kiRequerido() + 10) then
				game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
				task.wait()
				game:GetService("ReplicatedStorage").Package.Events.AuraTrigger:InvokeServer()
			end
		end)
		wait()
	end
end

function transformarse(array)
	if strength() < 16000 then
		return
	end
	for i,v in pairs(transformaciones[array]) do
		if strength() >= v.fuerza then
			equipRemote:InvokeServer(v.name) 
			if equipRemote:InvokeServer(v.name) then 
				break 
			end
		end
	end
	ejecutarForma() 
end

function iniciarJuego()
	local player = game.Players.LocalPlayer
	local data = game.ReplicatedStorage.Datas[player.UserId]
	game:GetService("ReplicatedStorage").Package.Events.Start:InvokeServer()
	game.Players.LocalPlayer.Character.Humanoid.Health = 0
	if data.Strength.Value>=8000000 then
		wait(5)
		game:GetService("ReplicatedStorage").Package.Events.equipskill:InvokeServer("Godly SSJ2")
		game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
	else
		wait(4.95)
		game:GetService("ReplicatedStorage").Package.Events.equipskill:InvokeServer("Mystic")
		game:GetService("ReplicatedStorage").Package.Events.ta:InvokeServer()
	end
	task.wait()
end

function noTierraID()
	return game.placeId ~= 3311165597
end

local function valorMinimo()
	local valueMinimo = strength()

	if energy() < valueMinimo then
		valueMinimo = energy()
	end
	if defense() < valueMinimo then
		valueMinimo = defense()
	end
	if speed() < valueMinimo then
		valueMinimo = speed()
	end

	return valueMinimo
end

function detectarAtaque(name, subname, enemigo)
	local args = {
		[1] = name,
		[2] = {
			["FaceMouse"] = true,
			["MouseHit"] = enemigo
		},
		[3] = "Blacknwhite27"
	}
	game:GetService("ReplicatedStorage"):WaitForChild("Package"):WaitForChild("Events"):WaitForChild(subname):InvokeServer(unpack(args))
end
function ataqueMelee(vida) 
	for i,v in pairs(arregloAtaques) do
		if valorMinimo() > v.requerido and ki() >= kiRequerido() and vida then
			game:GetService("ReplicatedStorage").Package.Events.mel:InvokeServer(v.name, "Blacknwhite27")
		end
	end
end

function ataqueEnergy(enem, vida) 
	for i,v in pairs(ataquesEnergy) do
		pcall(function()
			if valorMinimo() > v.fuerza and vida and ki() >= kiRequerido() then
				detectarAtaque(v.name, v.subName, enem)
			end
		end)
		wait()
	end
end

function iteradorQuest(array)
	print('Seccion iterador quest')
	local enemigo
	for _,jefe in pairs(multiQuest[array]) do 
		if valorMinimo() > jefe.minimo and player() then
			print('El elegigo')
			for indice, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do 
				print('enemigo '..v.Name)
				if jefe.nombre == v.Name and v:FindFirstChild("Humanoid") and v:FindFirstChild("HumanoidRootPart") and yo and v.Humanoid.Health > 0 then
					print('Mision seleccionada y retornando enemigo')
					return v.Name 
				end
			end
		end
	end
end

function earth()
	pcall(function()
		local A_1 = "Earth"
		local Event = game:GetService("ReplicatedStorage").Package.Events.TP
		Event:InvokeServer(A_1)
	end)
end
function mundoBills()
	game:GetService("ReplicatedStorage").Package.Events.TP:InvokeServer("Vills Planet")
end

function validacionPlanetas()
	local billsTP = 120000000

	print('Validando el planeta')

	if noTierraID() then 
			   while bucleActivo and valorMinimo() < billsTP and noTierraID() do 
			print('Ir a la tierra')
			earth()
			wait()
		end
	else 
		if valorMinimo() >= billsTP  then 
			pcall(function()
				print('Llendo a bills')
				mundoBills()
			end)
		end
	end
end

local function masFuerza()
    local requiredStrength = statsRequeridosFarm
    for _, attack in ipairs(arregloAtaques) do
        if strength() < attack.requerido then
            requiredStrength = attack.requerido
            break
        end
    end

    if strength() < requiredStrength then
        local args = {[1] = "Blacknwhite27",[2] = 1}
        game:GetService("ReplicatedStorage").Package.Events.p:FireServer(unpack(args))
        print('Ejecutando golpeo')
    else
        print('Tienes suficiente fuerza!')
    end
end

local function masEnergy()
	if energy() < statsRequeridosFarm then
		local args = {[1] = 1,[2] = true,[3] = CFrame.new(12, 12, 12)}
		game:GetService("ReplicatedStorage").Package.Events.kb:FireServer(unpack(args))
		print('Ejecutando energy!')
	else
		print('Suficiente energy!')
	end
end
local function masDefensa()
	if defense() < statsRequeridosFarm then
		local args = {[1] = "Blacknwhite27"}
		game:GetService("ReplicatedStorage").Package.Events.def:InvokeServer(unpack(args))
		print('Ejecutando energy!')
	else
		print('Suficiente energy!')
	end
end
local function masSpeed() 
	keypress(Enum.KeyCode.LeftShift)
	print('Ejecutando Speed!')
end
local function cancelarSpeed() 
	keyrelease(Enum.KeyCode.LeftShift)
	print('Cancelando Speed!')
end
local function masCarga() 
	keypress(Enum.KeyCode.C)
	print('Carga!')
end
local function cancelarCarga() 
	keyrelease(Enum.KeyCode.C)
	print('Cancelando Carga!')
end

local function fly()
	local succes,fallo = pcall(function ()
	while bucleActivo and true do
		keypress(Enum.KeyCode.Space)
		task.wait()
		keyrelease(Enum.KeyCode.Space)
		task.wait()
		keypress(Enum.KeyCode.Space)
		task.wait()
		keyrelease(Enum.KeyCode.Space)
		task.wait()
		end
	end)
	if fallo then
		warn('fly error '..fallo)
	end
end

local function ataquesParaStats()
	print('Atacando...')
	
	if speed() < statsRequeridosFarm and ki() >= kiRequerido() and not activadaSpeed and player() then
		masSpeed() 
		activadaSpeed = true
	end

    if (speed() >= statsRequeridosFarm and activadaSpeed) or (ki() < kiRequerido() and activadaSpeed) or (not player() and activadaSpeed) then
		cancelarSpeed() 
		cancelarSpeed() 
		activadaSpeed = false
	end

	masFuerza()
	task.wait()
	masEnergy()
	task.wait()
	masDefensa()
	task.wait()
end

local function aver(enlace)
    return loadstring(game:HttpGet(enlace))()
end

local function flyi()
	aver('https://raw.githubusercontent.com/CBJ-Yael/volarFly/main/validarFly.lua')
end

local function esperandoCargaxd()

	if (speed() >= statsRequeridosFarm and activadaSpeed) or (ki() < kiRequerido() and activadaSpeed) or (not player() and activadaSpeed) then
		cancelarSpeed() 
		cancelarSpeed() 
		activadaSpeed = false
	end

	masCarga() 
	repeat
		wait()
		warn('Esperando mas ki')
	until ki() >= kiTotal() or not player()
	warn('Ki completado o estas muerto!')
	task.wait()
	cancelarCarga()
	cancelarCarga()
end

local function acumularStats()
	repeat
		wait()
		print('Esperando vida....')
	until player() 
	task.wait()

		   while bucleActivo and valorMinimo() < statsRequeridosFarm do
		
		cargaAndBloqueo = false

		print('Tienes pocas estadisticas')

		
		if ki() >= kiRequerido() then
			ataquesParaStats()
		else
			esperandoCargaxd()
		end
	end
	print('Tienes estadisticas suficientes!')
	cargaAndBloqueo = true
end

local function validacionVida()
	aver('https://raw.githubusercontent.com/CBJ-Yael/holasaludos/main/saludos.lua')
end

function empezarQuest(array) 
	acumularStats() 
	task.wait()

	validacionPlanetas()

	local enemigo = iteradorQuest(array)

	print('Enemigo seleccionado')

		   while bucleActivo and misionSeleccionada() ~= enemigo and player() do
		wait()
		print('Ejecutando quest')
		events.Qaction:InvokeServer(game:GetService("Workspace").Others.NPCs[enemigo])
	end
end

function rival(array)
	local enemigo = iteradorQuest(array)

	for indice, v in ipairs(game:GetService("Workspace").Living:GetChildren()) do
		if enemigo == v.Name then
			return v
		end
	end
end

function mision()
	print('Seleccionando mision')
	if noTierraID() then
		print('Estas en bills')
		empezarQuest('bossBills')
	else
		print('Estas en la tierra')
		empezarQuest('bossEarth')
	end
end

function misionRival()
	local buscador

	if noTierraID() then
		buscador = rival('bossBills')
	else
		buscador = rival('bossEarth')
	end

	return buscador
end

function empezarFarm() 
	fly()
		   while bucleActivo and true do
		pcall(function()
			if player() then
				rebirth() 

				warn('estadisticas elegidas '..tostring(statsRequeridosFarm))

				transformarse('fases')

				print('Tranformacion ejecutada')
				mision()

				print('Mision seleccionada')

				local enemigo = misionRival()

				statsPlayerFarmSa = flyi

				print('Enemigo: '..enemigo.Name)

				local function frameEnemigo()
					return enemigo.HumanoidRootPart.CFrame
				end
				pcall(function ()
					validacionVida()
				end)
				local function vidaEnemigo()
					return enemigo.Humanoid.Health > 0
				end

				   while bucleActivo and enemigo:FindFirstChild("Humanoid") and vidaEnemigo() and player() do
					pcall(function()
						spawn(function() 
							sigueEnemigo(frameEnemigo() * CFrame.new(0, 0, 1))
							pcall(function ()
								statsPlayerFarmSa()
							end)
						end)
						spawn(function() 
							if ki() >= kiRequerido() and valorMinimo() >= 4000 then
								ataqueEnergy(frameEnemigo(), vidaEnemigo())
								wait(1)
							else
								game:GetService("ReplicatedStorage").Package.Events.p:FireServer("Blacknwhite27", 1)
							end
						end)
						spawn(function()
								local args = {[1] = true}
					game:GetService("ReplicatedStorage").Package.Events.block:InvokeServer(unpack(args))
				
							if ki() >= kiRequerido() and valorMinimo() >= 2000 then
								ataqueMelee(vidaEnemigo())
							end
						end)
						spawn(function()
							if selectedForm() ~= valorFase() or selectedForm() == '' or valorFase() == '' then
                                transformarse('fases');
							end
						end)
					end)
					wait()
				end
				if misionSeleccionada() == '' then
					wait(2)
				end
				if yo.Character.Humanoid.Health <= 0 then
					repeat
						wait()
					until yo.Character.Humanoid.Health > 0
					wait(1)
					fly()
				end
			end
		end)
		wait()
	end
end


print('Loading game VERSION ACTUALIZADA 5.0.0'..' XD puto el que este viendo esto y me este ofendiendo el hijo de perra, bien que usas mi script verdad pedazo de mierda?')
wait()

yo.Idled:Connect(function() 
	afk:CaptureController()
	afk:ClickButton2(Vector2.new())
end)


empezarFarm()

 
    end
end)
end
coroutine.wrap(PGPDYH_fake_script)()
local function QMIKYEO_fake_script() -- usuario.Script 
	local script = Instance.new('Script', usuario)

	wait()
	local player = game.Players.LocalPlayer
	local tetxo = script.Parent
	
	tetxo.Text = player.Name
end

 


    local BarraGui = Instance.new("ScreenGui")
    BarraGui.Name = "BarraGui"
    BarraGui.Parent = game.CoreGui

    local BarraFrame = Instance.new("Frame")
    BarraFrame.Size = UDim2.new(0.1, 0, 0.03, 0)
    BarraFrame.Position = UDim2.new(0.01, 0, 0.01, 0)
    BarraFrame.BackgroundColor3 = Color3.new(0, 1, 0) -- Color verde
    BarraFrame.BorderSizePixel = 2
    BarraFrame.BorderColor3 = Color3.new(1, 1, 1)
    BarraFrame.Parent = BarraGui

    local NumerosLabel = Instance.new("TextLabel")
    NumerosLabel.Size = UDim2.new(1, 0, 1, 0)
    NumerosLabel.Position = UDim2.new(0, 0, 0, 0)
    NumerosLabel.BackgroundColor3 = Color3.new(0, 0, 0)
    NumerosLabel.BackgroundTransparency = 0.5
    NumerosLabel.BorderSizePixel = 2
    NumerosLabel.BorderColor3 = Color3.new(1, 1, 1)
    NumerosLabel.Font = Enum.Font.SourceSansBold
    NumerosLabel.TextSize = 14
    NumerosLabel.TextColor3 = Color3.new(1, 1, 1)
    NumerosLabel.Parent = BarraFrame

    local keyInfo = obtenerInfoClave()
    local tiempoRestanteEnSegundos = 0

    if keyInfo and keyInfo.KeyEntered then
        local tiempoTranscurrido = os.time() - keyInfo.DateEntered
        local tiempoLimite = 24 * 60 * 60 -- 24 horas en segundos

        tiempoRestanteEnSegundos = math.max(0, tiempoLimite - tiempoTranscurrido)
    end

    local function actualizarNumerosLabel()
        local horasRestantes = math.floor(tiempoRestanteEnSegundos / 2700)
        local minutosRestantes = math.floor((tiempoRestanteEnSegundos % 2700) / 60)
        local segundosRestantes = tiempoRestanteEnSegundos % 60

        NumerosLabel.Text = string.format("%02d:%02d:%02d", horasRestantes, minutosRestantes, segundosRestantes)
    end

    actualizarNumerosLabel()

    spawn(function()
        while tiempoRestanteEnSegundos > 0 do
            wait(1) -- Esperar un segundo
            tiempoRestanteEnSegundos = tiempoRestanteEnSegundos - 1
            actualizarNumerosLabel()
        end
        BarraGui:Destroy()
        -- Volver a pedir la clave cuando se acabe el tiempo
        mostrarInterfazClave()
    end)

  

end

-- Lógica principal
if KeySystem then
    local keyInfo = obtenerInfoClave()
    if keyInfo and keyInfo.KeyEntered then
        local tiempoTranscurrido = os.time() - keyInfo.DateEntered
        local tiempoLimite = 24 * 60 * 60 -- 24 horas en segundos
        if tiempoTranscurrido <= tiempoLimite then
            abrirMenuOriginal()
        else
            mostrarInterfazClave()
        end
    else
        mostrarInterfazClave()
    end
else
    abrirMenuOriginal()
end
