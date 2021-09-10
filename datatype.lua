print(type("HelloWorld"))	-- string
print(type(10.4*3))			-- number
print(type(print))			-- function
print(type(type))			-- function
print(type(true))			-- boolean
print(type(nil))			-- nil


tab1 = { key1 = "val1", key2 = "val2", "val3" }
for k,v in pairs(tab1) do
	print(k .. " -> " .. v)
end

tab1.key1 = nil
for k,v in pairs(tab1) do
	print(k .. " -> " .. v)
end

if false or nil then
	print("至少有一個true")
else
	print("false和nil都是false")
end

if 0 then
	print("0 is true")
else
	print("0 is false")
end

str1 = "this is string1"
str2 = 'this is string2'
print(str1)
print(str2)

html = [[
<html>
<head></head>
<body>
    <a href="http://www.runoob.com/">菜鳥教程</a>
</body>
</html>
]]
print(html)

print("2"+6)
print("2"+"6")

print("a" .. "b")
print(123 .. 456)


str = "www.google.com"
print(#str)







