# 🚀 Premium Fullstack & Platform Engineering Neovim Setup

A modern, high-performance Neovim configuration designed for the transition from **Fullstack Development (Nest.js/Angular/TS/PostgreSQL)** to **Platform Engineering (Go/Rust/DevOps/GCP)**.

## ✨ Features
- **⚡ Performance**: Powered by `Lazy.nvim` for sub-50ms startup.
- **🛠️ Roadmap Ready**: Built-in support for TypeScript, Go, Rust, Terraform, Helm, and Docker.
- **💾 Backend & DB**: Deep integration for **NestJS**, **PostgreSQL (sqls)**, and **Prisma**.
- **🌿 Git Mastery**: **Git Graph** (visual lanes), **Diffview** (history exploration), and **Inline Blame** (Git Lens style).
- **�� Debugging**: Full **DAP** support for Go, Rust, and TypeScript with a premium UI.
- **🎨 Aesthetics**: `One Dark Pro Night Flat` theme (Antigravity Style) with Material Icons and **Rainbow Brackets**.
- **🧠 UX Boost**: **Error Lens** (inline diagnostics), breadcrumbs, and sticky scroll.

---

## 📥 Cross-Platform Installation

### 1. Install Prerequisites

| OS | Command (Recommended) |
| :--- | :--- |
| **Linux (Arch)** | `sudo pacman -S neovim git ripgrep fd unzip nodejs go rustup terraform postgresql-libs delve gdb` |
| **macOS** | `brew install nvim git ripgrep fd nodejs go rust terraform delve codelldb` |
| **Windows** | `choco install neovim git ripgrep fd nodejs golang rust terraform delve` |

### 2. Clone the Repository
Clone this into your Neovim configuration directory:
```bash
git clone git@github.com:EdTosoy/neovim-setup.git ~/.config/nvim
```

---

## ⌨️ Essential Shortcuts
The **Leader Key** is `Space`.

### 🌿 Git Tools
| Action | Shortcut |
| :--- | :--- |
| **Git Graph** | `Space + gl` |
| **File History** | `Space + gh` |
| **Diff View** | `Space + gd` |
| **Inline Blame** | (Automatic on hover/cursor) |

### 🐞 Debugging (DAP)
| Action | Shortcut |
| :--- | :--- |
| **Start/Continue** | `F5` |
| **Step Over** | `F10` |
| **Step Into** | `F11` |
| **Toggle Breakpoint** | `Space + b` |

### 🔍 Explorer & Search
| Action | Shortcut |
| :--- | :--- |
| **Switch Project** | `Space + fp` |
| **Toggle Explorer** | `Space + e` |
| **Find Files** | `Space + ff` |

---
Built for the long-term. 🚀
