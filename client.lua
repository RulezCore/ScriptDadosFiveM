RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        numeros = {}
        for num in theArgs:gmatch('[^-%s]+') do
            table.insert(numeros, num)
        end

        print(numeros)
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


