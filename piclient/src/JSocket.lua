local SOCKET_TICK_TIME = 0.1 			-- check socket data interval
local SOCKET_RECONNECT_TIME = 5			-- socket reconnect try interval
local SOCKET_CONNECT_FAIL_TIMEOUT = 3	-- socket failure timeout

local STATUS_CLOSED = "closed"
local STATUS_NOT_CONNECTED = "Socket is not connected"
local STATUS_ALREADY_CONNECTED = "already connected"
local STATUS_ALREADY_IN_PROGRESS = "Operation already in progress"
local STATUS_TIMEOUT = "timeout"

local socket = require "socket"
local proto = require "protopack"

local jsocket = class("jsocket")

jsocket.EVENT_DATA = "SOCKET_TCP_DATA"
jsocket.EVENT_CLOSE = "SOCKET_TCP_CLOSE"
jsocket.EVENT_CLOSED = "SOCKET_TCP_CLOSED"
jsocket.EVENT_CONNECTED = "SOCKET_TCP_CONNECTED"
jsocket.EVENT_CONNECT_FAILURE = "SOCKET_TCP_CONNECT_FAILURE"

jsocket._VERSION = socket._VERSION
jsocket._DEBUG = socket._DEBUG

function jsocket.getTime()
	return socket.gettime()
end

function jsocket:ctor(__host, __port, __retryConnectWhenFailure)
	local ext = require "fw.sys.common.EventProtocol"
	ext.extend(self)

    self.host = __host
    self.port = __port
	self.tickScheduler = nil			-- timer for data
	self.reconnectScheduler = nil		-- timer for reconnect
	self.connectTimeTickScheduler = nil	-- timer for connect timeout
	self.name = 'jsocket'
	self.tcp = nil
	self.isRetryConnect = __retryConnectWhenFailure
	self.isConnected = false
end

function jsocket:setName( __name )
	self.name = __name
	return self
end

function jsocket:setTickTime(__time)
	SOCKET_TICK_TIME = __time
	return self
end

function jsocket:setReconnTime(__time)
	SOCKET_RECONNECT_TIME = __time
	return self
end

function jsocket:setConnFailTime(__time)
	SOCKET_CONNECT_FAIL_TIMEOUT = __time
	return self
end

function jsocket:connect(__host, __port, __retryConnectWhenFailure)
	if __host then self.host = __host end
	if __port then self.port = __port end
	if __retryConnectWhenFailure ~= nil then self.isRetryConnect = __retryConnectWhenFailure end
	assert(self.host or self.port, "Host and port are necessary!")
	printf("%s.connect(%s, %d)", self.name, self.host, self.port)
	self.tcp = socket.tcp()
	self.tcp:settimeout(0)
	self.headlen =2;

	local function __checkConnect()
		local __succ = self:_connect()
		if __succ then
			self:_onConnected()
		end
		return __succ
	end

	if not __checkConnect() then
		-- check whether connection is success
		-- the connection is failure if socket isn't connected after SOCKET_CONNECT_FAIL_TIMEOUT seconds
		local __connectTimeTick = function ()
			-- printf("%s.connectTimeTick", self.name)
			if self.isConnected then return end
			self.waitConnect = self.waitConnect or 0
			self.waitConnect = self.waitConnect + SOCKET_TICK_TIME
			if self.waitConnect >= SOCKET_CONNECT_FAIL_TIMEOUT then
				self.waitConnect = nil
				self:close()
				self:_connectFailure()
			end
			__checkConnect()
		end
		self.connectTimeTickScheduler = scheduler.scheduleGlobal(__connectTimeTick, SOCKET_TICK_TIME)
	end
end

function jsocket:send(__data)
	assert(self.isConnected, self.name .. " is not connected.")
	self.tcp:send(__data)
end

function jsocket:close( ... )
	printf("%s.close", self.name)
	self.tcp:close();
	if self.connectTimeTickScheduler then scheduler.unscheduleGlobal(self.connectTimeTickScheduler) end
	if self.tickScheduler then scheduler.unscheduleGlobal(self.tickScheduler) end
	self:dispatchEvent({name=jsocket.EVENT_CLOSE})
end

-- disconnect on user's own initiative.
function jsocket:disconnect()
	self:_disconnect()
	self.isRetryConnect = false -- initiative to disconnect, no reconnect.
end

--------------------
-- private
--------------------

--- When connect a connected socket server, it will return "already connected"
-- @see: http://lua-users.org/lists/lua-l/2009-10/msg00584.html
function jsocket:_connect()
	local __succ, __status = self.tcp:connect(self.host, self.port)
	-- printf("jsocket._connect:", __succ, __status)
	return __succ == 1 or __status == STATUS_ALREADY_CONNECTED
end

function jsocket:_disconnect()
	self.isConnected = false
	self.tcp:shutdown()
	self:dispatchEvent({name=jsocket.EVENT_CLOSED})
end

function jsocket:_onDisconnect()
	--printf("%s._onDisConnect", self.name);
	self.isConnected = false
	self:dispatchEvent({name=jsocket.EVENT_CLOSED})
	self:_reconnect();
end

-- connecte success, cancel the connection timerout timer
function jsocket:_onConnected()
	printf("%s._onConnectd", self.name)
	self.isConnected = true
	self:dispatchEvent({name=jsocket.EVENT_CONNECTED})
	if self.connectTimeTickScheduler then scheduler.unscheduleGlobal(self.connectTimeTickScheduler) end

	local __tick = function()
		local __data ,__status
		if self.headlen == 2 then
			__data ,__status= self.tcp:receive(self.headlen)
			if __data ~=nil then 
				self.headlen = proto.unpacklen(__data)
			end
		else
			__data ,__status= self.tcp:receive(self.headlen)
			if __data ~= nil then
				local pid,msg,len = proto.pbcunpack(__data,self.headlen)
				-- print("pack id:"..pid.." body:"..self.headlen)
				self:dispatchEvent({name=pid, data=msg, pid=pid, len=len})
				self.headlen=2
			end
		end

	    if __status == STATUS_CLOSED or __status == STATUS_NOT_CONNECTED then
	    	self:close()
	    	if self.isConnected then
	    		self:_onDisconnect()
	    	else
	    		self:_connectFailure()
	    	end
    	end
		    
		
	end

	-- start to read TCP data
	self.tickScheduler = scheduler.scheduleGlobal(__tick, SOCKET_TICK_TIME)
end

function jsocket:_connectFailure(status)
	printf("%s._connectFailure", self.name);
	self:dispatchEvent({name=jsocket.EVENT_CONNECT_FAILURE})
	self:_reconnect();
end

-- if connection is initiative, do not reconnect
function jsocket:_reconnect(__immediately)
	if not self.isRetryConnect then return end
	printf("%s._reconnect", self.name)
	if __immediately then self:connect() return end
	if self.reconnectScheduler then scheduler.unscheduleGlobal(self.reconnectScheduler) end
	local __doReConnect = function ()
		self:connect()
	end
	self.reconnectScheduler = scheduler.performWithDelayGlobal(__doReConnect, SOCKET_RECONNECT_TIME)
end

return jsocket
