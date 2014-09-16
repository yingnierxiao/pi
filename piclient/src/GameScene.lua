require "Cocos2d"
require "Cocos2dConstants"
local jsokect = require "JSocket"


local GameScene = class("GameScene",function()
    return cc.Scene:create()
end)

function GameScene.create()
    local scene = GameScene.new()
    return scene
end


function GameScene:ctor()
    self.visibleSize = cc.Director:getInstance():getVisibleSize()
    self.origin = cc.Director:getInstance():getVisibleOrigin()
    self.schedulerID = nil
    
    self.socket = jsokect.new()
    
    self.socket:connect("127.0.0.1",8888)
    
    local jc = Joystick:create("pan.png","dot.png")
    
    self:addChild(jc)
    jc:setPosition(cc.p(400,300))
    
    jc:setAutoPosition(true)
    jc:onRun()
    jc:addEventListener(function (dir) print(dir)
        self.socket:send()
    
     end )
    
end

return GameScene
