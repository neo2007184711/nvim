return {
  {
    "folke/tokyonight.nvim",
    opts = {
      transparent = true,
      styles = {
        sidebars = "transparent",
        floats = "transparent",
      },
      on_colors = function(colors)
        colors.bg_statusline = colors.none
      end,
      on_highlights = function(hl, c)
        -- 1. Statusline and Cursorline
        hl.StatusLine = { bg = c.none }
        hl.StatusLineNC = { bg = c.none }
        hl.CursorLine = { bg = c.none }
        hl.CursorLineNC = { bg = c.none }
        -- 2. File explorer selection and Tree
        hl.SnacksPickerListCursorLine = { bg = c.none, fg = c.border_highlight, bold = true }
        hl.SnacksPickerTree = { fg = c.border_highlight, bold = true }
        -- 3. Borders and Separators
        hl.FloatBorder = { fg = c.border_highlight, bg = c.none }
        hl.FloatTitle = { fg = c.border_highlight, bg = c.none, bold = true }
        hl.WinSeparator = { fg = c.border_highlight, bg = c.none }
      end,
    },
  },
}
