-- Sum up:
-- Override ["<C-v>"] = actions.select_vertical because it is caugh by most terminals (paste)

local M = {}

M.defaults = {
  mappings = {
    i = {
      ["<C-s>"] = "select_vertical",
      ["<C-v>"] = false,
    },
    n = {
      ["<C-s>"] = "select_vertical",
      ["<C-v>"] = false,
    },
  },
}

return M

-- https://github.com/nvim-telescope/telescope.nvim/blob/b4da76be/lua/telescope/mappings.lua#L134-L233
