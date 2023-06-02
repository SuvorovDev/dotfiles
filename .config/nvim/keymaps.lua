local function map(mode, lhs, rhs, opts)
    local options = { noremap = true, silent = true }
    if opts then
        options = vim.tbl_extend("force", options, opts)
    end
    vim.api.nvim_set_keymap(mode, lhs, rhs, options)
end

-- Vim for Colemak
map('', 'j', 'e', {})
map('', 'J', 'E', {})
map('', 'l', 'u', {})
map('', 'L', 'U', {})
map('', 'u', 'k', {})
map('', 'U', 'H', {})
map('', 'h', 'i', {})
map('', 'H', 'I', {})

map('', 'n', 'h', {})
map('', 'N', 'J', {})
map('', 'e', 'j', {})
map('', 'E', 'L', {})
map('', 'i', 'l', {})
map('', 'I', 'K', {})
map('', 'k', 'n', {})
map('', 'K', 'N', {})