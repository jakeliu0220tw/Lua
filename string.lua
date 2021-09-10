-- string
str1 = "Lua1"
str2 = 'Lua2'
str3 = [["Lua3"]]

print(str1)
print(str2)
print(str3)

-- replace string
str = string.gsub("aaaaaa", "a", "b")
print(str)

-- forece to upper case
str = string.upper(str)
print(str)

-- force to lower case
str = string.lower(str)
print(str)

-- string find and return idx
idx = string.find("hello lua user", "lua")
print(idx)

-- reverse string
str = string.reverse("Lua")
print(str)

-- string.gmatch(str, pattern)
for w in string.gmatch("hello lua user", "%a+") do
    print(w)
end

