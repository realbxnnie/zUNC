-- [[  CONSTANTS  ]] --

local FUNCTIONS = 0
local SUCCESS = 0
local UNDEFINED = 0
local FAILED = 0

-- [[ || MACROS || ]] --

function DEBUG_SUCCESS(fn: string)
    print(`✅ {fn}`)
end
function DEBUG_WARN(fn: string)
    warn(`⚠️ {fn}`)
end
function DEBUG_FAIL(fn: string)
    warn(`⛔ {fn}`)
end
function DEBUG_UNDEFINED(fn: string)
    print(`⏺️ {fn}`)
end
function DEBUG_TEST(fn: string, callback: (any) -> any, native_fn: (any) -> any)
    FUNCTIONS += 1
    if not callback then
        if not native_fn then
            FAILED += 1
            DEBUG_FAIL(fn)
        else
            SUCCESS += 1
            UNDEFINED += 1
            DEBUG_UNDEFINED(fn)
        end
        return
    end

    local success, result = pcall(callback)
    if not result then
        SUCCESS += 1
        DEBUG_SUCCESS(fn)
    else
        FAILED += 1
        DEBUG_FAIL(fn .. " | " .. result)
    end
end

-- [[ ||  CODE  || ]]  --

local emoji = "😎"
local ceil = math.ceil
local floor = math.floor 

local tmp = {

}

local identity = ""
local taken = tick()

print("\n")

print("zUNC Environment Check")
print("✅ - Pass, ⛔ - Fail, ⏺️ - No test\n")

DEBUG_TEST("cloneref", function()
    assert(cloneref, "Doesn't exist")
	local part = Instance.new("Part")
	local clone = cloneref(part)
    if part == clone then
        return "Clone should not be equal to original"
    end
	clone.Name = "Test"
    if clone.Name ~= "Test" then
        return "Clone should have been updated"
    end
end)

DEBUG_TEST("clonefunction", function()
    assert(clonefunction, "Doesn't exist")
	local func = function()
        return 5
    end
    local cloned = clonefunction(func)
    if func == cloned then
        return "Clone should not be equal to original"
    end
end)

DEBUG_TEST("loadstring", function()
    assert(loadstring, "Doesn't exist")
    -- Simple loadstring --
    local re = loadstring("return 1")()
    if re ~= 1 then
        return "can't even execute a simple code???"
    end
    -- Middle loadstring --
    local re = loadstring("return 'H'..'e'..'l'..'l'..'o'..' '..'W'..'o'..'r'..'l'..'d'")()
    if re ~= 'Hello World' then
        return "can't execute a string-concatenating code? well.."
    end
    -- Hard loadstring --
    local re = loadstring([[o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'o='UVQ2HCE98dhcASUDCjxpAWE'return 'Hello World']])()
    if re ~= 'Hello World' then
        return "can't execute garbage-filled code. safety on top 🤣"
    end
end)

DEBUG_TEST("getgenv", function()
    assert(getgenv, "Doesn't exist")
    getgenv().BA = true
    getgenv().AB = true
    if not BA and not AB then
        return "fake global env?? ok"
    end
    getgenv().BA = nil
    getgenv().AB = nil
end)

DEBUG_TEST("getrenv", function()
    assert(getrenv, "Doesn't exist")
    if getrenv()._G == _G then 
        return "whyyyy real environment's _G is the game's environment _G"
    end
    if getrenv().shared == shared then 
        return "getrenv().shared = shared????? bro"
    end
end)

DEBUG_TEST("getsenv", function()
    assert(getsenv, "Doesn't exist")
    
    local s = game.Players.LocalPlayer.Character.Animate
    if getsenv(s).script == nil or getsenv(s).script ~= s then
        return "script environment's script is not matching the actual script..."
    end
    if typeof(getsenv(s)) ~= "table" then
        return "why the type of script environment isn't a table??"
    end
    if not getsenv(s) then
        return "faked.."
    end

end)

task.wait(0.1)

DEBUG_TEST("setfpscap", function()
    assert(setfpscap, "Doesn't exist")
    local renderStepped = game:GetService("RunService").RenderStepped
	local function step()
		renderStepped:Wait()
		local sum = 0
		for _ = 1, 5 do
			sum += 1 / renderStepped:Wait()
		end
		return math.round(sum / 5)
	end
	setfpscap(60)
	local step60 = step()
    if step60 > 60 then
        return "the fps is bigger than 60🤩🤣"
    end
	setfpscap(240)
	local step240 = step()
end)


DEBUG_TEST("isrbxactive", function()
    assert(isrbxactive, "Doesn't exist")
    if isrbxactive() == nil then
        return "faked broooooo"
    end
end)

DEBUG_TEST("buffer", function()
    assert(buffer, "Doesn't exist")
    if typeof(buffer.fromstring("test")) ~= "buffer" then
        return "fake buffer LOL"
    end
end)

DEBUG_TEST("rconsolecreate", function()
    assert(rconsolecreate, "Doesn't exist")
    rconsolecreate()
end)

DEBUG_TEST("rconsoleprint", function()
    assert(rconsoleprint, "Doesn't exist")
    rconsoleprint("zUNC Test")
end)

DEBUG_TEST("rconsoleinput", nil, rconsoleinput)

task.wait(0.001)

DEBUG_TEST("rconsoledestroy", function()
    assert(rconsoledestroy, "Doesn't exist")
    rconsoledestroy()
end)

DEBUG_TEST("identifyexecutor", function()
    assert(identifyexecutor, "Doesn't exist")
    if identifyexecutor and not getexecutorname then 
        UNDEFINED += 1
    end
    if identifyexecutor() ~= getexecutorname() then
        return "LOLL FAKED EXECUTOR NAME"
    end
end)

DEBUG_TEST("getexecutorname", function()
    assert(getexecutorname, "Doesn't exist")
    if getexecutorname and not identifyexecutor then 
        UNDEFINED += 1
    end
    if getexecutorname() ~= identifyexecutor() then
        return "LOLL FAKED EXECUTOR NAME"
    end
end)

DEBUG_TEST("saveinstance", function()
    assert(saveinstance, "Doesn't exist")
end)

DEBUG_TEST("fireclickdetector", function()
    assert(fireclickdetector, "Doesn't exist")
    local cd = Instance.new("ClickDetector")
    local a = 0
    cd.MouseClick:Connect(function()
        a = 1
    end)
    fireclickdetector(cd, 32)
    if a ~= 1 then
        return "the function did nothing lol"
    end
    cd:Destroy()
end)

DEBUG_TEST("setreadonly", function()
    assert(setreadonly, "Doesn't exist")
    tmp.readonly = {foo="bar"}
    setreadonly(tmp.readonly, true)
end)

DEBUG_TEST("isreadonly", function()
    assert(isreadonly, "Doesn't exist")
    if not isreadonly(tmp.readonly) then
        return "hmm why the table isn't read-only????"
    end
end)

DEBUG_TEST("setrawmetatable", function()
    assert(setrawmetatable, "Doesn't exist")
    tmp.rawmt = {

    }
    tmp.rawmt_source = {
        foo = "bar"
    }
    setrawmetatable(tmp.rawmt, tmp.rawmt_source)
end)

DEBUG_TEST("getrawmetatable", function()
    assert(getrawmetatable, "Doesn't exist")
    if not getrawmetatable(tmp.rawmt) then
        return "hmmm getrawmetatable returns nil.."
    end
end)

DEBUG_TEST("mouse1click", nil, mouse1click)
DEBUG_TEST("mouse1press", nil, mouse1press)
DEBUG_TEST("mouse1release", nil, mouse1release)
DEBUG_TEST("mouse2click", nil, mouse2click)
DEBUG_TEST("mouse2press", nil, mouse2press)
DEBUG_TEST("mouse2release", nil, mouse2release)
DEBUG_TEST("mousemoveabs", function()
    assert(mousemoveabs, "Doesn't exist")
    local a,b = pcall(function()
        return mousemoveabs(nil,nil)
    end)
    if a then 
        return "faked :(("
    end
    mousemoveabs(1, 1)
end)
DEBUG_TEST("mousemoverel", function()
    assert(mousemoverel, "Doesn't exist")
    local a,b = pcall(function()
        return mousemoverel(nil,nil)
    end)
    if a then 
        return "faked :(("
    end
    mousemoverel(1, 1)
end)
DEBUG_TEST("getscriptbytecode", function()
    assert(getscriptbytecode, "Doesn't exist")
    local a,b = pcall(function()
        return getscriptbytecode(nil)
    end)
    if a then 
        return "WHERE'S MY SCRIPT BYTECODE😭😭😭😭"
    end
    local s = Instance.new("LocalScript")
    s.Name = "bytecode_test"
    s.Source = [[
    local a = true
    local b = false
    local c = not a 
    local d = not b
    ]]
    getscriptbytecode(s)
    s:Destroy()
end)
DEBUG_TEST("decompile", function()
    assert(decompile, "Doesn't exist")
    local a,b = pcall(function()
        return decompile(nil)
    end)
    if a and not b:find("Failed to get script bytecode") then 
        return "no scripts anymore?????? 😭😭😭😭"
    end
    local s = Instance.new("LocalScript")
    s.Name = "test decompile"
    s.Source = [[
    local a = true
    local b = false
    local c = not a 
    local d = not b
    ]]
    decompile(s)
    s:Destroy()
end)
DEBUG_TEST("keypress", nil, keypress)
DEBUG_TEST("keyrelease", nil, keyrelease)

DEBUG_TEST("setclipboard", function()
    assert(setclipboard, "Doesn't exist")
    local a,b = pcall(function()
        return setclipboard(nil)
    end)
    if a then
        return "fake setclipboard..."
    end
end)

DEBUG_TEST("mousescroll", nil, mousescroll)
DEBUG_TEST("Drawing", function()
    assert(Drawing, "imagine having no drawing💉")
end)
DEBUG_TEST("Drawing.new", function()
    assert(Drawing.new, "well")
    local d = Drawing.new("Text")
    if typeof(d) ~= "table" then
        return "FAKED DRAWING.NEW WHYYY"
    end
    d:Remove()
end)
DEBUG_TEST("Drawing.Fonts", function()
    assert(Drawing.Fonts, "your executor is something")
    local d = Drawing.Fonts
    if typeof(d) ~= "table" then
        return "hmm.."
    end
    if d.UI ~= 0 then
        return "incorrect UI index :("
    end
    if d.System ~= 1 then
        return "incorrect System INDEX"
    end
    if d.Plex ~= 2 then
        return "broooo incorrect PLEX INDEEEX"
    end
    if d.Monospace ~= 3 then
        return "incorrect monospace index THIS EXECUTOR IS ANNOYING"
    end
end)

DEBUG_TEST("WebSocket", function()
    assert(WebSocket, "no websocket?")
end)

DEBUG_TEST("WebSocket.connect", function()
    assert(WebSocket.connect, "well")
    local ws = WebSocket.connect("ws://echo.websocket.events")
    if type(ws) ~= "table" and type(ws) ~= "userdata" then
        return "faked websocket???"
    end
    ws:Close()
end)

DEBUG_TEST("gethui", function()
    assert(gethui, "goodbye half of scripts!!")
    if gethui() == game.Players.LocalPlayer.PlayerGui then
        return "PLAYERGUI??? IMAGINE..."
    end
end)

DEBUG_TEST("getnilinstances", function()
    assert(getnilinstances, "where's nil instances??")
    if typeof(getnilinstances()) ~= "table" then
        return "why the returned value of getnilinstances() isn't a table??"
    end
    for i,v in getnilinstances() do
        if v.Parent ~= nil then
            return "hmm the parent of a <<nil>> instance isn't nil!!"
        end
    end
end)

DEBUG_TEST("getconnections", function()
    assert(getconnections, "goodbye")
    if typeof(getconnections()) ~= "table" then
        return "why the returned value of getconnections() isn't a table??"
    end
    local CONNECTION_TEST
    CONNECTION_TEST = game.Loaded:Connect(function()
        return "another zunc test"
    end)
    for i,v in getconnections(game.Loaded) do
        if v == CONNECTION_TEST then
            v:Disable()
        end
    end
end)

DEBUG_TEST("request", function()
	local response = request({
		Url = "https://httpbin.org/user-agent",
		Method = "GET",
	})
    if typeof(response) ~= "table" then
        return "hmm why the request is not a table"
    end
    local data = game:GetService("HttpService"):JSONDecode(response.Body)
    if typeof(data) ~= "table" and typeof(data["user-agent"]) ~= "string" then
        return "failed to get a table and a user-agent key!"
    end
    tmp["exec"] = data["user-agent"]
end)

DEBUG_TEST("getgc", function()
    assert(getgc, "Doesn't exist")

    local TEMPORARY_GARBAGE_TEST_ZUNC_0 = {}
    local TEMPORARY_GARBAGE_TEST_ZUNC_1 = TEMPORARY_GARBAGE_TEST_ZUNC_0
    local TEMPORARY_GARBAGE_TEST_ZUNC_2 = TEMPORARY_GARBAGE_TEST_ZUNC_1 

    TEMPORARY_GARBAGE_TEST_ZUNC_2 = nil
	local gc = getgc()

    if typeof(gc) ~= "table" then
        return "hmm where's my table"
    end
    if #gc < 0 then
        return "hmmm no garbage??"
    end

    for i,v in gc do
        if v == "TEMPORARY_GARBAGE_TEST_ZUNC_2" then
            break
        end
    end
end)

DEBUG_TEST("debug", function()
    assert(debug, "no debug lib?????")
end)

DEBUG_TEST("debug.getconstant", function()
    assert(debug.getconstant, "Doesn't exist")
    function test()
        print(10)
      end
      
      local const = debug.getconstant(test,1)
      if const ~= "print" then 
        return "hmmm why the given constant is incorrect??"
      end
end)

DEBUG_TEST("debug.getupvalue", function()
    assert(debug.getupvalue, "Doesn't exist")
    local health = 100

    function takeDamage()
        health = health - 10
    end
    if debug.getupvalue(takeDamage,1) ~= 100 then
        return "hmm the upvalue is incorrect, hmmm..."
    end
end)

DEBUG_TEST("debug.getregistry", function()
    assert(debug.getregistry, "Doesn't exist")
    if debug.getregistry ~= getreg then
        return "probably faked as getreg() isn't the same as debug.getregistry()"
    end
    if #debug.getregistry() < 0 then 
        return "faked"
    end
end)

DEBUG_TEST("getreg", function()
    assert(getreg, "Doesn't exist")
    if getreg ~= debug.getregistry then
        return "probably faked as debug.getregistry() isn't the same as getreg()"
    end
    if #getreg() < 0 then 
        return "faked"
    end
end)

if (SUCCESS / FUNCTIONS * 100) >= 100 then
    emoji = "🔥"
elseif (SUCCESS / FUNCTIONS * 100) <= 80 then
    emoji = "👍"
elseif (SUCCESS / FUNCTIONS * 100) <= 20 then
    emoji = "🤣"
end

print("\n");

print(`{emoji} Summary: {ceil(SUCCESS / FUNCTIONS * 100)}% ({SUCCESS} out of {FUNCTIONS})\n`)
print("⛔ " .. FAILED .. " tests failed")
print("⏺️ " .. UNDEFINED .. " tests ignored")

print("💉 Executor: " .. tmp.exec or identifyexecutor and identifyexecutor() or "undefined" .. "\n")

print("⌛ Time taken: " .. (floor(tick() - taken)) .. "s")
print("©️ Authors: @realbxnnie")