-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")
vim.api.nvim_create_autocmd("FileType", {
  pattern = "cmake",
  callback = function()
    vim.diagnostic.enable(false, { bufnr = 0 })
  end,
})

-- run git clang-format on current file (only formats changed lines)
vim.api.nvim_create_autocmd("BufWritePost", {
  pattern = { "*.c", "*.cpp", "*.h", "*.hpp", "*.tpp" },
  callback = function()
    local file = vim.fn.expand("%:p")
    vim.fn.system("git clang-format " .. file)
    vim.cmd("edit") -- reload buffer to reflect changes
  end,
})
