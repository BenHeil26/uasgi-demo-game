--- @class Scene base class for Scenes, should not be used directly
local Scene = {}

--- Creates a new scene object, should never be invoked directly
--- @return Scene
function Scene:new()
  local instance = setmetatable({}, self)
  self.__index = self
  return instance
end

--- Runs the update loop
--- @param dt number the time elapsed since the last update in seconds
function Scene:update(dt)
end

--- Runes the draw loop
--- @param dt number the time elapsed since the last draw loop in seconds
function Scene:draw(dt)
end

--- Loads the scene, scenes are stored as a singleton so this should fully clean and initialize the scene
function Scene:load()
end

return Scene
