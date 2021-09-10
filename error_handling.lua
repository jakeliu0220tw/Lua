-- use assert to check parameters
local function add(a,b)
    assert(type(a) == "number", "param a is not a number")
    assert(type(b) == "number", "param b is not a number")
    return (a+b)
end

print("3+4="..add(3,4))


-- below code is the demo of pcall (protected call) of lua
-- if pcall(function_name, ...) then 
--     no error happened
-- else
--     some error happened
-- end
-- pcall will return true if no error happened

function myfunc1(i)
    print(i)
end
ret = pcall(myfunc1, 1)
print(ret)

function myfunc2(i)
    error("some errors ...")
end
ret = pcall(myfunc2, 1)
print(ret)

-- demo of xpcall and error handling function
function myfunc3()
    local n = 0 / nil
end

function myerrorhandler(err)
    print("Error:" .. err)
end

ret = xpcall(myfunc3, myerrorhandler)
print(ret)

