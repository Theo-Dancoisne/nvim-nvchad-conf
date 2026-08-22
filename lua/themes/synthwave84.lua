-- inspired by https://github.com/robb0wen/synthwave-vscode
-- NvChad everforest as a starter

---@type Base46Table
local M = {}

M.base_30 = {
  white = "#d1d0d2",            -- current buffer file name (bottom-left), root folder name (bottom-right)
  darker_black = "#241b2f",     -- nvimtree bg, popup bg
  black = "#40384a",            -- nvimtree current buffer bg
  black2 = "#252931",
  one_bg = "#282c34",
  one_bg2 = "#353b45",
  one_bg3 = "#373b43",
  grey = "#42464e",
  grey_fg = "#565c64",          -- comments, nvimtree close/open arrows on folders
  grey_fg2 = "#6f737b",
  light_grey = "#6f737b",
  red = "#e06c75",
  baby_pink = "#DE8C92",
  pink = "#ff75a0",
  line = "#31353d",
  green = "#98c379",
  vibrant_green = "#7eca9c",
  nord_blue = "#f97e72",        -- NORMAL mode badge (bottom-left), current LSP name fg (bottom-right)
  blue = "#61afef",
  yellow = "#e7c787",
  sun = "#EBCB8B",
  purple = "#de98fd",
  dark_purple = "#c882e7",
  teal = "#519ABA",
  orange = "#fca2aa",
  cyan = "#a3b8ef",
  statusline_bg = "#171520",    -- status line bg
  lightbg = "#2d3139",
  pmenu_bg = "#61afef",
  folder_bg = "#7393b3",
}

M.base_16 = {
  base00 = "#262335",     -- editor bg, nvim command input bg
  base01 = "#353b45",
  base02 = "#3d3a4a",
  base03 = "#545862",
  base04 = "#565c64",
  base05 = "#a7a4ac",     -- non highlighted filename in nvimtree, nvim command input, terminal text,
  base06 = "#b6bdca",
  base07 = "#c8ccd4",
  base08 = "#e06c75",
  base09 = "#d19a66",
  base0A = "#e5c07b",
  base0B = "#98c379",
  base0C = "#56b6c2",
  base0D = "#61afef",
  base0E = "#c678dd",
  base0F = "#be5046",
}

-- vs code equivalent or best fit --
-- base 30 --

-- white              -- activityBar.foreground
-- darker_black       -- sideBar.background
-- black              -- list.inactiveSelectionBackground
-- black2             -- 
-- one_bg             -- 
-- one_bg2            -- 
-- one_bg3            -- 
-- grey               -- 
-- grey_fg            -- icon.foreground ?
-- grey_fg2           -- 
-- light_grey         -- 
-- red                -- 
-- baby_pink          -- 
-- pink               -- 
-- line               --  
-- green              -- 
-- vibrant_green      -- 
-- nord_blue          -- activityBarBadge.background
-- blue               -- 
-- yellow             -- 
-- sun                -- 
-- purple             -- 
-- dark_purple        -- 
-- teal               -- 
-- orange             -- 
-- cyan               -- 
-- statusline_bg      -- activityBar.background
-- lightbg            -- 
-- pmenu_bg           -- 
-- folder_bg          -- 


-- base 16 --

-- base00       editor.background
-- base01       
-- base02       editor.selectionBackground
-- base03       
-- base04       
-- base05       sideBarSectionHeader.foreground ? almost
-- base06       
-- base07       
-- base08       
-- base09       
-- base0A       
-- base0B       
-- base0C       
-- base0D       
-- base0E       
-- base0F       


M.type = "dark"

return M
