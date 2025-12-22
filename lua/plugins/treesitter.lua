return {
  {
    "nvim-treesitter/nvim-treesitter",
    version = false,
    build = ":TSUpdate",
    config = function()
      require("nvim-treesitter.config").setup({
        ensure_installed = { 
          "lua", "python", "javascript", "typescript", "tsx", 
          "go", "gomod", "gowork", "gosum",
          "rust", "hcl", "terraform", "proto", "toml", "sql",
          "html", "css", "json", "jsonc", "yaml", "dockerfile", "bash", "markdown", "prisma" 
        },
        highlight = { enabled = true },
        indent = { enabled = true },
      })
    end,
  },
  -- Sticky Scroll
  {
    "nvim-treesitter/nvim-treesitter-context",
    dependencies = { "nvim-treesitter/nvim-treesitter" },
    opts = { mode = "cursor", max_lines = 3 },
  },
}
