--#1
--[[print("Enter a phrase: ");
phrase = io.read();
print(string.upper(phrase));]]

--#2
--[[local check = false

while check == false do

print("Enter first number: ");
n1 = io.read();

print("Enter second number: ");
n2 = io.read();

if type(n1) == "number" and type(n2) == "number" then
    check = true;
end
end

print("Sum: " , (n1 + n2));]]

--#3
--[[contin = "Y"
total = 0;
newNumber = 0

while contin ~= "n" do
    print("Enter a Number to add: ")
    newNumber  = tonumber(io.read())

    while newNumber == nil do
        print("Incorrect input, Enter a Number to add: ")
        newNumber  = tonumber(io.read())
    end

    total = total + newNumber
    print("To end type n")
    contin = io.read()
end

print("The Total is: "..total)]]

--#4
--[[playAgain = "y"
maxNum = 0

print("Enter the Maximum random number: ")
maxNum  = tonumber(io.read())

while maxNum == nil do
    print("Incorrect input, Enter the Maximum random number: ")
    maxNum  = tonumber(io.read())
end

while playAgain ~= "n" do
    print(math.random(0, maxNum))
    print("To end type n")
    playAgain = string.lower(io.read())
end]]

--#5
num = 0;
lNum = 0
rNum = 0

for i = 1,10,1 do
    num = math.random(100)

    if num % 2 == 0 then
        print("RIGHT")
        rNum = rNum + 1
    elseif num % 2 == 1 then
        print("LEFT")
        lNum = lNum + 1
    end
end

print("Rights: ".. rNum)
print("Lefts: ".. lNum)




