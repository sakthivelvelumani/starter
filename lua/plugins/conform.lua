return {
  "stevearc/conform.nvim",
  opts = {
    format_on_save = function(bufnr)
      local ignore_filetypes = { "cmake", "c", "cpp" }
      if vim.tbl_contains(ignore_filetypes, vim.bo[bufnr].filetype) then
        return nil
      end
      return { timeout_ms = 500, lsp_fallback = true }
    end,
  },
}
