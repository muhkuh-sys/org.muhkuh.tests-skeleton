local t = ...

-- Copy all additional files.
t:install{
  -- General
  ['local/lua/muhkuh_cli_init.lua']           = '${install_base}/',

  -- Test prepare.
  ['local/lua/board_prepare.lua']             = '${install_lua_path}/',
  ['local/jsx/board_prepare.jsx']             = '${install_base}/jsx/',

  -- Test finalize.
  ['local/lua/board_finalize.lua']            = '${install_lua_path}/',
  ['local/jsx/board_finalize.jsx']            = '${install_base}/jsx/',
  ['local/jsx/board_trash.jsx']               = '${install_base}/jsx/',

  ['${report_path}']                          = '${install_base}/.jonchki/'
}

return true
