require'lspconfig'.ccls.setup {
  init_options = {
    highlight = {
      lsRanges = true;
    }
  },
   cmd = { 'ccls' },
    filetypes = { 'c', 'cpp', 'objc', 'objcpp' },
    root_dir = require'lspconfig.util'.root_pattern('compile_commands.json', '.ccls', 'compile_flags.txt', '.git'),
    -- ccls does not support sending a null root directory
    single_file_support = false,
}
