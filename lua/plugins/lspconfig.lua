return {
    "neovim/nvim-lspconfig",

    config = function()
        vim.lsp.config('fortls', { 
            filetypes = { 'fortran' },

            settings = {
                fortls = {
                    disable_diagnostics = false,
                },
            },
        })

        vim.lsp.config('lua_ls', {
            filetypes = { 'lua' },
            settings = {
                Lua = {
                    diagnostics = {
                        -- Lua for neovim setting
                        globals = { 'vim' },
                    },
                    workspace = {
                        library = vim.api.nvim_get_runtime_file('', true),
                        checkThirdParty = false,
                    },
                    telemetry = {
                        enable = false,
                    },
                },
            },
        })

        vim.lsp.config('texlab', {
            filetypes = { 'tex', 'plaintex', 'bib' },
            settings = {
                texlab = {
                    build = {
                        onSave = false,
                        forwardSearchAfter = false,
                    },

                    diagnostics = {
                        ignoredPatterns = {
                            'Underfull \\\\hbox',
                            'Overfull \\\\hbox',
                        },
                    },

                    chktex = {
                        onOpenAndSave = false,
                        onEdit = false,
                    },
                },
            },
        })

        vim.lsp.config('ltex', {
            filetypes = { 'tex', 'plaintex', 'bib', 'markdown' },
            settings = (function()
                local uv = vim.uv or vim.loop

                local function dict_exist(filename)
                    filename = vim.fn.expand(filename)
                    return uv.fs_stat(filename) and filename or nil
                end

                local function read_dict_lines(p)
                    local ok, lines = pcall(vim.fn.readfile, p)
                    if not ok or type(lines) ~= "table" then
                        return {}
                    end

                    local out = {}
                    for _, s in ipairs(lines) do
                        s = (s:gsub("^%s+", ""):gsub("%s+$", ""))
                        if s ~= "" then
                            table.insert(out, s)
                        end
                    end
                    return out
                end


                local en_dict = dict_exist('~/.config/ltex/dictionary.en-US.txt')
                -- local ja_dict = dict_exist('~/.config/ltex/dictionary.ja.txt')

                local ltex_settings = {
                    language = 'en-US',
                    -- language = 'en-US,ja',   -- If Japanese dictionary is needed
                }

                local dict = {}
                if en_dict then
                    dict['en-US'] = {}
                    vim.list_extend(dict['en-US'], read_dict_lines(en_dict))
                end

                -- if ja_dict then
                --     dict['ja'] = {}
                --     vim.list_extend(dict['ja'], read_dict_lines(ja_dict))
                -- end

                if next(dict) ~= nil then
                    ltex_settings.dictionary = dict
                end

                return {ltex = ltex_settings}
            end)(),
        })

        vim.lsp.config('pylsp', {})

        vim.lsp.enable({
            'fortls',
            'pylsp',
            'lua_ls',
            'texlab',
            'ltex'
        })

    end,
}
