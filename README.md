# Neovim Settings

My Neovim setups.

These setups provide sufficient features for nvim editing environment, including
- Smooth and comfortable file exploration with oil.nvim
- Decoration of statusline and tab bar
- Debug environment for Python and Fortran with UI
- UI for git
- lsp for Python, LaTeX, Neovim-Lua, Fortran, and English correction

## Requirements and Dependencies
nvim >= 0.12.4 is required. 
  
Installations of 
- lazy.nvim
- LaTeX environment
- Zathura (pdf viewer)
- debugpy (python debugger)

(if one edits fortran codes)
- compiler for fortran
- gdb (fortran debugger)

are required for full functionality of the configurations and plugins.

## Keybindings

- `<leader>` : space

- `jk` : Esc (insert, visual, normal)
- `<A- h / j / k / l>` : move 10 rows or columns (visual, normal)
- `gh` : ^ (normal, visual)
- `gl` : $ (normal, visual)

- `<Tab>` : add indent (normal, visual, insert)
- `<S-Tab>` : remove indent (normal, visual, insert)

- `<right>` : move the boundary of the window right (normal)
- `<left>` : move the boundary of the window left (normal)

- `<leader><right>` : move to the window on the right (normal)
- `<leader><left>` : move to the window on the left (normal)
- `<leader><up>` : move to the window above (normal)
- `<leader><down>` : move to the window below (normal)

- `<leader>i` : show the info of lsp's diagnostic on the current line (normal)

#### barbar
- `<leader>` + Tab : move to the next buffer (normal)
- `<leader>` + Shift + Tab : move to the previous buffer (normal)

#### Lazygit
- `<leader>` + lg : launch lazygit (normal)

#### nvim-dap
- `<leader>dd` : launch the debugger / continue to the next breakpoint
- `<leader>b` : set a breakpoint
- `<leader>B` : set a conditional breakpoint
- `<leader>ds` : step over
- `<leader>di` : step into
- `<leader>do` : step out
- `<leader>du` : toggle nvim-dap-ui
- `<leader>de` : evaluate the variable

