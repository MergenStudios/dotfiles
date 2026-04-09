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
                    layout = {
                        layout = {
                            width = 25,
                            position = "right",
                        },
                    },
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
