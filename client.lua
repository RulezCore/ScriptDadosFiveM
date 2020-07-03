RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        numeros = {}
        for num in theArgs:gmatch('[^-%s]+') do
            table.insert(numeros, num)
        end

        resultado = math.random(numeros[1], numeros[2])
        print(resultado)
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


