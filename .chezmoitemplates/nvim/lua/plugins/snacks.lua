return {
    "folke/snacks.nvim",
    priority = 1000,
    lazy = false,
    ---@type snacks.Config
    opts = {
        explorer = {
            enabled = true,
        },
        -- very cursed
        picker = {
            sources = {
                explorer = {
                    win = {
                        list = {
                            keys = {
                                ["a"] = "explorer_add",
                                ["d"] = "explorer_del",
                                ["r"] = "explorer_rename",
                                ["y"] = "explorer_yank",
                                ["p"] = "explorer_paste",
                                ["m"] = "explorer_move",

                                ["zC"] = "explorer_close_all",
                                ["zc"] = "explorer_close",

                                ["."] = "explorer_focus_cwd",
                            },
                        },
                    },
                    layout = {
                        layout = {
                            width = 25,
                            position = "right",
                        },
                    },
                    hidden = true,
                    ignored = true,
                },
            },
        },
    },

    keys = {
        {
            "<leader>e",
            function()
                local explorer = Snacks.picker.get({ source = "explorer" })[1]

                if explorer ~= nil then
                    if explorer:is_focused() then
                        vim.cmd("wincmd p")
                    elseif explorer:is_focused() == false then
                        explorer:focus("list")
                    end
                end
            end,
            desc = "toggle explorer focus"
        },
        {
            "<leader>E",
            function()
                Snacks.explorer()
            end,
            desc = "Toggle Explorer Window",
        }
    },
}
