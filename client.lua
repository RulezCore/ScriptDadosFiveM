RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]
    player = GetPlayerName(source)

    if theArgs then
        numeros = {}
        for num in theArgs:gmatch('[^-%s]+') do
            table.insert(numeros, num)
        end

        resultado = math.random(numeros[1], numeros[2])
        print(resultado)
    else 
        TriggerEvent('chat:addMessage', {
            color = { 255, 0, 0},
            multiline = true,
            args = {player, "Usa el comando asi: /dados 1-12"}
          })
    end
    
    end, false
)

