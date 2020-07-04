RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]
    player = GetPlayerName(source)

    -- Comprobamos que los args no vengan vacios
    if theArgs then
        -- Creamos una tabla para almacenar los numeros que pasan por args
        numeros = {}
        -- Filtramos por un - y metemos los valores en la tabla divididos
        for num in theArgs:gmatch('[^-%s]+') do
            table.insert(numeros, num)
        end

        -- Transformamos los elementos de la tabla en 'number' y los asignamos a variables
        num1 = tonumber(numeros[1])
        num2 = tonumber(numeros[2])

        -- Comprobamos que los valores que lleguen sean numbers y no strings o otro tipo de variable
        if type(num1) == "number" and type(num2) == "number" then
            -- Generamos un numero aleatorio entre ambos
            resultado = math.random(num1, num2)
            -- Agregamos un mensaje (De momento es solo local)
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {"Dados:", "Resultado: " .. resultado}
              })
        else
            -- En caso de no ser 'number' retornamos un mensaje de error
            TriggerEvent('chat:addMessage', {
                color = { 255, 0, 0},
                multiline = true,
                args = {"Error:", "Usa el comando asi: /dados ej: 1-12"}
              })
        end
    -- En caso de no recibir args, retornamos un msg de ayuda
    else 
        TriggerEvent('chat:addMessage', {
            color = { 0, 255, 0},
            multiline = true,
            args = {"Ayuda:", "Usa el comando asi: /dados ej: 1-12"}
          })
    end
    
    end, false
)

