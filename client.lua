RegisterCommand('dados', function(source, args, rawCommand)
    if args[1] and args[3] then
        print('Los argumentos son: ' .. args[1] .. '-' .. args[3])
    
    end, false
)


