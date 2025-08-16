-- [[ Basic Keymaps ]]
--  See `:help vim.keymap.set()`
--
-- Move current line up or down in normal mode
vim.keymap.set("n", "<A-j>", ":m .+1<CR>==")
vim.keymap.set("n", "<A-k>", ":m .-2<CR>==")

-- make ctrl backspace work
vim.keymap.set("i", "<C-BS>", "<C-W>", { noremap = true })

-- Clear highlights on search when pressing <Esc> in normal mode
--  See `:help hlsearch`
vim.keymap.set("n", "<Esc>", "<cmd>nohlsearch<CR>")
vim.keymap.set("n", "<leader>q", vim.diagnostic.setloclist, { desc = "Open diagnostic [Q]uickfix list" }) -- Diagnostic keymaps

-- tabs in newovim
vim.keymap.set("n", "<C-t>", "<cmd>tabnew<CR>")
vim.keymap.set("n", "<Tab>", "<cmd>tabnext<CR>")
vim.keymap.set("n", "<S-Tab>", "<cmd>-tabnext<CR>")

-- making shift q exit all
vim.keymap.set("n", "<S-q>", "<cmd>qall<CR>")

-- CTRL S save like a normal human being
vim.keymap.set({ "n", "i" }, "<S-q>", "<cmd>:w<CR>")

-- Lazy Open
vim.keymap.set("n", "<leader>l", "<cmd>:Lazy<CR>", { desc = "[L]azy" })

-- Move without cursor
vim.keymap.set({ "n", "i" }, "<C-e>", "5<C-e>")
vim.keymap.set({ "n", "i" }, "<C-y>", "5<C-y>")

vim.keymap.set("n", "q", "<cmd>q<CR>")
vim.keymap.set({ "n", "i" }, "<C-s>", "<Cmd>w<CR>")

-- Send notification
vim.keymap.set("n", "<leader>nn", function()
	vim.notify("Hello from notify!", vim.log.levels.INFO, { title = "Test Notification" })
end, { desc = "Send Test [N]otificatio[N]" })

-- Change buffer size with a simple keybind.....
vim.keymap.set("n", "<A-S-h>", "<cmd>vertical resize +2<CR>")
vim.keymap.set("n", "<A-S-l>", "<cmd>vertical resize -2<CR>")
vim.keymap.set("n", "<A-S-j>", "<cmd>resize -2<CR>")
vim.keymap.set("n", "<A-S-k>", "<cmd>resize +2<CR>")

-- Exit terminal mode in the builtin terminal with a shortcut that is a bit easier
-- for people to discover. Otherwise, you normally need to press <C-\><C-n>, which
-- is not what someone will guess without a bit more experience.
--
-- NOTE: This won't work in all terminal emulators/tmux/etc. Try your own mapping
-- or just use <C-\><C-n> to exit terminal mode
vim.keymap.set("t", "<Esc><Esc>", "<C-\\><C-n>", { desc = "Exit terminal mode" })

-- TIP: Disable arrow keys in normal mode
vim.keymap.set("n", "<left>", '<cmd>echo "Use h to move!!"<CR>')
vim.keymap.set("n", "<right>", '<cmd>echo "Use l to move!!"<CR>')
vim.keymap.set("n", "<up>", '<cmd>echo "Use k to move!!"<CR>')
vim.keymap.set("n", "<down>", '<cmd>echo "Use j to move!!"<CR>')

vim.keymap.set("n", "<C-h>", "<C-w><C-h>", { desc = "Move focus to the left window" })
vim.keymap.set("n", "<C-l>", "<C-w><C-l>", { desc = "Move focus to the right window" })
vim.keymap.set("n", "<C-j>", "<C-w><C-j>", { desc = "Move focus to the lower window" })
vim.keymap.set("n", "<C-k>", "<C-w><C-k>", { desc = "Move focus to the upper window" })

-- NOTE: Some terminals have colliding keymaps or are not able to send distinct keycodes
-- vim.keymap.set("n", "<C-S-h>", "<C-w>H", { desc = "Move window to the left" })
-- vim.keymap.set("n", "<C-S-l>", "<C-w>L", { desc = "Move window to the right" })
-- vim.keymap.set("n", "<C-S-j>", "<C-w>J", { desc = "Move window to the lower" })
-- vim.keymap.set("n", "<C-S-k>", "<C-w>K", { desc = "Move window to the upper" })

-- [[ Basic Autocommands ]]
--  See `:help lua-guide-autocommands`

-- Highlight when yanking (copying) text
--  Try it with `yap` in normal mode
--  See `:help vim.hl.on_yank()`
vim.api.nvim_create_autocmd("TextYankPost", {
	desc = "Highlight when yanking (copying) text",
	group = vim.api.nvim_create_augroup("kickstart-highlight-yank", { clear = true }),
	callback = function()
		vim.hl.on_yank()
	end,
})
