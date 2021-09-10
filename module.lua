module = {}

module.constant = "this is a constant"

-- public function
function module.func1()
    print("func1")
end

-- private function
local function func2()
    print("func2")
end

return module

