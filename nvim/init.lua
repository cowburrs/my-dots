--[[ 
if you experience any errors while trying to install kickstart, run `:checkhealth` for more info.

I hope you enjoy your Neovim journey,
- TJ

P.S. You can delete this when you're done too. It's your config now! :)
No teej, I will not. Thanks for helping me
--]]

-- Set <space> as the leader key
-- See `:help mapleader`
--  NOTE: Must happen before plugins are loaded (otherwise wrong leader will be used)
vim.g.mapleader = " "
vim.g.maplocalleader = " "

vim.g.have_nerd_font = true -- Set to true if you have a Nerd Font installed and selected in the terminal

-- [[ Setting options ]]
require("core.options")

-- [[ Basic Keymaps ]]
require("core.keymaps")

-- [[ Install `lazy.nvim` plugin manager ]]
require("core.lazy-bootstrap")

-- [[ Configure and install plugins ]]
require("core.lazy-plugins")

-- [[ Extra stuff actually ]]
require("extra.relabs")

-- [[ Source all from extra ]]
local files = vim.api.nvim_get_runtime_file("lua/extra/*.lua", true)

-- The line beneath this is called `modeline`. See `:help modeline`
-- vim: ts=2 sts=2 sw=2 et
