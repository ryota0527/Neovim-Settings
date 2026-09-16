# Neovim Settings

My personal Neovim setups.

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
- `<up>` : move the boundary of the window upward (normal)
- `<down>` : move the boundary of the window downward (normal)
- `<leader><right>` or `<leader>l` : move to the window on the right (normal)
- `<leader><left>` or `<leader>h` : move to the window on the left (normal)
- `<leader><up>` or `<leader>k` : move to the window above (normal)
- `<leader><down>` or `<leader>j` : move to the window below (normal)
- `<leader>i` : show the info of lsp's diagnostic on the current line (normal)
- `<leader>o` : move to oil's window (normal)
- `<C-space>` : return to normal mode (terminal)

#### oil
- `<CR>` : open the selected file (vertical split)
- `<C-s>` : open the selected file (horizontal split)
- `<leader>p` : preview
- `q` : close oil

#### barbar
- `<leader>` + Tab : move to the next buffer (normal)
- `<leader>` + Shift + Tab : move to the previous buffer (normal)

#### Lazygit
- `<leader>g` : launch lazygit (normal)

#### nvim-dap
- `<leader>dd` : launch the debugger / continue to the next breakpoint
- `<leader>b` : set a breakpoint
- `<leader>B` : set a conditional breakpoint
- `<leader>ds` : step over
- `<leader>di` : step into
- `<leader>do` : step out
- `<leader>du` : toggle nvim-dap-ui
- `<leader>de` : evaluate the variable

