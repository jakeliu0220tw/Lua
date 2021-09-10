-- array demo

-- idx starts from 1
array = { "lua", "tutorial" }
for i=1, 2 do
    print("i="..i.." -> "..array[i])
end

-- 2 dimension array
array = {}
for i=1, 3 do
    array[i] = {}
    for j=1, 3 do
        array[i][j] = i * j
    end
end
for i=1, 3 do
    for j=1, 3 do
        print(array[i][j])
    end
end


