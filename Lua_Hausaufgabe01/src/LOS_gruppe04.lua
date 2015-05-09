local _classmt, _classvaluemt

-- Metatable for classes
_classmt = {

  __index = function(t,k)
  return t._attribut[k]
  end,

  __tostring = function( t )
    return t._name
  end

}

_classvaluemt = {

  __tostring = function( t )
    return t._value
  end

}

function Class (t)

  local name = t[1]
  
  local o = {_name = name, _attribut={}} -- local object
  
  if(t[2] ~= nil) then
  local attributes = t[2]
   
    for k,v in pairs[attributes] do
    
    local attributesvalue = {_name = o , _values = v}
    setmetatable(attributesvalue, _classvaluemt)
    o._attribut[v] = attributesvalue
    
    end
  end
  
  
  _G[name] = o
  setmetatable(o, _classmt)   
  
  
  function o:create()
    local ob ={}
    setmetatable = {ob,self}
    self._index = o
    return ob
  end
  
  return o
end