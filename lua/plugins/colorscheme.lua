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
        hl.StatusLine = { bg = c.none }
        hl.StatusLineNC = { bg = c.none }
        hl.CursorLine = { bg = c.none }
        hl.CursorLineNC = { bg = c.none }
        hl.SnacksPickerListCursorLine = { bg = c.none, fg = c.blue, bold = true }
      end,
    },
  },
}
