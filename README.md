pi wifi car and webcam
==================================

pi 
gpio with lua
L298n 
skynet
cocos2dx

init cmd :
	git submodule update --init
	cd server/skynet && make (linux|macosx)
	
pi server :
	sudo ./skynet/skynet work/config.server  #must used sudo with dev/mem by GPIO

pi client :
	apk  ipa with mac, android , ios and window  ,don't test window
