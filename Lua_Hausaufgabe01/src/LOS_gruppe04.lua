enumvaluemt = {
  _tostring = function(t)
    return t._values
  end
}

function Enum(t)
  local enumname = t[1]
  --local enumvalue = {}
  local enum = {_name = name, _value = {}}
  
  local enumvalue = t[2]
  for k,v in pairs(enumvalue) do
    local enumvaluetable = {_name = enum, _values = v}
    setmetatable(enumvaluetable,enumvaluemt)
    enum._value[v] = enumvaluetable
  end
end


local _classmt, attributevaluemt

-- Metatable for classes
_classmt = {

  __index = function(t,k)
  return t._attribut[k]
  end,

  __tostring = function( t )
    return t._name
  end

}

attributevaluemt = {

  __tostring = function( t )
    return t._value
  end

}

function Class (t)

  local name = t[1]
  
  local newOb = {_name = name, _attribut={}} -- local object
  
   if(t[2] ~= nil) then     -- if the attribute is nil
    local attributes = t[2]
   
    for k,v in pairs[attributes] do
    
    local attributevalue = {_name = newOb , _values = v}
    setmetatable(attributevalue, attributevaluemt)
    newOb._attribut[v] = attributevalue
    
    end
  end
  
   _G[name] = newOb
  setmetatable(newOb, _classmt)   
  
  -- function to create sub object 
  function newOb:create()
    local ob ={}
    setmetatable = {ob,self}
    self._index = self
    return ob
  end
  
  return newOb
end