RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        local result = mw.text.split(theArgs,"-")
        print(result[0] .. result[1])
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


