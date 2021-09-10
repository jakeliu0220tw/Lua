-- function_test.lua
function fac(n)
	if n == 0 then
		return 1
	else
		return n*fac(n-1)
	end
end

print(fac(5))
fac2 = fac
print(fac2(5))


-- simple function
function max(num1, num2)
    if (num1 > num2) then
        return num1
    else
        return num2
    end
end

print(max(2,4))
print(max(-1,-100))

-- function could be treated as variable
myprint = function(param)
    print(param)
end

myprint(199)


-- function could return multiple values
_begin, _end = string.find("www.google.com", "google")
print(_begin, _end)


-- function could accept unknown length arguments "..."
function myadd(...)
    local sum = 0
    local args = {...}
    for k,v in ipairs(args) do
        sum = sum + v
    end
    return sum
end

print(myadd(1,2,3,4,5))


-- select vs unknown length arguments "..."
function myfunc(...)
    local len = select("#", ...)
    print("len=" .. len)
    for i=1, len do
        local arg = select(i, ...)
        print("idx:"..i.." -> "..arg)
    end
end

myfunc(11, 22, 33, 44)


function testFun(tab, fun)
	for k,v in pairs(tab) do
		print(fun(k,v));
	end
end

function myfunc(key,value)
	return key .." : " .. value;
end

tab = { key1="val1", key2="val2" }
testFun(tab, myfunc)