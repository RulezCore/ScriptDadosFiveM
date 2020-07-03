RegisterCommand('dados', function(source, args, rawCommand)
    theArgs = args[1]

    if theArgs then
        nums = {}
        for i,num in theArgs:gmatch('[^-%s]+') do
            table.insert(nums, num)
        end

        print('Numero 1: ' .. nums[0] .. 'Numero 2: ' .. nums[1])
    else 
        print('Comeme un huevo')
    end
    
    end, false
)


