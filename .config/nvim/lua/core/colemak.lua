local mappings = {
    -- Up/down/left/right
    { modes = { "n", "o", "x" }, lhs = "n", rhs = "h", desc = "Left (h)" },
    { modes = { "n", "o", "x" }, lhs = "u", rhs = "k", desc = "Up (k)" },
    { modes = { "n", "o", "x" }, lhs = "e", rhs = "j", desc = "Down (j)" },
    { modes = { "n", "o", "x" }, lhs = "i", rhs = "l", desc = "Right (l)" },
    
    { modes = { "n", "o", "x" }, lhs = "N", rhs = "J", desc = "Left (h)" },
    { modes = { "n", "o", "x" }, lhs = "U", rhs = "H", desc = "Up (k)" },
    { modes = { "n", "o", "x" }, lhs = "E", rhs = "L", desc = "Down (j)" },
    { modes = { "n", "o", "x" }, lhs = "I", rhs = "K", desc = "Right (l)" },

    { modes = { "n", "o", "x" }, lhs = "j", rhs = "e", desc = "Left (h)" },
    { modes = { "n", "o", "x" }, lhs = "J", rhs = "E", desc = "Up (k)" },
    { modes = { "n", "o", "x" }, lhs = "l", rhs = "u", desc = "Down (j)" },
    { modes = { "n", "o", "x" }, lhs = "L", rhs = "U", desc = "Right (l)" },

    { modes = { "n", "o", "x" }, lhs = "h", rhs = "i", desc = "Left (h)" },
    { modes = { "n", "o", "x" }, lhs = "H", rhs = "I", desc = "Up (k)" },
    { modes = { "n", "o", "x" }, lhs = "k", rhs = "n", desc = "Down (j)" },
    { modes = { "n", "o", "x" }, lhs = "K", rhs = "N", desc = "Right (l)" },
}

for _, mapping in pairs(mappings) do
    vim.keymap.set(
        mapping.modes,
        mapping.lhs,
        mapping.rhs,
        { desc = mapping.desc }
    )
end

