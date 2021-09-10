-- operator examples

a = 21
b = 10

-- equal
if (a == b) then 
    print("a == b")
end

-- not equal
if (a ~= b) then
    print("a ~= b")
end

-- logical operator
a = true
b = true
if (a and b) then
    print("a and b -> true")
end

if (a or b) then
    print("a or b -> true")
end

a = false
b = true

if (not(a and b)) then
    print("not(a and b) -> true")
end

-- # and ..
a = "hello"
b = "world"
print("how to use ..")
print(a .. " " .. b)
print("len of hello: " .. #a)
print("len of world: " .. #b)
