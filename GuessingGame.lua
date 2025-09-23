playAgain = "y"
hiddenNum = 0
inputNum = nil

while playAgain ~= "n" do

    hiddenNum = math.random(1, 100)

    for i = 1, 7, 1 do

        print("\nWhat number am I thinking of (1-100): ")
        inputNum  = tonumber(io.read())

        while inputNum == nil or inputNum > 100 or inputNum < 1 do
            print("Incorrect input, Enter a number between 1 amd 100: ")
            inputNum  = tonumber(io.read())
        end

        if inputNum == hiddenNum then
            print("Congrats! You guessed Correctly at ".. i .."/7 tries!")
            break
        elseif inputNum > hiddenNum then 
            print("Your Number is too high, you have ".. 7 - i .." tries left")
        elseif inputNum < hiddenNum then 
            print("Your Number is too low, you have ".. 7 - i .." tries left")
        end
        if i == 7 then
            print("\nToo bad, the number was " .. hiddenNum)
        end
    end
    
    print("\nTo end game type 'n'")
    playAgain = string.lower(io.read())
end