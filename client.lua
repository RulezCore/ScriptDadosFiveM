RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        num1, num2 = theArgs:match("([^-]+),([^-]+)")
        print(num1)
        print(num2)
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


