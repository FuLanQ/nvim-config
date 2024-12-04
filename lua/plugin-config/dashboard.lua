local status, db = pcall(require, "dashboard")
if not status then
  vim.notify("没有找到 dashboard")
  return
end

db.setup({
    theme = 'doom',  -- 设置主题为 doom
    config = {
        header = {
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[               ▄▄██████████▄▄             ]],
            [[               ▀▀▀   ██   ▀▀▀             ]],
            [[       ▄██▄   ▄▄████████████▄▄   ▄██▄     ]],
            [[     ▄███▀  ▄████▀▀▀    ▀▀▀████▄  ▀███▄   ]],
            [[    ████▄ ▄███▀              ▀███▄ ▄████  ]],
            [[   ███▀█████▀▄████▄      ▄████▄▀█████▀███ ]],
            [[   ██▀  ███▀ ██████      ██████ ▀███  ▀██ ]],
            [[    ▀  ▄██▀  ▀████▀  ▄▄  ▀████▀  ▀██▄  ▀  ]],
            [[       ███           ▀▀           ███     ]],
            [[       ██████████████████████████████     ]],
            [[   ▄█  ▀██  ███   ██    ██   ███  ██▀  █▄ ]],
            [[   ███  ███ ███   ██    ██   ███▄███  ███ ]],
            [[   ▀██▄████████   ██    ██   ████████▄██▀ ]],
            [[    ▀███▀ ▀████   ██    ██   ████▀ ▀███▀  ]],
            [[     ▀███▄  ▀███████    ███████▀  ▄███▀   ]],
            [[       ▀███    ▀▀██████████▀▀▀   ███▀     ]],
            [[         ▀    ▄▄▄    ██    ▄▄▄    ▀       ]],
            [[               ▀████████████▀             ]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
            [[]],
        },

        week_header = {
            enable = false,  -- 启用周头
       },

        center = {
            {
                icon = "  ",
                desc = "Projects                            ",
                action = "Telescope projects",
            },
            {
                icon = "  ",
                desc = "Recently files                      ",
                action = "Telescope oldfiles",
            },
            {
                icon = "✎  ",
                desc = "Edit keybindings                    ",
                action = "edit ~/.config/nvim/lua/keyBindings.lua",
            },
            {
                icon = "  ",
                desc = "Edit Projects                       ",
                action = "edit ~/.local/share/nvim/project_nvim/project_history",
            },
        },
    }
})

