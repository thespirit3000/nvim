# Neovim

![preview](./img/nvim-ss.png)

### Plugins

List of used plugins:

- [nvim-web-devicons](https://github.com/kyazdani42/nvim-web-devicons)
- [lualine](https://github.com/nvim-lualine/lualine.nvim)
- [barbar](https://github.com/romgrk/barbar.nvim)
- [nvim-tree](https://github.com/kyazdani42/nvim-tree.lua)
- [nvim-autopairs]()
- [indent-blankline](https://github.com/lukas-reineke/indent-blankline.nvim)
- [toggleterm](https://github.com/akinsho/toggleterm.nvim)
- [treesitter](https://github.com/nvim-treesitter/nvim-treesitter)

**LSP plugins**:

- [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig)
- [mason.nvim]. A companion plugin for [nvim-lspconfig](https://github.com/neovim/nvim-lspconfig) to seamlessly install LSP servers.
- [nvim-cmp](https://github.com/hrsh7th/nvim-cmp) a code completion plugin
- [null-ls](https://github.com/jose-elias-alvarez/null-ls.nvim)

**Mason keys**
-- Keymap to expand a package
toggle_package_expand = "<CR>",
-- Keymap to install the package under the current cursor position
install_package = "i",
-- Keymap to reinstall/update the package under the current cursor position
update_package = "u",
-- Keymap to check for new version for the package under the current cursor position
check_package_version = "c",
-- Keymap to update all installed packages
update_all_packages = "U",
-- Keymap to check which installed packages are outdated
check_outdated_packages = "C",
-- Keymap to uninstall a package
uninstall_package = "X",
-- Keymap to cancel a package installation
cancel_installation = "<C-c>",
-- Keymap to apply language filter
apply_language_filter = "<C-f>",
