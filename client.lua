RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        for num in theArgs:gmatch('[^-%s]+') do
            print(num .. '/')
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


