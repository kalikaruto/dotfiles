return {
    "nvim-treesitter/nvim-treesitter",
    build = ":TSUpdate",
    event = { "BufReadPost", "BufNewFile" },
    lazy = false,
    config = function()
        require("nvim-treesitter.configs").setup({
            ensure_installed = {
                "lua",
                "python",
                "typescript",
                "javascript",
                "html",
                "css",
                "json",
                "yaml",
                "go",
                "markdown",
                "dockerfile",
                "markdown_inline",
                "c",
                "cpp",
                "vue",
                "rust",
                "svelte",
            },
            auto_install = true,
            sync_install = false,
            highlight = {
                enable = true,
                additional_vim_regex_highlighting = false,
            },
            indent = { enable = true, },
            incremental_selection = {
                enable = true,
                keymaps = {
                    init_selection = "<CR>",
                    -- node_incremental = "<CR",
                    scope_incremental = "<TAB>",
                    node_incremental = "<S-TAB>",
                },
            },
        })
    end,
}
