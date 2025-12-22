# �� Premium Fullstack & Platform Engineering Neovim Setup

A modern, high-performance Neovim configuration designed for the transition from **Fullstack Development (Nest.js/Angular/TS/PostgreSQL)** to **Platform Engineering (Go/Rust/DevOps/GCP)**.

## ✨ Features
- **⚡ Performance**: Powered by `Lazy.nvim` for sub-50ms startup.
- **🛠️ Roadmap Ready**: Built-in support for TypeScript, Go, Rust, Terraform, Helm, and Docker.
- **💾 Backend & DB**: Deep integration for **NestJS**, **PostgreSQL (sqls)**, and **Prisma**.
- **💻 Workflow**: Integrated floating terminal, `.env` support, and **Project Manager**.
- **🎨 Aesthetics**: `One Dark Pro Night Flat` theme (Antigravity Style) with Material Icons.
- **🧠 UX Boost**: **Error Lens** (inline diagnostics), breadcrumbs, and sticky scroll.

---

## 📥 Cross-Platform Installation

### 1. Install Prerequisites

| OS | Command (Recommended) |
| :--- | :--- |
| **Linux (Arch)** | `sudo pacman -S neovim git ripgrep fd unzip nodejs go rustup terraform postgresql-libs` |
| **macOS** | `brew install nvim git ripgrep fd nodejs go rust terraform` |
| **Windows** | `choco install neovim git ripgrep fd nodejs golang rust terraform` |

### 2. Clone the Repository
Clone this into your Neovim configuration directory:

**Linux / macOS:**
```bash
git clone git@github.com:EdTosoy/neovim-setup.git ~/.config/nvim
```

---

## ⌨️ Essential Shortcuts
The **Leader Key** is `Space`.

| Action | Shortcut |
| :--- | :--- |
| **Switch Project** | `Space + fp` |
| **Toggle Explorer** | `Space + e` |
| **Find Files** | `Space + ff` |
| **Live Grep** | `Space + fg` |
| **Toggle Terminal** | `Ctrl + \\ ` |
| **Manual Format** | `Space + f` |

---

## 🛡️ Future-Proofing & Maintenance
- **Diagnostics**: Error Lens is active; errors appear directly at the end of the line.
- **LSP & Linting**: GitHub Actions (`actionlint`) and Docker support are managed via `:Mason`.
- **Project Flow**: Use `Space + fp` to instantly switch between different Git repositories.

---
Built for the long-term. 🚀
