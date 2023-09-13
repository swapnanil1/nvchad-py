-- local autocmd = vim.api.nvim_create_autocmd

-- Auto resize panes when resizing nvim window
-- autocmd("VimResized", {
--   pattern = "*",
--   command = "tabdo wincmd =",
-- })

-- Define a Lua table for clipboard settings
local clipboard = {
   name = 'WslClipboard',
   copy = {
      ['+'] = 'clip.exe',
      ['*'] = 'clip.exe',
   },
   paste = {
      ['+'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
      ['*'] = 'powershell.exe -c [Console]::Out.Write($(Get-Clipboard -Raw).tostring().replace("`r", ""))',
   },
   cache_enabled = 0,
}

-- Assign the table to a Neovim global variable
vim.g.clipboard = clipboard
