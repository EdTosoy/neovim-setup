# 🚀 Premium Fullstack & Platform Engineering Neovim Setup

A modern, high-performance Neovim configuration designed for the transition from **Fullstack Development (Next.js/Angular/TS/PostgreSQL)** to **Platform Engineering (Go/Rust/DevOps/GCP)**.

## ✨ Features
- **⚡ Performance**: Powered by `Lazy.nvim` for sub-50ms startup.
- **🛠️ Roadmap Ready**: Built-in support for TypeScript, Go, Rust, Terraform, Helm, and Docker.
- **💾 Backend & DB**: Deep integration for **NestJS**, **PostgreSQL (sqls)**, and **Prisma**.
- **💻 Workflow**: Integrated floating terminal for **pnpm/npm** scripts and `.env` support.
- **🎨 Aesthetics**: `Catppuccin Mocha` theme with a professional dashboard.
- **🧠 UX Boost**: Interactive shortcut discovery with `Which-key`.

---

## 📥 Cross-Platform Installation

### 1. Install Prerequisites

| OS | Command (Recommended) |
| :--- | :--- |
| **Linux (Arch)** | `sudo pacman -S neovim git ripgrep fd unzip nodejs go rustup terraform postgresql-libs` |
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

---

## ⌨️ Essential Shortcuts
The **Leader Key** is `Space`.

| Action | Shortcut |
| :--- | :--- |
| **Toggle Explorer** | `Space + e` |
| **Find Files** | `Space + ff` |
| **Live Grep** | `Space + fg` |
| **Toggle Terminal** | `Ctrl + \\ ` |
| **Go to Definition** | `gd` |
| **Hover Docs** | `K` |
| **Manual Format** | `Space + f` |

> [!TIP]
> **Don't memorize everything!** Just press `Space` and wait—**Which-key** will show you available commands in a popup.

---

## 🛡️ Future-Proofing & Maintenance
- **Update Plugins**: Run `:Lazy update`.
- **LSP Management**: Run `:Mason` to add new tools.
- **Environment**: Use `.env` files naturally; they are supported out-of-the-box.
- **Scripts**: Toggle the terminal (`Ctrl + \\`) to run `pnpm dev` or other CLI tools instantly.

---
Built for the long-term. 🚀
