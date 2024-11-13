require("neotex.core")
require("neotex.bootstrap")

vim.cmd("language en_US")
vim.opt.spelllang = "en,it"
vim.cmd("set foldenable")
vim.opt.foldmethod = "manual"
-- vim.cmd("autocmd BufWinLeave *.* mkview")
-- vim.cmd("autocmd BufWinEnter *.* silent loadview")
vim.cmd[[
  " Use Tab to expand and jump through snippets
  imap <silent><expr> <Tab> luasnip#expand_or_jumpable() ? '<Plug>luasnip-expand-or-jump' : '<Tab>' 
  smap <silent><expr> <Tab> luasnip#jumpable(1) ? '<Plug>luasnip-jump-next' : '<Tab>'

  " Use Shift-Tab to jump backwards through snippets
  imap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
  smap <silent><expr> <S-Tab> luasnip#jumpable(-1) ? '<Plug>luasnip-jump-prev' : '<S-Tab>'
]]
require("luasnip.loaders.from_lua").load({paths = "~/.config/nvim/luasnip/"})
