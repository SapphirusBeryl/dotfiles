context = function()
    local curbuf = vim.api.nvim_get_current_buf()

    if not vim.treesitter.highlighter.active[curbuf] then
        return true
    end

    local curpos = vim.api.nvim_win_get_cursor(0)
    local captures = vim.treesitter.get_captures_at_pos(
        0,
        curpos[1] - 1,
        curpos[2] - 1
    )
    local in_spell_capture = false

    for _, cap in ipairs(captures) do
        if cap.capture == "spell" then
            in_spell_capture = true
        elseif cap.capture == "nospell" then
            return false
        end
    end

    return in_spell_capture
end

require("blink.cmp").setup({
    sources = {
        default = {
            "lsp",
            "spell",
        },
        providers = {
            spell = {
                name = "spell",
                module = "blink-cmp-spell",
                opts = {
                    enable_in_context = context,
                    use_cmp_spell_sorting = true,
                    keep_all_entries = true,
                    max_entries = 8
                },
            },
        },
    },
    completion = {
        trigger = {
            show_on_keyword = false,
        },
        list = {
            selection = {
                preselect = false,
                auto_insert = false
            }
        },
        documentation = {
            -- Required for a non-opaque background
            window = {
                winhighlight = "Normal:Pmenu,FloatBorder:Pmenu"
            },
            auto_show_delay_ms = 0,
            auto_show = true
        },
        ghost_text = {
            enabled = true
        }
    },
    keymap = {
        preset = "default",

        ["<Tab>"] = { "select_and_accept", "fallback" },
        ["<A-Space>"] = { "show", "fallback" },
    },
    snippets = {
        preset = snippet_engine
    },
    signature = {
        enabled = true
    },
})
