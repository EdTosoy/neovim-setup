return {
  -- Which Key for shortcut hints
  {
    "folke/which-key.nvim",
    event = "VeryLazy",
    init = function()
      vim.o.timeout = true
      vim.o.timeoutlen = 300
    end,
    opts = {},
  },
  -- Auto-close brackets
  {
    "windwp/nvim-autopairs",
    event = "InsertEnter",
    opts = {},
  },
  -- Code commenting (gcc to comment line, gc to comment selection)
  {
    "numToStr/Comment.nvim",
    opts = {},
  },
}
