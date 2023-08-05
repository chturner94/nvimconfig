local api = vim.api

local TrimWhiteSpaceGrp = api.nvim_create_augroup("TrimWhiteSpaceGrp", { clear = true })
api.nvim_create_autocmd("BufWritePre", {
    command = [[:%s/\s\+$//e]],
    group = "TrimWhiteSpaceGrp",
})

-- don't auto comment new line
api.nvim_create_autocmd("BufEnter", { command = [[set formatoptions-=cro]] })

-- Windows to close with "q"
api.nvim_create_autocmd("FileType", {
    pattern = {
        "dap-float",
        "fugitive",
        "help",
        "man",
    },
    callback = function(event)
        vim.bo[event.buf].buflisted = false
        vim.keymap.set("n", "q", "<cmd>close<cr>", { buffer = event.buf, silent = true })
    end,
})
