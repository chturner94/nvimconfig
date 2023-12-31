require 'nvim-treesitter.configs'.setup {
    ensure_installed = { "javascript", "c", "cpp", "lua", "rust", "typescript", "vimdoc",
        "json", "html", "kotlin", "python", "bash", "css", "scss", "norg", "go" },
    sync_install = false,
    auto_install = true,
    hightlight = {
        enable = true,
    },
}
