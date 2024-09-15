local M = {}
local F = require 'f'

function M.window_delete()
  if not F.is(F.is_cur_last_win()) then
    vim.cmd 'q'
  end
end

require 'which-key'.add {
  { '<leader>w',   group = 'window', },
  { '<leader>wj',  function() vim.cmd 'wincmd j' end, desc = 'window go down',     mode = { 'n', 'v', }, },
  { '<leader>wk',  function() vim.cmd 'wincmd k' end, desc = 'window go up',       mode = { 'n', 'v', }, },
  { '<leader>wh',  function() vim.cmd 'wincmd h' end, desc = 'window go left',     mode = { 'n', 'v', }, },
  { '<leader>wl',  function() vim.cmd 'wincmd l' end, desc = 'window go right',    mode = { 'n', 'v', }, },
  { '<leader>wd',  function() M.window_delete() end,  desc = 'window delete',      mode = { 'n', 'v', }, },
  { '<leader>ws',  group = 'window.split', },
  { '<leader>wsj', '<c-w>s',                          desc = 'window.split down',  mode = { 'n', 'v', }, },
  { '<leader>wsk', '<c-w>s<c-w>k',                    desc = 'window.split up',    mode = { 'n', 'v', }, },
  { '<leader>wsh', '<c-w>v<c-w>h',                    desc = 'window.split left',  mode = { 'n', 'v', }, },
  { '<leader>wsl', '<c-w>v',                          desc = 'window.split right', mode = { 'n', 'v', }, },
}
