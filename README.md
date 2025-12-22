# 🚀 Premium Fullstack & Platform Engineering Neovim Setup

A modern, high-performance Neovim configuration designed for the transition from **Fullstack Development (Next.js/Angular/TS/PostgreSQL)** to **Platform Engineering (Go/Rust/DevOps/GCP)**.

## ✨ Features
- **⚡ Performance**: Powered by `Lazy.nvim` for sub-50ms startup.
- **🛠️ Roadmap Ready**: Built-in support for TypeScript, Go, Rust, Terraform, Helm, and Docker.
- **💾 Backend & DB**: Deep integration for **NestJS**, **PostgreSQL (sqls)**, and **Prisma**.
- **💻 Workflow**: Integrated floating terminal and `.env` support.
- **🎨 Aesthetics**: `GitHub Dark Default` theme (Antigravity Style) with a professional dashboard.
- **🧠 UX Boost**: Interactive breadcrumbs, sticky scroll context, and mnemonic shortcuts with `Which-key`.

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
| **Contextual Info** | `K` |
| **Manual Format** | `Space + f` |

---

## 🛡️ Future-Proofing & Maintenance
- **Update Plugins**: Run `:Lazy update`.
- **LSP Management**: Run `:Mason` to add new tools.
- **Sticky Context**: As you scroll, the current function scope stays at the top.
- **Breadcrumbs**: See your current path (`Project > File > Symbol`) at the top of the buffer.

---
Built for the long-term. 🚀
