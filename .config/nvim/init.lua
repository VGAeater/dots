require("config.lazy")

require("nvim-tree").setup()

vim.opt.clipboard = "unnamedplus"

vim.opt.autoindent = true
vim.opt.number = true
vim.opt.cursorline = true

require('ayu').setup({
    mirage = false, -- Set to `true` to use `mirage` variant instead of `dark` for dark background.
    terminal = true, -- Set to `false` to let terminal manage its own colors.
    overrides = {}, -- A dictionary of group names, each associated with a dictionary of parameters (`bg`, `fg`, `sp` and `style`) and colors in hex.
})

require('ayu').colorscheme()

