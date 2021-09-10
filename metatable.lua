-- demo of metatable & metamethod
mytable = setmetatable( {key1 = "val1"}, {
    __index = function(mytable, key)
        if key == "key2" then
            return "val2"
        else
            return mytable[key]
        end
    end
})

print(mytable.key1)
print(mytable.key2)

-- another version
mytable = setmetatable({key1 = "val1"},{
    __index = {key2 = "val2"}
})

print(mytable.key1)
print(mytable.key2)

-- adding operator "+"
mytable = setmetatable({1, 2, 3}, {
    __add = function(mytable, newtable)
        for i=1, #newtable do
            table.insert(mytable, #mytable+1, newtable[i])
        end
        return mytable
    end
})

secondtable = {4, 5, 6}
newtable = mytable + secondtable
print("mytable + secondtable")
for k,v in pairs(newtable) do
    print(k, v)
end

-- tostring operator
print("tostring operator")
mytable = setmetatable({10, 20, 30}, {
    __tostring = function(mytable)
        sum = 0
        for k,v in pairs(mytable) do
            print(k, v)
            sum = sum + v
        end
    end
})

print(mytable)

