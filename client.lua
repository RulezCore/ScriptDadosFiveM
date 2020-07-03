RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        print(theArgs)
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


