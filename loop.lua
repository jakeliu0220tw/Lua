-- while loop
a = 10
while(a>0)
do
	print(a)
	a = a-1
end


-- for loop
for i=1, 10 do
	print("i=" .. i)
end

-- each loop
a = {"1", "2", "3"}
for k,v in ipairs(a) do
	print(k, v)
end

-- repeat loop
a = 10
repeat
	print("a="..a)
	a = a - 1
until(a<0)

