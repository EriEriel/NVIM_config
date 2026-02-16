# NVIM Config

My **Neovim configuration** built on top of **LazyVim starter**.

This config keeps most of LazyVim’s sane defaults while adding a few more feature like Harpoon and autu complete for HTML/CSS.

---

### 🚀 Harpoon Navigation

* Quick file marking and jumping
  
### 🌐 Enhanced HTML / CSS Autocompletion

* Improved autocomplete for:

  * HTML tags
  * CSS properties
  * Class names
    
Everything else stays close to the LazyVim..

---

## 📦 Included Features

* Lazy.nvim plugin manager
* Treesitter for better syntax highlighting
* LSP support (with sensible defaults)
* Autocompletion via `nvim-cmp`
* Telescope fuzzy finder
* Git integration
* Harpoon for fast file navigation

---

## ⌨️ Harpoon Basics

Common workflow:

```text
Mark file → jump instantly → stay in flow
```

Typical key usage:

* Add file to Harpoon
* Jump between marked files

---

## 🛠 Installation

### 1. Backup existing Neovim config

```bash
mv ~/.config/nvim ~/.config/nvim.bak
```

### 2. Clone this repo

```bash
git clone git@github.com:EriEriel/NVIM_config.git ~/.config/nvim
```

### 3. Launch Neovim

```bash
nvim
```

Lazy.nvim will automatically install all plugins on first launch.

---

## 📌 Notes

* This config is **opinionated** but intentionally small

---

## 📜 License

MIT — Use it as you like.
