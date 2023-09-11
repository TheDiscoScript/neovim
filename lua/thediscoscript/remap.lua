vim.g.mapleader = " "
-- back to filetree
vim.keymap.set("n", "<leader>pv", vim.cmd.Ex)

-- move highlighted items
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- take line below and apend it to this line
vim.keymap.set("n", "J", "mzJ`z")

-- half page jumping with cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

-- next previous with cursor in middle
vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

-- deletes highlighted word and paste word - deleted word is in void
vim.keymap.set("x", "<leader>p", [["_dP]])

-- copies highlighted to +register (system) (void) - i can ctrl+v 
vim.keymap.set({"n", "v"}, "<leader>y", [["+y]])
vim.keymap.set("n", "<leader>Y", [["+Y]])

-- deletes highlighted to +register (system) (void)
vim.keymap.set({"n", "v"}, "<leader>d", [["_d]])

-- best remap by far
vim.keymap.set("i", "<C-c>", "<Esc>")

-- idk to be fair
vim.keymap.set("n", "Q", "<nop>")

--notsure if works
vim.keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
vim.keymap.set("n", "<leader>f", vim.lsp.buf.format)

-- quick fix navigation
vim.keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
vim.keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
vim.keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
vim.keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

-- replace words i am on
vim.keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- chmod +x
vim.keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

vim.keymap.set("n", "<leader><leader>", function()
    vim.cmd("so")
end)
