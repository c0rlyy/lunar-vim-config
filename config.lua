-- vim settings
vim.opt.relativenumber = true
vim.opt.shiftwidth = 4 -- the number of spaces inserted for each indentation
vim.opt.tabstop = 4
vim.o.cursorline = false
vim.opt.hlsearch = true    -- highlight all matches on previous search pattern
vim.opt.ignorecase = true  -- ignore case in search patterns
vim.opt.smartcase = true   -- smart case
vim.opt.smartindent = true -- make indenting smarter again
vim.opt.termguicolors = true
vim.opt.timeoutlen = 100
vim.opt.number = true   -- set numbered lines
vim.opt.scrolloff = 8   -- is one of my fav
vim.opt.sidescrolloff = 8
vim.opt.numberwidth = 8 -- set number column width to 2 {default 4}
vim.opt.clipboard = "unnamedplus"
vim.opt.wrap = true
vim.api.nvim_set_keymap("v", "y", '"+y', { noremap = true })

-- keybingds
lvim.keys.normal_mode["<C-d>"] = "<C-d>zz"

-- Scroll up by half a page and center the screen
lvim.keys.normal_mode["<C-u>"] = "<C-u>zz"

-- Move to the next paragraph/block and center the screen
lvim.keys.normal_mode["{"] = "{zz"

-- Move to the previous paragraph/block and center the screen
lvim.keys.normal_mode["}"] = "}zz"

--lvim settings
lvim.format_on_save.enabled = true
lvim.transparent_window = true
lvim.plugins = {
    {
        "rose-pine/neovim",
        name = "rose-pine",
        opts = {
            variant = "moon",
            styles = {
                transparency = true,
                italic = false, -- Disable italics
                bold = false,
            },
            highlight_groups = {
                Comment = { italic = true },
                ["@lsp.type.property.rust"] = { fg = "#97bff7" },   -- LSP properties
                ["@variable.member.rust"] = { fg = "#97bff7" },
                ["@punctuation.bracket.rust"] = { fg = "#B5B8B6" }, -- Set the color for brackets
                -- ["@variable.member.rust"] = { fg = "#97bff7" },
                -- ["@variable.member.rust"] = { fg = "#7393bf" },
            }
        },
    },
}


lvim.colorscheme = "rose-pine-moon"
