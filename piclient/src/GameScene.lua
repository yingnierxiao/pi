require "Cocos2d"
require "Cocos2dConstants"
local jsokect = require "JSocket"
local proto = require "protopack"


local GameScene = class("GameScene",function()
    return cc.Scene:create()
end)

function GameScene.create()
    local scene = GameScene.new()
    return scene
end


function GameScene:ctor()
    local visibleSize = cc.Director:getInstance():getVisibleSize()
    local origin = cc.Director:getInstance():getVisibleOrigin()
    
    self.socket = jsokect.new()
    
    self.socket:connect("127.0.0.1",8888)
    
   
    --cc.Sprite
    local jc = Joystick:create("pan.png","dot.png")
    
    self:addChild(jc)
    jc:setPosition(cc.p(150,150))
    jc:setDieRadius(visibleSize.width/2)
--    jc:setAutoPosition(false)
    jc:onRun()
    jc:addEventListener(function (dir) 
        print(1,dir)
        self.socket:send(proto.pack(1,dir..""))
    end )
    
    local jc2 = Joystick:create("pan.png","dot.png")

    self:addChild(jc2)
    jc2:setPosition(cc.p(visibleSize.width-150,150))
    jc2:setDieRadius(visibleSize.width/2)
--    jc2:setAutoPosition(false)
    jc2:onRun()
    jc2:addEventListener(function (dir)
         print(2,dir)
        self.socket:send(proto.pack(2,dir..""))
    end )
    
end

return GameScene
