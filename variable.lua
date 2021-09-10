-- var1.lua

a = 5				-- global
local b = 5			-- local

function joke()
	c = 5			-- global
	local d = 6		-- local
end

joke()
print(c, d)			-- 5 nil

do
	local a = 6
	b = 6
	print(a, b)		-- 6 6
end

print(a,b)			-- 5 6


sites = {}
sites["mysite"] = "www.google.com"
print(sites["mysite"])
print(sites.mysite)
