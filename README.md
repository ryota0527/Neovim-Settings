# Neovim Settings

Basic nvim settings.  
Easily introduced by putting this directory under ~/.config/  
Use minimum branch for basic setups. Master branch may include several features which are subjective. 

## Requirements
nvim 0.12 is recommended.  
  
Installation of 
- lazy.nvim
- LaTeX environment
- Zathura
- pyright  
is required for full functionality of this setting files and plugins.

## Structure of files
Neovim-Settings/   
├── init.lua  
└── lua/  
  ├── colorsettings.lua  
  ├── keymap.lua  
  └── plugins.lua

## Plugins used in these files
- tokyonight (colorscheme)
- vimtex
- lspconfig

## Keybindings
- j -> k : Esc (insert, visual, normal)
- Alt + h / j / k / l : move 10 rows or columns (visual, normal)
- g -> h : ^ (normal)
- g -> l : $ (normal)
- Tab : add indent (normal, visual)
- Shift + Tab : remove indent (normal, visual)
