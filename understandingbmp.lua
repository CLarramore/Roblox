local utils = assert(LoadLibrary("RbxUtility"))
t = ""  

function parsefile(url)
local file=game:service'HttpService':GetAsync(url,true)
for i=1,#file do
local c = file:sub(i,i)
c = tonumber(c:byte() or 0)
t = t..c
end
--[[print(tostring(file))
a = utils.DecodeJSON(file)
print(type(a),a)
]]
end

parsefile('http://www.stratos.me/wp-content/uploads/2008/04/test_empty.bmp')

print(t,"worked")
