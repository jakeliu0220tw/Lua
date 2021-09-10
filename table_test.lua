-- key & value in table
a = {}
a["key"] = "value"
key = 10
a[key] = 22
a[key] = a[key] + 11
for k,v in pairs(a) do
	print(k .. " : " .. v)
end

-- assign value to table
a3 = {}
for i=1, 10 do
	a3[i] = i
end

for k,v in pairs(a3) do
	print(k .. " : " .. v)
end
