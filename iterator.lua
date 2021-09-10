-- iterator
array = { "google", "facebook", "apple", "netflix", "microsoft"}
for k,v in pairs(array) do
    print("idx:"..k.." -> "..v)
end

for k,v in ipairs(array) do
    print(k, v)
end

-- iterator function
function elementIterator(collection)
    local idx = 0
    local max_count = #collection
    return function()
        idx = idx + 1
        if idx <= max_count then
            return collection[idx]
        end
        return nil
    end
end

for e in elementIterator(array) do
    print(e)
end

