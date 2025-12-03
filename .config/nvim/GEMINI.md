# Neovim Configuration (`kickstart.nvim`)

## Project Overview

This directory contains a Neovim configuration based on the popular [`kickstart.nvim`](https://github.com/nvim-lua/kickstart.nvim) template. It's a modular and extensible setup written in Lua, designed to be a solid starting point for a personalized Neovim experience.

The configuration uses [`lazy.nvim`](https://github.com/folke/lazy.nvim) as its plugin manager. The structure is broken down into logical components:

-   `init.lua`: The main entry point.
-   `lua/custom/core/`: Core editor settings, including options, keymaps, and autocommands.
-   `lua/custom/plugins/`: Plugin specifications, where each file or directory represents a plugin or a group of related plugins.
-   `lua/custom/lazy.lua`: The bootstrap and setup for the `lazy.nvim` plugin manager.

Key features enabled by this configuration include:
-   Advanced autocompletion (`nvim-cmp`)
-   LSP (Language Server Protocol) integration for diagnostics, code actions, and definitions (`nvim-lspconfig`).
-   Fuzzy finding with Telescope.
-   Git integration in the editor's gutter (`gitsigns`).
-   A customized statusline (`lualine`).
-   And many other UI/UX enhancements.

## Managing the Configuration

### Installation

To use this configuration, clone it into your Neovim config directory (usually `~/.config/nvim`):

```bash
git clone <repository_url> "${XDG_CONFIG_HOME:-$HOME/.config}"/nvim
```

The first time you open `nvim`, `lazy.nvim` will automatically install all the configured plugins.

### Adding a New Plugin

1.  Find the plugin on GitHub (e.g., `author/plugin-name.nvim`).
2.  Create a new `.lua` file in the `lua/custom/plugins/` directory (e.g., `lua/custom/plugins/my-new-plugin.lua`).
3.  Add the plugin specification to the new file. For a simple plugin, this is all you need:

    ```lua
    return {
      'author/plugin-name.nvim',
    }
    ```

4.  For plugins that require setup, add a `config` function:

    ```lua
    return {
      'author/plugin-name.nvim',
      config = function()
        require('plugin-name').setup({
          -- plugin options here
        })
      end,
    }
    ```
5. Restart Neovim. The plugin will be installed automatically. You can check the status with the `:Lazy` command.

### Updating Plugins

Run the following command within Neovim to update all plugins to their latest versions:

```
:Lazy update
```

## Development Conventions

-   **Code Style**: The Lua code in this project is formatted using `stylua`. A configuration file (`.stylua.toml`) is present in the root.
-   **Plugin Management**: All plugins are managed through `lazy.nvim`. It's recommended to keep plugin specifications in separate files within `lua/custom/plugins/` for better organization.
-   **Keymaps**: Global keymaps are defined in `lua/custom/core/keymaps.lua`. The `<leader>` key is set to the spacebar. Plugin-specific keymaps are often defined within the plugin's configuration file.
-   **LSP Configuration**: Language server configurations are defined in `lua/custom/plugins/lsp/lspconfig.lua`. To add support for a new language, you'll typically need to:
    1.  Install the language server using `:MasonInstall <server-name>`.
    2.  Add its setup configuration to the `lspconfig.lua` file.
