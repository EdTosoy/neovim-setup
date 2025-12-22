return {
  {
    "ahmedkhalf/project.nvim",
    config = function()
      require("project_nvim").setup({
        -- Manual mode doesn't automatically change your root directory, so you have
        -- control over when the workspace changes.
        manual_mode = false,
        detection_methods = { "lsp", "pattern" },
        patterns = { ".git", "_darcs", ".hg", ".bzr", ".svn", "Makefile", "package.json", "go.mod" },
        ignore_lsp = {},
        exclude_dirs = {},
        show_hidden = false,
        silent_chdir = true,
        scope_chdir = 'global',
        datapath = vim.fn.stdpath("data"),
      })
    end,
  },
}
