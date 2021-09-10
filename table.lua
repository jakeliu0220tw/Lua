mytable = {}
print(type(mytable))

mytable[1] = "Lua"
mytable["wow"] = "before"
print(mytable[1])
print(mytable["wow"])

-- newtable and mytable point to the same address
newtable = mytable
print(newtable[1])
print(newtable["wow"])

newtable["wow"] = "after"
print(newtable["wow"])
print(mytable["wow"])

-- free newtable, mytable still work
newtable = nil
print(newtable)
print(mytable["wow"])

-- table.concat
fruits = { "cherry", "orange", "apple", "banana" }
print(table.concat(fruits))
print(table.concat(fruits, ","))

-- table.insert
table.insert(fruits, "mongo")
for k,v in pairs(fruits) do
    print(k, v)
end

-- table.remove
table.remove(fruits)
for k,v in pairs(fruits) do
    print(k, v)
end

-- table.sort
print("before sorting")
for k,v in pairs(fruits) do
    print(k,v)
end
print("after sorting")
table.sort(fruits)
for k,v in pairs(fruits) do
    print(k,v)
end
