# Setup Lua version. Default to 5.3

THIS_LUA=${LUA_VERSION:-5.3}

rm /usr/bin/lua /usr/bin/luac
ln -s /usr/bin/luac${THIS_LUA} /usr/bin/luac
ln -s /usr/bin/lua${THIS_LUA} /usr/bin/lua
