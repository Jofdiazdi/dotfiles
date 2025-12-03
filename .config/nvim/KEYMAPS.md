# Neovim Keymaps

This file documents the refactored keymaps for this Neovim setup. The goal is to create a logical and consistent structure that is easy to remember. The `<leader>` key is set to `Space`.

## Global & Editor Control

These keymaps are not behind a `<leader>` prefix and control core editor behavior.

| Mode | Keybinding      | Description                               |
| :--- | :-------------- | :---------------------------------------- |
| `n`  | `<Esc>`         | Clear search highlights                   |
| `i`  | `jk`            | Exit insert mode                          |
| `t`  | `<Esc><Esc>`    | Exit terminal mode                        |
| `n`  | `<C-h/j/k/l>`   | Move window focus                         |
| `n`  | `]c` / `[c`     | Jump to next/previous git change          |
| `n`  | `]t` / `[t`     | Jump to next/previous todo comment        |
| `n`  | `s` / `ss` / `S`| Substitute with motion / line / to EOL    |
| `x`  | `s`             | Substitute in visual mode                 |

## File & Explorer (`<leader>f`)

Actions related to files and the file explorer.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>fe`    | **F**ile **E**xplorer     | Toggle Snacks file explorer         |
| `n`  | `<leader>fr`    | **F**ile **R**ename       | Rename the current file             |
| `n`  | `<leader>fE`    | **F**ile **E**xplorer (Legacy) | Open legacy netrw explorer          |

## Search (`<leader>s`)

All fuzzy finding and searching actions.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>sf`    | **S**earch **F**iles      | Find files (Snacks)                 |
| `n`  | `<leader>sg`    | **S**earch **G**rep       | Grep for a string (Snacks)          |
| `n,x`| `<leader>sw`    | **S**earch **W**ord       | Grep for word under cursor/selection|
| `n`  | `<leader>sb`    | **S**earch **B**uffers    | Find open buffers (Snacks)          |
| `n`  | `<leader>sh`    | **S**earch **H**elp       | Search help tags (Telescope)        |
| `n`  | `<leader>sk`    | **S**earch **K**eymaps    | Search keymaps (Telescope)          |
| `n`  | `<leader>sd`    | **S**earch **D**iagnostics| Search diagnostics (Telescope)      |
| `n`  | `<leader>st`    | **S**earch **T**odos      | Search TODO comments (Telescope)    |
| `n`  | `<leader>/`     | Search (Short)            | Find files (Telescope)              |
| `n`  | `<leader>sG`    | **S**earch **G**rep (Alt) | Live Grep (Telescope)               |

## Git (`<leader>g`)

All Git-related commands.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>gg`    | **G**it **G**it           | Open LazyGit                        |
| `n`  | `<leader>gs`    | **G**it **S**tatus        | View git status (Snacks)            |
| `n`  | `<leader>gb`    | **G**it **B**ranches      | View git branches (Snacks)          |
| `n`  | `<leader>gl`    | **G**it **L**og           | View git log (Snacks)               |
| `n,v`| `<leader>ghs`   | **G**it **H**unk **S**tage| Stage hunk                          |
| `n,v`| `<leader>ghr`   | **G**it **H**unk **R**eset| Reset hunk                          |
| `n`  | `<leader>ghp`   | **G**it **H**unk **P**review| Preview hunk                        |
| `n`  | `<leader>ghb`   | **G**it **H**unk **B**lame| Blame line                          |

## Buffer (`<leader>b`)

Actions that operate on buffers.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>bd`    | **B**uffer **D**elete     | Delete the current buffer             |
| `n`  | `<leader>bb`    | **B**uffer **B**rowse     | Find existing buffers (Telescope)   |

## Window (`<leader>w`)

Window (split) management.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>wv`    | **W**indow **V**ertical   | Split window vertically             |
| `n`  | `<leader>ws`    | **W**indow **S**plit      | Split window horizontally           |
| `n`  | `<leader>wc`    | **W**indow **C**lose      | Close current split                 |
| `n`  | `<leader>we`    | **W**indow **E**qualize   | Make splits equal size              |
| `n`  | `<leader>wm`    | **W**indow **M**aximize   | Maximize/minimize a split           |

## Tabs (`<leader>t`)

Tab management.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>tn`    | **T**ab **N**ew           | Open new tab                        |
| `n`  | `<leader>tc`    | **T**ab **C**lose         | Close current tab                   |
| `n`  | `<leader>tl`    | **T**ab Next (L)          | Go to next tab                      |
| `n`  | `<leader>th`    | **T**ab Previous (H)      | Go to previous tab                  |
| `n`  | `<leader>tf`    | **T**ab **F**ile          | Open current buffer in new tab      |

## Code (`<leader>c`)

Actions related to writing and modifying code.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>ca`    | **C**ode **A**ction       | See available code actions          |
| `v`  | `<leader>ca`    | **C**ode **A**ction       | Code actions for selection          |
| `n`  | `<leader>cr`    | **C**ode **R**ename       | Smart rename                        |
| `n`  | `<leader>cl`    | **C**ode **L**int         | Trigger linting for current file    |
| `n,v`| `<leader>cf`    | **C**ode **F**ormat       | Format file or range                |
| `n`  | `<leader>cc`    | **C**omment **C**omment   | Toggle line comment                 |
| `v`  | `<leader>cb`    | **C**omment **B**lock     | Toggle block comment                |

## Diagnostics & Trouble (`<leader>x`)

Used for viewing diagnostics and errors via the Trouble plugin.

| Mode | Keybinding      | Mnemonic                  | Description                         |
| :--- | :-------------- | :------------------------ | :---------------------------------- |
| `n`  | `<leader>xx`    | e**X**amine (Trouble)     | Toggle Trouble diagnostics          |
| `n`  | `<leader>xw`    | e**X**amine **W**orkspace | Toggle workspace diagnostics        |
| `n`  | `<leader>xq`    | e**X**amine **Q**uickfix  | Toggle quickfix list in Trouble     |

## Plugin Specific

| Mode | Keybinding      | Plugin      | Description                         |
| :--- | :-------------- | :---------- | :---------------------------------- |
| `n`  | `<F1>`-`<F5>`   | nvim-dap    | Debugger controls (step, continue)  |
| `n`  | `<leader>b`     | nvim-dap    | Toggle Breakpoint                   |
| `n`  | `<leader>ld`    | lazydocker  | Open Lazydocker                     |
