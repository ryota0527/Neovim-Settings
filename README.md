# Neovim Settings

Basic nvim settings.  
Easily introduced by putting this directory under ~/.config/  
Use minimum branch for basic setups. Master branch may include several features which are subjective. 

## Requirements
nvim >= 0.12.4 is required. 
  
Installation of 
- lazy.nvim
- LaTeX environment
- Zathura

is required for full functionality of this setting files and plugins.

## Structure of files
Neovim-Settings/<br>   
├── init.lua<br>
└── lua/<br>
  ├── colorsettings.lua<br>
  ├── keymap.lua<br>
  └── plugins<br>
        ├── barbar.lua<br>
        ├── lazygit.lua<br>
        ├── lspconfig.lua<br>
        ├── lualine.lua<br>
        ├── mason.lua<br>
        ├── oil.lua<br>
        ├── plugins.lua<br>
        └── vimtex.lua<br>


## Plugins used in these files
- tokyonight (colorscheme)
- barbar (tab visualization)
- lazygit (git integration)
- lspconfig (lsp introduction)
- lualine (status bar decoration)
- mason (lsp installation)
- oil (flexible file exploration)
- vimtex (latex supports)
- mini.icons (icons)

## Keybindings
- leader key: space

- j -> k : Esc (insert, visual, normal)
- Alt + h / j / k / l : move 10 rows or columns (visual, normal)
- g -> h : ^ (normal, visual)
- g -> l : $ (normal, visual)
- Tab : add indent (normal, visual, insert)
- Shift + Tab : remove indent (normal, visual, insert)
- <leader> + Tab : move to the next tab (normal)
- <leader> + Shift + Tab : move to the former tab (normal)
- <leader> + lg : launch lazygit (normal)
