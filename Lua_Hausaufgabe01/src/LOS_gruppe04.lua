--function Enum(t)
  --local _name = t[1]
  --local table = {}
  
  --local newClass = {
    
  
 -- }
  
   
--end

function Class (t)

  local o = {} -- local object 
  local name = t[1]
  
  --local objecttable = {}
  --setmetatable(o,table)
  _G[name] = o
     
  
  
  function o:create()
    local ob ={}
    setmetatable = {ob,self}
    self._index = self
    return ob
  end
  
  return o
end