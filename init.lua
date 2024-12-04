-- 基础设置
require('basic')

-- 快捷键映射
require("keyBindings")

-- Packer 插件管理
require("plugins")

-- 主题配置
require("colorscheme")

-- 插件配置
require("plugin-config.nvim-tree")

-- 顶部标签栏
require("plugin-config.bufferline")

-- 底部信息栏
require("plugin-config.lualine")

-- 启动页面
require("plugin-config.dashboard")
require("plugin-config.project")

-- cmp
require("plugin-config.nvim-cmp")

-- LSP
require("lsp.setup")
