return {
  "nvim-treesitter/nvim-treesitter",
  opts = {
    indent = {
      enable = true,
      disable = { "c", "cpp" },  -- disable treesitter indent for C/C++
    },
  },
}
