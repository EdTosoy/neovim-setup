# 🚀 Premium Fullstack & Platform Engineering Neovim Setup

This is a modern, high-performance Neovim configuration built for a 24-month roadmap transitioning from **Freelance Fullstack Development (Next.js/Angular)** to **Platform Engineering (Go/Rust/GCP/Kubernetes)**.

## ✨ Features

- **⚡ Blazing Fast**: Based on `Lazy.nvim` for sub-50ms startup times.
- **🛠️ Fullstack Power**: LSP and Treesitter support for TypeScript, Angular, Next.js, and Tailwind CSS.
- **🏗️ Platform Ready**: Deep support for Go, Rust, Terraform (HCL), Helm, Docker, and YAML.
- **🎨 Premium UI**: Beautiful `Catppuccin Mocha` theme with a functional dashboard (`alpha-nvim`).
- **🧠 Intelligent**: Auto-formatting on save (`conform.nvim`) and interactive shortcut discovery (`which-key`).

## 📥 Installation

### 1. Prerequisites
Ensure you have the following installed on your system:
- **Neovim (v0.11.0+)**
- **Git**, **Ripgrep**, **FD**, **Unzip**
- **Node.js** & **NPM/Yarn/PNPM** (for TS/Web LSPs)
- **Go** (optional, recommended)
- **Rust** & **Cargo** (optional, recommended)

### 2. Setup
Clone this repository into your Neovim configuration directory:

```bash
git clone git@github.com:EdTosoy/neovim-setup.git ~/.config/nvim
```

### 3. First Run
Simply open Neovim:
```bash
nvim
```
Lazy.nvim will automatically start downloading and installing all plugins. Once it finishes, restart Neovim to load the UI and LSPs.

## ⌨️ Keybindings

The **Leader Key** is set to `Space`.

| Action | Shortcut |
| :--- | :--- |
| **Toggle Explorer** | `Space + e` |
| **Find Files** | `Space + ff` |
| **Live Grep** | `Space + fg` |
| **Go to Definition** | `gd` |
| **Hover Info** | `K` |
| **Code Actions** | `Space + ca` |
| **Rename Symbol** | `Space + rn` |
| **Next Buffer** | `Shift + l` |
| **Prev Buffer** | `Shift + h` |

> [!TIP]
> If you forget a shortcut, just press `Space` and wait a second. **Which-key** will pop up and show you the way.

## 📂 Structure
- `init.lua`: Entry point.
- `lua/config/`: Core settings (options, keymaps, lazy setup).
- `lua/plugins/`: Modular plugin configurations.

---
Built with ❤️ for a long-term engineering career.
