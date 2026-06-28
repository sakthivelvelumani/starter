return {
  "danymat/neogen",
  dependencies = "nvim-treesitter/nvim-treesitter",
  opts = {
    enabled = true,
    languages = {
      c = {
        template = {
          annotation_convention = "doxygen",
        },
      },
      cpp = {
        template = {
          annotation_convention = "doxygen",
        },
      },
    },
  },
  keys = {
    {
      "<leader>cg",
      function()
        require("neogen").generate()
      end,
      desc = "Generate doc comment",
    },
  },
}
