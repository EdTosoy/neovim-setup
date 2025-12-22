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
Ensure you have **Neovim v0.10+** (v0.11 recommended) installed.

| OS | Requirements |
| :--- | :--- |
| **Linux (Arch)** | `sudo pacman -S neovim git ripgrep fd unzip nodejs npm go rustup terraform postgresql-libs base-devel` |
| **Linux (Debian/Ubuntu)** | `sudo apt install neovim git ripgrep fd-find unzip nodejs npm golang rustc cargo terraform libpq-dev build-essential` |
| **macOS** | `brew install nvim git ripgrep fd nodejs go rust terraform` |
| **Windows** | `choco install neovim git ripgrep fd nodejs golang rust terraform` |

> [!IMPORTANT]
> **Nerd Fonts**: You **MUST** install a [Nerd Font](https://www.nerdfonts.com/font-downloads) (e.g., `MesloLGS NF` or `JetBrainsMono NF`) and set it as your terminal font for icons to appear correctly.

### 2. Install the Configuration
Back up your existing configuration if you have one, then clone this repo:

```bash
# Backup
mv ~/.config/nvim ~/.config/nvim.bak
mv ~/.local/share/nvim ~/.local/share/nvim.bak

# Install
git clone https://github.com/EdTosoy/neovim-setup.git ~/.config/nvim

# Start Neovim
nvim
```
*Plugins will automatically install on the first launch. Restart Neovim once the installation completes.*


### 3. Post-Installation Check
Run `:checkhealth` to ensure everything is set up correctly.
- **Node/Python/Ruby/Perl providers**: It's okay if some are missing unless you specifically need them.
- **Parser/Grammar errors**: Run `:TSUpdate` to fix them.

---

## ❓ Troubleshooting

### My icons are squares/weird characters!
This means your terminal is not using a **Nerd Font**.
1. Download a font like [DejavuSansMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/DejaVuSansMono.zip) or [JetBrainsMono](https://github.com/ryanoasis/nerd-fonts/releases/download/v3.1.1/JetBrainsMono.zip).
2. Install the font on your OS.
3. **Configure your terminal emulator** to use that font.

### I see errors about "gcc" or "make" when installing Telescope/fzf
You are missing build tools.
- **Linux**: Install `base-devel` (Arch) or `build-essential` (Debian/Ubuntu).
- **Windows**: Install `MinGW` or use `choco install make mingw`.

### Copilot / AI features?
This config is AI-ready but doesn't force a specific provider. 
- To add Copilot: Run `:Lazy`, install `github/copilot`, and set it up.


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
