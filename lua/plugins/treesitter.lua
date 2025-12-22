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
}
