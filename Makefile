include skynet/platform.mk

.PHONY: all skynet clean



MY_LUA_CLIB_PATH ?= skynet/luaclib

CFLAGS = -g -O2 -Wall -I$(LUA_INC) $(MYCFLAGS) 

LUA_CLIB = 


$(MY_LUA_CLIB_PATH) :
	mkdir $(MY_LUA_CLIB_PATH)


all : \
	skynet \
	lpeg \
	$(foreach v, $(LUA_CLIB), $(MY_LUA_CLIB_PATH)/$(v).so) 

skynet :
	cd skynet && $(MAKE) $(PLAT)

lpeg :
	#git submodule update --init
	cd 3rd/lpeg && $(MAKE) $(PLAT)
	cp 3rd/lpeg/lpeg.so skynet/luaclib


$(MY_LUA_CLIB_PATH)/lpack.so : 3rd/lpack/lpack.c | $(MY_LUA_CLIB_PATH)
	$(CC) $(CFLAGS) $(SHARED) $^ -o $@


clean :
	cd skynet && $(MAKE) clean
	
cleanall :
	cd skynet && $(MAKE) cleanall