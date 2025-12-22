return {
  -- Better package.json support
  {
    "vvt/package-info.nvim",
    dependencies = { "MunifTanjim/nui.nvim" },
    event = { "BufRead package.json" },
    config = function()
      require("package-info").setup()
    end,
  },
}
