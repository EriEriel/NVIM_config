# NVIM Config

My **Neovim configuration** built on top of **LazyVim starter**.

This config keeps most of LazyVim’s defaults configuration while adding a few more feature like Harpoon and auto complete for HTML/CSS etc.

---

### 🚀 Harpoon Navigation

* Quick file marking and jumping
  
### 🌐 Enhanced HTML / CSS Autocompletion

* Improved autocomplete for:

  * HTML tags
  * CSS properties
  * Class names
  * TS/JS React
  * Tailwind CSS

### Multicursors and dst config

  * Multicursors plugin for multi line fast editing
  * ```dst``` for delete surrounding tags like <div>Hello world</div> -> Hello world

### 🐘 PostgresSQL

  * Vim-dadbod and PostgresSQL
  * ```:DBUI``` to open Vim-dadbod

### 📡 HTTP / REST Client (Kulala)

  * Interactive HTTP/REST client inside Neovim for testing APIs
  * Execute requests directly from `.http` and `.rest` files
  * View headers, body, or formatted outputs in a split pane

## 📦 Included Features

* Lazy.nvim plugin manager
* Treesitter for better syntax highlighting
* LSP support (with sensible defaults)
* Autocompletion via `nvim-cmp`
* Telescope fuzzy finder
* Git integration
* Harpoon for fast file navigation
* Kulala.nvim (REST/HTTP Client)

---

## ⌨️ Harpoon Basics

Common workflow:

```text
Mark file → jump instantly → stay in flow
```

Typical key usage:

* Add file to Harpoon
* Jump between marked files

## Multicursors Basics

```<leader>``` n - extend cursor down to matching word
```<leader>``` N - extend cursor up to matching word
  
In visual mode 
```<C-down>``` extend cursor down
```<C-up>``` extend cursor up 

## 📡 Kulala (REST Client) Basics

Execute HTTP/REST requests directly from `.http` or `.rest` files using the following keymaps (prefixed with `<leader>R`):

* `<leader>Rs` — Send request under the cursor
* `<leader>Ra` — Send all requests in the buffer
* `<leader>Rb` — Open Kulala scratchpad
* `<leader>Rr` — Replay the last request
* `<leader>Rco` — Copy the request as a `curl` command
* `<leader>Rt` — Toggle headers and body view in the response window

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
