RegisterCommand('dados', function(source, args, rawCommand)
    if args then
        print('Los argumentos son: ' .. args[1] .. '-' .. args[3])
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


