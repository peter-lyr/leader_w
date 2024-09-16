local F = require 'f'

require 'which-key'.register {
  ['<leader>w'] = { name = 'window', },
  ['<leader>wj'] = { function() vim.cmd 'wincmd j' end, 'window go down', mode = { 'n', 'v', }, },
  ['<leader>wk'] = { function() vim.cmd 'wincmd k' end, 'window go up', mode = { 'n', 'v', }, },
  ['<leader>wh'] = { function() vim.cmd 'wincmd h' end, 'window go left', mode = { 'n', 'v', }, },
  ['<leader>wl'] = { function() vim.cmd 'wincmd l' end, 'window go right', mode = { 'n', 'v', }, },

  ['<leader>wd'] = { function() F.window_delete() end, 'window delete cur', mode = { 'n', 'v', }, },

  ['<leader>ws'] = { name = 'window.split', },
  ['<leader>wsj'] = { '<c-w>s', 'window.split down', mode = { 'n', 'v', }, },
  ['<leader>wsk'] = { '<c-w>s<c-w>k', 'window.split up', mode = { 'n', 'v', }, },
  ['<leader>wsh'] = { '<c-w>v<c-w>h', 'window.split left', mode = { 'n', 'v', }, },
  ['<leader>wsl'] = { '<c-w>v', 'window.split right', mode = { 'n', 'v', }, },

  ['<leader>wn'] = { name = 'window.new', },
  ['<leader>wnj'] = { ':<c-u>new<cr>', 'window.new down', mode = { 'n', 'v', }, },
  ['<leader>wnk'] = { ':<c-u>leftabove new<cr>', 'window.new up', mode = { 'n', 'v', }, },
  ['<leader>wnh'] = { ':<c-u>leftabove vnew<cr>', 'window.new left', mode = { 'n', 'v', }, },
  ['<leader>wnl'] = { ':<c-u>vnew<cr>', 'window.new right', mode = { 'n', 'v', }, },
}
