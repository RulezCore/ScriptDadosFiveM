RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        print(type(theArgs))
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


