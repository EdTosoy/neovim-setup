# 🚀 Premium Fullstack & Platform Engineering Neovim Setup

A modern, high-performance Neovim configuration designed for the transition from **Fullstack Development (Next.js/Angular/TS)** to **Platform Engineering (Go/Rust/DevOps/GCP)**.

## ✨ Features
- **⚡ Performance**: Powered by `Lazy.nvim` for sub-50ms startup.
- **🛠️ Roadmap Ready**: Built-in support for TypeScript, Go, Rust, Terraform, Helm, and Docker.
- **🎨 Aesthetics**: `Catppuccin Mocha` theme with a professional dashboard.
- **🧠 UX Boost**: Mnemonic shortcuts with `Which-key`, auto-formatting on save, and Git status in the gutter.

---

## 📥 Cross-Platform Installation

### 1. Install Prerequisites

| OS | Command (Recommended) |
| :--- | :--- |
| **Linux (Arch)** | `sudo pacman -S neovim git ripgrep fd unzip nodejs go rustup terraform` |
| **macOS** | `brew install nvim git ripgrep fd nodejs go rust terraform` |
| **Windows** | `choco install neovim git ripgrep fd nodejs golang rust terraform` |

### 2. Clone the Repository

Clone this into your Neovim configuration directory depending on your OS:

**Linux / macOS:**
```bash
git clone git@github.com:EdTosoy/neovim-setup.git ~/.config/nvim
```

**Windows (PowerShell):**
```powershell
git clone git@github.com:EdTosoy/neovim-setup.git $HOME\AppData\Local\nvim
```

### 3. Initialize
Open Neovim and wait for the plugin manager to finish initial installation:
```bash
nvim
```

---

## ⌨️ Essential Shortcuts
The **Leader Key** is `Space`.

- `Space + e`: Toggle File Explorer
- `Space + ff`: Find Files
- `Space + fg`: Live Grep
- `gd`: Go to Definition
- `K`: Hover Documentation
- `Shift + l/h`: Switch Buffers (Tabs)
- `Space + ca`: Code Actions

> [!TIP]
> **Don't memorize everything!** Just press `Space` and wait—**Which-key** will show you available commands in a popup.

---

## 🛡️ Future-Proofing & Maintenance

- **Update Plugins**: Run `:Lazy update` inside Neovim.
- **Check Health**: Run `:checkhealth` to find and fix system dependency issues.
- **LSP Management**: Run `:Mason` to view or add new Language Servers.
- **Roadmap Shift**: Modular config in `lua/plugins/` makes it easy to swap one tech for another as your career evolves.

---
Built for the long-term. 🚀
