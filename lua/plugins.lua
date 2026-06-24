vim.pack.add({
    "https://github.com/folke/which-key.nvim",
    "https://github.com/folke/lazydev.nvim",
    "https://github.com/hrsh7th/nvim-cmp",
    "https://github.com/hrsh7th/cmp-nvim-lsp",
    "https://github.com/hrsh7th/cmp-path",
    "https://github.com/echasnovski/mini.pairs",
    "https://github.com/catppuccin/nvim",
    "https://github.com/mason-org/mason.nvim",
    "https://github.com/mason-org/mason-lspconfig.nvim",
    "https://github.com/neovim/nvim-lspconfig",
    { src = "https://github.com/nvim-treesitter/nvim-treesitter", version = "main" },
    "https://github.com/mks-h/treesitter-autoinstall.nvim",
    "https://github.com/meanderingprogrammer/render-markdown.nvim"
})

require("lazydev").setup()
require("mason").setup()
require("mini.pairs").setup()
require("nvim-treesitter").setup()
require("treesitter-autoinstall").setup()
require("which-key").setup()
require("catppuccin").setup()
require("render-markdown").setup()

require("mason-lspconfig").setup({
    ensure_installed = {"lua_ls", "ts_ls"},
})

vim.lsp.config("*", {
    capabilities = require("cmp_nvim_lsp").default_capabilities(),
})

local cmp = require("cmp")
cmp.setup({
    mapping = cmp.mapping.preset.insert({
        ["<CR>"] = cmp.mapping.confirm({ select = true }),
        ["<Tab>"] = cmp.mapping.select_next_item(),
        ["<S-Tab>"] = cmp.mapping.select_prev_item(),
    }),
    sources = {
        { name = "nvim_lsp" },
        { name = "buffer" },
        { name = "path" },
    },
})
