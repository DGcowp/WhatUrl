local data = {}

if not arg[1] then error("You must pass the name of the file you want to parse as an argument") end
data.file = assert(io.open(arg[1],"r"), "No file called".. arg[1] "found")

data.lines = 0
for _ in data.file:lines() do
    data.lines = data.lines + 1
end

data.file:seek("set")
local matches = {}    
for line in data.file:lines() do
    local date, time, user, message = line:match("^(%d+/%d+/%d+), (%d+:%d+) %- ([^:]+): (.+)$")
    if message then
        local url = line:match("https?://(([%w_.~!*:@&+$/?%%#-]-)(%w[-.%w]*%.)(%w%w%w?%w?)(:?)(%d*)(/?)([%w_.~!*:@&+$/?%%#=-]*))") --pattern taken from https://forums.indigorose.com/forum/autoplay-media-studio-8-5/autoplay-media-studio-8-discussion/299325-pattern-matching-for-valid-urls/page2
        if url then
            table.insert(matches, date .. "," .. time .. "," .. user .. "," .. url)
        end
    end
end


local output = assert(io.open("output.csv", "w"))
for i, v in ipairs(matches) do
        output:write(v, "\n")
end


data.file:close()

