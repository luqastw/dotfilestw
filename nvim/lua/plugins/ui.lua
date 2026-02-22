return {
  {
    "nvim-lualine/lualine.nvim",
    event = "VeryLazy",
    opts = function()
      return {
        options = {
          theme = "carbonfox", -- Usa a paleta de cinzas que configuramos
          globalstatus = true,
          disabled_filetypes = { statusline = { "dashboard", "alpha", "starter" } },
          component_separators = { left = "⏐", right = "⏐" },
          section_separators = { left = "", right = "" },
        },
        sections = {
          lualine_a = { { "mode", color = { gui = "bold" } } },
          lualine_b = { "branch" },
          lualine_c = {
            { "filetype", icon_only = true, separator = "", padding = { left = 1, right = 0 } },
            { "filename", path = 1 },
          },
          lualine_x = {
            { "diagnostics" },
            { "diff" },
          },
          lualine_y = { "progress" },
          lualine_z = { "location" },
        },
      }
    end,
  },
}
