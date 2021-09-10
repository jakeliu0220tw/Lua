-- if else statement
a = 10;
if (a < 20) then
    print("a < 20 is true")
else
    print("a < 20 is false")
end

print("a = " .. a)

if (a == 5) then
    print("a == 5")
elseif (a == 10) then
    print("a == 10")
elseif (a == 20) then
    print("a == 20")
else
    print("a is not one of them ... 5, 10, 20")
end