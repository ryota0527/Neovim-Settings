return {
    'romgrk/barbar.nvim',
    lazy = false,

    dependencies = {
      'nvim-mini/mini.icons', -- OPTIONAL: for file icons
    },
    init = function() vim.g.barbar_auto_setup = false end,

    opts = {
        animation = true,
        tabpages = true,
        highlight_visible = true,

        icons = {
            -- Configure the base icons on the bufferline.
            -- Valid options to display the buffer index and -number are `true`, 'superscript' and 'subscript'
            buffer_index = false,
            buffer_number = false,
            button = '',
            
            gitsigns = {
              added = {enabled = true, icon = '+'},
              changed = {enabled = true, icon = '~'},
              deleted = {enabled = true, icon = '-'},
            },
            filetype = {
              -- Sets the icon's highlight group.
              -- If false, will use nvim-web-devicons colors
              custom_colors = false,

              -- Requires `nvim-web-devicons` if `true`
              enabled = true,
            },
            separator = {left = '▎', right = ''},

            -- If true, add an additional separator at the end of the buffer list
            separator_at_end = true,

            -- Configure the icons on the bufferline when modified or pinned.
            -- Supports all the base icon options.
            modified = {button = '●'},
        },
    },

    config = function(_, opts)
        require('barbar').setup(opts)
    end,

    keys = {
        {
            '<leader><Tab>',
            '<cmd>BufferNext<CR>',
            desc = 'Next buffer',
        },
        {
            '<leader><S-Tab>',
            '<cmd>BufferPrevious<CR>',
            desc = 'Previous buffer',
        },
    },
}
