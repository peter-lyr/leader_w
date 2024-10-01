local F = require 'f'

require 'which-key'.register {
  ['<leader>w'] = { name = 'window', },
  ['<leader>wj'] = { function() vim.cmd 'wincmd j' end, 'window go down', mode = { 'n', 'v', }, },
  ['<leader>wk'] = { function() vim.cmd 'wincmd k' end, 'window go up', mode = { 'n', 'v', }, },
  ['<leader>wh'] = { function() vim.cmd 'wincmd h' end, 'window go left', mode = { 'n', 'v', }, },
  ['<leader>wl'] = { function() vim.cmd 'wincmd l' end, 'window go right', mode = { 'n', 'v', }, },

  ['<leader>wp'] = { function() vim.cmd 'wincmd p' end, 'window go back', mode = { 'n', 'v', }, },

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

  ['<leader>wi'] = { name = 'window.new.tail', },
  ['<leader>wij'] = { function() F.new_win_ftail_down() end, 'window.new.tail down', mode = { 'n', 'v', }, },
  ['<leader>wik'] = { function() F.new_win_ftail_up() end, 'window.new.tail up', mode = { 'n', 'v', }, },
  ['<leader>wih'] = { function() F.new_win_ftail_left() end, 'window.new.tail left', mode = { 'n', 'v', }, },
  ['<leader>wil'] = { function() F.new_win_ftail_right() end, 'window.new.tail right', mode = { 'n', 'v', }, },

  ['<leader>wo'] = { name = 'window.new.inc', },
  ['<leader>woj'] = { function() F.new_win_finc_down() end, 'window.new.inc down', mode = { 'n', 'v', }, },
  ['<leader>wok'] = { function() F.new_win_finc_up() end, 'window.new.inc up', mode = { 'n', 'v', }, },
  ['<leader>woh'] = { function() F.new_win_finc_left() end, 'window.new.inc left', mode = { 'n', 'v', }, },
  ['<leader>wol'] = { function() F.new_win_finc_right() end, 'window.new.inc right', mode = { 'n', 'v', }, },

  ['<leader>we'] = { '<c-w>=', 'window equal', mode = { 'n', 'v', }, },
  ['<leader>wm'] = { function() F.win_max_height() end, 'window max height', mode = { 'n', 'v', }, },
  ['<leader>w,'] = { function() F.win_max_width() end, 'window max width', mode = { 'n', 'v', }, },

  ['<leader>wJ'] = { function() vim.cmd 'wincmd J' end, 'window be most down', mode = { 'n', 'v', }, },
  ['<leader>wK'] = { function() vim.cmd 'wincmd K' end, 'window be most up', mode = { 'n', 'v', }, },
  ['<leader>wH'] = { function() vim.cmd 'wincmd H' end, 'window be most left', mode = { 'n', 'v', }, },
  ['<leader>wL'] = { function() vim.cmd 'wincmd L' end, 'window be most right', mode = { 'n', 'v', }, },
  ['<leader>wT'] = { function() vim.cmd 'wincmd T' end, 'window be in new tab', mode = { 'n', 'v', }, },
}
