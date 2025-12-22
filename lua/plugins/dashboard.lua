return {
  {
    "goolord/alpha-nvim",
    event = "VimEnter",
    dependencies = { "nvim-tree/nvim-web-devicons" },
    config = function()
      local alpha = require("alpha")
      local dashboard = require("alpha.themes.dashboard")

      -- Set header (Antigravity/Neovim style)
      dashboard.section.header.val = {
        [[                               __                ]],
        [[  ___     ___    ___   __  __ /\_\    ___ ___    ]],
        [[ / _ \   / _ \  / _ \  \ \ \ \/\ \  /  ' .. \   ]],
        [[/\ \_\ \/\  __/ /\ \_\ \ \ \_/ |\ \ \/\ \ \ \ \  ]],
        [[\ \____/\ \____\ \____/ \ \___/  \ \_\ \_\ \_\ \ ]],
        [[ \/___/  \/____/ \/___/   \/__/    \/_/\/_/\/_/\/_/]],
        [[                                                 ]],
        [[            PREMIUM FULLSTACK ENGINE             ]],
      }

      -- Set buttons
      dashboard.section.buttons.val = {
        dashboard.button("p", "📂  Open Project", ":Telescope projects<CR>"),
        dashboard.button("f", "🔍  Find File", ":Telescope find_files<CR>"),
        dashboard.button("r", "🕒  Recent Files", ":Telescope oldfiles<CR>"),
        dashboard.button("g", "🌿  Git Status", ":Telescope git_status<CR>"),
        dashboard.button("c", "⚙️   Configuration", ":e ~/.config/nvim/init.lua<CR>"),
        dashboard.button("l", "💤  Lazy Manager", ":Lazy<CR>"),
        dashboard.button("q", "❌  Quit", ":qa<CR>"),
      }

      -- Footer
      local handle = io.popen('fortune -s 2>/dev/null || echo "Stay hungry, stay foolish."')
      local fortune = handle:read("*a")
      handle:close()
      dashboard.section.footer.val = fortune

      dashboard.opts.opts.noautocmd = true
      alpha.setup(dashboard.opts)
    end,
  },
}
