local HitObjects = {}

local function Add(a, b, c, d)
  table.insert(HitObjects, a, {
    Use = false, 
    New = b, 
    PositionX = c,
    PositionY = d,
  })
end 

local function Parse(Song)
  for i,v in pairs(string.split(Song, '\n') do 
    if string.subg(v, -1, -1) == ':' and string.sub() then 
      local Split = string.split(v, ',') 
      if Split[4] == '2' then 
        Add(Split[3], true, Split[1], Split[2]) 
      else 
        Add(Split[3], false, Split[1], Split[2]) 
      end
    end
  end
end   
