return {
  {
    "hiphish/rainbow-delimiters.nvim",
    dependencies = "nvim-treesitter/nvim-treesitter",
    config = function()
      local rainbow_delimiters = require("rainbow-delimiters")

      vim.g.rainbow_delimiters = {
        strategy = {
          [""] = rainbow_delimiters.strategy["global"],
        },
        query = {
          [""] = "rainbow-delimiters",
          lua = "rainbow-blocks",
        },
        highlight = {
          "RainbowDelimiterOrange", -- VS Code Level 1 (#d19a66)
          "RainbowDelimiterPurple", -- VS Code Level 2 (#c678dd)
          "RainbowDelimiterCyan",   -- VS Code Level 3 (#56b6c2)
          "RainbowDelimiterRed",
          "RainbowDelimiterYellow",
          "RainbowDelimiterBlue",
          "RainbowDelimiterGreen",
        },
      }

      -- Set the specific colors from VS Code settings
      vim.api.nvim_set_hl(0, "RainbowDelimiterOrange", { fg = "#d19a66" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterPurple", { fg = "#c678dd" })
      vim.api.nvim_set_hl(0, "RainbowDelimiterCyan",   { fg = "#56b6c2" })
    end,
  },
}
