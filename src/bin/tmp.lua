--[[
add this for some api maby

local function getTitle()
    local elements = root("head title")
    for _, element in ipairs(elements) do
        return removeHtmlFuckery(element:textonly())
    end
end

local function getAllH1()
    local h1s = {}
    local elements = root("h1")
    for _, element in ipairs(elements) do
        table.insert(h1s, removeHtmlFuckery(element:textonly()))
    end
    return h1s
end



print(getTitle())
print()

for _, title in ipairs(getAllH1()) do
    print(title)
end

print("----------------------------")
]]
