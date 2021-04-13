# Setup Lua version. Default from container env

rm /usr/bin/lua /usr/bin/luac
ln -s /usr/bin/luac${DEFAULT_LUA_VERSION} /usr/bin/luac
ln -s /usr/bin/lua${DEFAULT_LUA_VERSION} /usr/bin/lua

echo Setup for lua $DEFAULT_LUA_VERSION done

echo $SHELL