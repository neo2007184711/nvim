-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.api.nvim_create_autocmd("FileType", {
  pattern = { "c", "cpp" },
  callback = function (event)
    local is_c = (vim.bo[event.buf].filetype == "c")
    local compiler = is_c and "gcc" or "g++"
    local std = is_c and "-std=c23" or "-std=c++23"
    local opt_flags = "-O2 -pipe"
    vim.keymap.set("n", "<leader>cc", function ()
      vim.cmd("silent! write")
      local src = vim.fn.shellescape(vim.fn.expand("%:p"))
      local out = vim.fn.shellescape(vim.fn.expand("%:p:r"))
      local cmd = string.format("%s %s %s %s -o %s", compiler, opt_flags, std, src, out)
      Snacks.terminal(cmd)
    end, { buffer = event.buf, desc = "Compile C/C++ source" })
  end,
})

vim.keymap.set("i", "<C-a>", "<Esc>I", { desc = "Move to beginning of line" })
vim.keymap.set("i", "<C-e>", "<Esc>A", { desc = "Move to end of line" })
