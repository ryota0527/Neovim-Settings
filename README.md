# Neovim Settings

My Neovim setups.

These setups contain sufficient features for one to edit with nvim such as
- Smooth and comfortable file exploration with oil.nvim
- Decoration of statusline and tab-bar
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

are required for full functionality of this setting files and plugins.

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
- `<up>` : move the boundary of the window upward (normal)
- `<down>` : move the boundary of the window downward (normal)

- `<leader><right>` : move to the window on the right (normal)
- `<leader><left>` : move to the window on the left (normal)
- `<leader><up>` : move to the window above (normal)
- `<leader><down>` : move to the window below (normal)

- `<leader>i` : show the info of lsp's diagnostic on the current line (normal)

#### barbar
- `<leader><Tab>` : move to the next buffer (normal)
- `<leader><S-Tab>` : move to the former buffer (normal)

#### oil
- `<CR>` : open the selected file (vertical split)
- `<C-s>` : open the selected file (horizontal split)
- `-` : move to the parent directory
- `<leader>p` : preview
- `q` : close oil

#### Lazygit
- `<leader>` + g : launch lazygit (normal)

#### nvim-dap
- `<leader>dd` : launch the debugger / go to the next breakpoint
- `<leader>b` : put a breakpoint
- `<leader>B` : put a conditional breakpoint
- `<leader>ds` : step over
- `<leader>di` : step into
- `<leader>do` : step out
- `<leader>du` : toggle nvim-dap-ui
- `<leader>de` : evaluate the variable

