# Setup Lua version. Default to 5.3

rm /usr/bin/lua /usr/bin/luac
ln -s /usr/bin/luac${LUA_VERSION:-5.3} /usr/bin/luac
ln -s /usr/bin/lua${LUA_VERSION:-5.3} /usr/bin/lua
