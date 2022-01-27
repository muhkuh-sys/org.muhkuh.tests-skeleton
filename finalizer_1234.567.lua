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

-- Create the package information in '.jonchki/package.txt'.
t:createPackageFile()
-- Create a hash sum for all files in '.jonchki/package.sha384'.
t:createHashFile()
-- Create an archive from all files.
t:createArchive('${install_base}/../../../../${default_archive_name}', 'native')

return true
