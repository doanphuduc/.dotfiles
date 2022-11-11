local xnoremap = require('doanphuduc.keymap').xnoremap

-- Execute macro in visual ranges
xnoremap('@', '":norm @" . getcharstr() . "<cr>"', { expr = true })

local M = {
}

M.JumpBuffer = function(count)
  -- print(count)
  vim.cmd('LualineBuffersJump! ' .. count)
end


return M
